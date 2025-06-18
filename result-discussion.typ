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
    pub verified: bool,
    pub created_at: i64,
}
```

Employers or third parties can simply pull the hash off the blockchain and pull the diploma file corresponding to the hash off IPFS after verification. The verification is automatic through a comparison by the smart contract between the hash on the blockchain and the stored file on IPFS to verify its authenticity. The system is fast and provides results in real-time, verifying the diploma.

== Performance and Scalability

During the test phase, the system processed over 1,000 transactions per minute on the Solana testnet, which is a measure of its scalability along with its capacity to process massive verification requests. The rate of Solana's Proof of History (PoH) consensus algorithm played a pivotal role in enabling the system to process multiple transactions simultaneously without suffering any type of latency. All the transactions were verified within 400 milliseconds, which is clearly within the threshold for applications that need low-latency verification.

Implementation of IPFS by the system for decentralized storage proved to have positive results in terms of retrieval times. The average file retrieval time from IPFS was less than 2 seconds, showing the reliability and efficiency of decentralized storage for scholarly credentials. This makes the system suitable for real-world application, where speed and accessibility are critical.

== Security

Security was of utmost importance throughout the system development and testing. The Solana blockchain and IPFS utilize advanced cryptographic methods to provide for data security and integrity.

Using Solana's Proof of History (PoH) and Proof of Stake (PoS) approaches, the blockchain yields an untamperable and transparent record book. Once a diploma is entered, it cannot be changed or removed, thus ensuring academic records integrity. There were no instances of unauthorized changes or tampering with blockchain data during testing.

The decentralized nature of IPFS ensures that files do not exist on a single server, minimizing the chances of central points of failure or file tampering. Every diploma file is hashed prior to uploading to IPFS, ensuring any alteration of the file will produce a different hash, hence file manipulation would be traceable. The solution employed encryption prior to uploading files to IPFS, hence providing an additional layer of security for precious academic materials.

== Comparison with Existing Systems

The decentralized diploma verification system was evaluated against current solutions, including SIVIL, an Indonesian online diploma verification system, and other blockchain-based systems.

SIVIL tackles the problem of counterfeit diplomas; however, it depends on a centralized server, which may create a bottleneck and presents possible security and accessibility problems. The suggested solution utilizing IPFS for storage and Solana for blockchain eliminates any single point of failure, hence enhancing security and reliability.

Current blockchain-based diploma verification systems, including those utilized by certain colleges, frequently employ Ethereum or Hyperledger. Although these systems provide decentralized storage, their transaction prices and processing durations are elevated in comparison to Solana's economical and rapid transactions. Furthermore, Ethereum's Proof of Work (PoW) method is more energy-consuming, while Solana's Proof of History (PoH) is more efficient, rendering the proposed system more scalable and ecologically sustainable.

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

#three-line-table[
  | *Feature* | *Proposed System* | *SIVIL* |
  | ------ | ---------- | -------- |
  | Core Architecture | Decentralized (Chain & IPFS) | Centralized Server |
  | Ledger | Solana | Traditional DB |
  | Storage | IPFS (Decentral) | Centralized Server |
  | Tx Speed (Verify) | ~0.4s + \<2s ≈ 2.4s total | Varies |
  | Tx Cost | Very Low | N/A (internal) |
  | Scalability (TPS) | High (>1k tested) | Server-limited |
  | Energy Efficiency | High (PoH/PoS) | Moderate |
  | Key Vulnerability | Smart contract bugs, IPFS pinning | Single point failure, DDoS |
  | Advantage | Speed, low cost, robust decentral. | Nat. standard, authoritative |
]

== Limitations and Challenges

The technology demonstrates significant potential; nonetheless, various challenges remain.

Notwithstanding the system's praiseworthy performance on the testnet, further assessment on the Solana mainnet is essential to determine its ability to handle high transaction volumes in a real-world environment, particularly when multiple institutions and employers engage with the system simultaneously.

While IPFS offers decentralized storage, maintaining significant data on the network may incur storage costs. Although companies like Pinata offer economical solutions, the long-term sustainability of this model requires additional assessment.

User acceptability may provide a challenge, as is typical with any nascent technology. Educational institutions and employers must understand and trust the blockchain-based verification process before its widespread implementation.

