#import "@preview/zebraw:0.5.4": *
#import "@preview/tablem:0.2.0": tablem, three-line-table

#show: zebraw

The present chapter reviews the results from deploying and stress-testing the diploma-verification platform, which marries Solanas decentralized ledger with IPFS storage. All findings are tallied along four axes-functionality, throughput, security hardening, and user sentiment gathered during the proof of concept. What follows is a candid appraisal of how the architectures performance metrics stack up against standard paper-based workflows and the disruptive potential those numbers signal for the credentialing space.

== System Functionality

A decentralized verification framework for academic credentials has been prototyped on a dedicated testnet and recorded a positive outcome. Credential storage and authentication rely on the Solana blockchain alongside the InterPlanetary File System (IPFS), ensuring both transparency and resistance to unauthorized access. Once a school uploads a diploma, IPFS generates a unique cryptographic hash of that document. This hash then resides on Solana, locking in the credential's original content and preventing later alterations. Anchoring large files on-chain requires tailored account architectures; the protocol therefore introduces custom data containers that accommodate the expanded storage footprints while minimizing impact on network throughput.

```
pub struct DiplomaRegistry {
    pub authority: Pubkey,
    pub count: u64,
}

pub struct Diploma {
    pub authority: Pubkey,
    pub diploma_id: String,
    pub ipfs_hash: String,
    pub verified: bool,
    pub created_at: i64,
}
```

The smart contract's #zebraw("add_diploma") command makes a new #zebraw("Diploma") account on the Solana blockchain. This command takes the #zebraw("diploma_id") and, most importantly, the #zebraw("ipfs_hash") (the CID of the document on IPFS) as inputs. This #zebraw("ipfs_hash") is then saved as part of the #zebraw("Diploma") record, which cannot be changed.

```
pub fn add_diploma(ctx: Context<AddDiploma>, diploma_id: String, ipfs_hash: String) -> Result<()> {
    require!(diploma_id.len() > 0, DiplomaError::EmptyDiplomaId);
    require!(diploma_id.len() <= 100, DiplomaError::DiplomaIdTooLong);
    require!(ipfs_hash.len() > 0, DiplomaError::EmptyIpfsHash);
    require!(ipfs_hash.len() <= 60, DiplomaError::IpfsHashTooLong);

    let diploma_registry = &mut ctx.accounts.diploma_registry;
    let diploma = &mut ctx.accounts.diploma;

    diploma.authority = ctx.accounts.authority.key();
    diploma.diploma_id = diploma_id;
    diploma.ipfs_hash = ipfs_hash;
    diploma.verified = true;
    diploma.created_at = Clock::get()?.unix_timestamp;

    diploma_registry.count += 1;

    msg!("Diploma added: {}", diploma.diploma_id);
    msg!("IPFS Hash: {}", diploma.ipfs_hash);
    Ok(())
}
```

To start the verification process, employers or other parties must first get the #zebraw("ipfs_hash") from the right #zebraw("Diploma") account on the Solana blockchain. Then, using this hash, their program (the dApp frontend) gets the real diploma file from the IPFS network through an IPFS gateway. After getting the file, the dApp calculates its own cryptographic hash. The dApp then compares the #zebraw("ipfs_hash") that was taken from the blockchain to this new hash. If the hashes match, it is immediately clear that the diploma is real and has not been tampered with. This off-chain retrieval and comparison mechanism is what makes decentralized storage with blockchain smart contracts work well.

== Performance and Scalability

During the test phase, the system processed over 1,000 transactions per minute on the Solana testnet, which is a measure of its scalability along with its capacity to process massive verification requests. The system's ability to handle numerous concurrent transactions with low latency was greatly aided by Solana's Proof of History (PoH) consensus algorithm. All the transactions were verified within 400 milliseconds, which is clearly within the threshold for applications that need low-latency verification.

Implementation of IPFS by the system for decentralized storage proved to have positive results in terms of retrieval times. The average file retrieval time from IPFS was less than 2 seconds, showing the reliability and efficiency of decentralized storage for scholarly credentials. This makes the system suitable for real-world application, where speed and accessibility are critical.

== Security

Security was of utmost importance throughout the system development and testing. The Solana blockchain and IPFS utilize advanced cryptographic methods to provide for data security and integrity.

Using Solana's Proof of History (PoH) and Proof of Stake (PoS) approaches, the blockchain yields an untamperable and transparent record book. Once a diploma is entered, it cannot be changed or removed, thus ensuring academic records integrity. There were no instances of unauthorized changes or tampering with blockchain data during testing.

The decentralized nature of IPFS ensures that files do not exist on a single server, minimizing the chances of central points of failure or file tampering @Trinh_Viet_Doan_2022. Every diploma file is hashed prior to uploading to IPFS, ensuring any alteration of the file will produce a different hash, hence file manipulation would be traceable. The solution employed encryption prior to uploading files to IPFS, hence providing an additional layer of security for precious academic materials.

== Comparison with Existing Systems

The decentralized diploma verification system was evaluated against current solutions, including SIVIL, an Indonesian online diploma verification system, and other blockchain-based systems.

SIVIL addresses the issue of fake diplomas, but the system is still vulnerable to fraud and forgery in the absence of an infallible way to confirm the legitimacy of credentials, like blockchain technology @Mohamed_Al_Hemairy_2024. The suggested solution utilizing IPFS for storage and Solana for blockchain eliminates any single point of failure, hence enhancing security and reliability.

Current blockchain-based diploma verification systems, including those utilized by certain colleges, frequently employ Ethereum or Hyperledger. Although these systems provide decentralized storage, their transaction prices and processing durations are elevated in comparison to Solana's economical and rapid transactions. Furthermore, Ethereum's Proof of Work (PoW) method is more energy-consuming, while Solana's Proof of History (PoH) is more efficient @Seungdo_Yu_2024, rendering the proposed system more scalable and ecologically sustainable.

#let three-line-table = tablem.with(
  render: (columns: (2fr, 3fr, 2fr), ..args) => {
    table(
      columns: columns,
      stroke: none,
      align: (left, left, left),
      inset: 2pt,
      table.hline(y: 0),
      table.hline(y: 1, stroke: .5pt),
      ..args,
      table.hline(),
    )
  },
)

#figure(
  three-line-table[
    | *Feature* | *Proposed System* | *SIVIL* |
    | ------ | ---------- | -------- |
    | Architecture | Decentralized (Chain & IPFS) | Centralized Server |
    | Ledger | Solana | Traditional DB |
    | Storage | IPFS (Decentral) | Centralized Server |
    | Tx Speed (Verify) | ~2.4 seconds (0.4s + \<2s) | Varies |
    | Tx Cost | Very Low | N/A (internal) |
    | Scalability (TPS) | High (>1k tested) | Server-limited |
    | Energy Efficiency | High (PoH/PoS) | Moderate |
    | Key Vulnerability | Smart contract bugs, IPFS pinning | Single point failure, DDoS |
    | Advantage | Speed, low cost, robust decentral. | Nat. standard, authoritative |
  ],
  caption: [Comparison of Proposed System vs. SIVIL],
) <comparison>

== Limitations and Challenges

The technology demonstrates significant potential; nonetheless, various challenges remain.

Notwithstanding the system's praiseworthy performance on the testnet, further assessment on the Solana mainnet is essential to determine its ability to handle high transaction volumes in a real-world environment, particularly when multiple institutions and employers engage with the system simultaneously.

While IPFS offers decentralized storage, maintaining significant data on the network may incur storage costs. Although companies like Pinata offer economical solutions, the long-term sustainability of this model requires additional assessment.

User acceptability may provide a challenge, as is typical with any nascent technology. Educational institutions and employers must understand and trust the blockchain-based verification process before its widespread implementation.

