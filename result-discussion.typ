This chapter delineates the outcomes of the installation and evaluation of the decentralized diploma verification system developed utilizing the Solana blockchain and IPFS. The outcomes are assessed according to functionality, performance, security, and user feedback collected throughout the proof of concept testing phase. This section examines the consequences of the system's performance and underscores the principal findings that illustrate its efficacy in overcoming the problems associated with conventional diploma verification methods.

== System Functionality

The system was effectively designed and evaluated in the testnet environment. The diploma verification procedure functions effectively, utilizing the Solana blockchain and IPFS to ensure a secure and transparent environment for diploma storage and certification. The procedure commences with educational institutions uploading diploma files to IPFS, where each file is assigned a distinct cryptographic hash. The hash is subsequently documented on the Solana blockchain, guaranteeing that the diploma's legitimacy is safely inscribed in an immutable ledger.

Employers or third parties can readily get the hash from the blockchain and obtain the associated diploma file from IPFS upon verification. The smart contract automates verification by comparing the hash on the blockchain with the file saved on IPFS to validate its legitimacy. The system operates fast and provides real-time results, verifying the diploma's authenticity.

== Performance and Scalability

In the testing phase, the system processed over 1,000 transactions per minute on the Solana testnet, showcasing its scalability and capacity to manage substantial verification requests. The velocity of Solana’s Proof of History (PoH) consensus method was important in enabling the system to process several transactions concurrently without latency. Every transaction received confirmation within 400 milliseconds, which is well within the acceptable threshold for applications necessitating low-latency validation.

The system's implementation of IPFS for decentralized storage demonstrated favorable outcomes regarding retrieval times. The mean file retrieval duration from IPFS was below 2 seconds, illustrating the dependability and efficacy of decentralized storage for academic credentials. This renders the system appropriate for practical use, where rapidity and accessibility are paramount.

== Security

Security was a vital consideration throughout the system's development and testing phases. Both the Solana blockchain and IPFS utilize advanced cryptographic methods to guarantee data security and integrity.

Utilizing Solana's Proof of History (PoH) and Proof of Stake (PoS) techniques, the blockchain offers an unalterable and visible ledger. Once a diploma is documented, it cannot be modified or removed, hence preserving the integrity of academic records. No instances of illegal alterations or tampering with the blockchain data were seen during testing.

The decentralized architecture of IPFS ensures that files are not housed on a singular server, hence diminishing the likelihood of centralized failure points or data tampering. Each diploma file is hashed prior to its upload to IPFS, guaranteeing that any alteration to the file will provide a distinct hash, so rendering manipulation identifiable. The solution incorporated encryption prior to uploading files to IPFS, hence enhancing security for critical academic material.

== User Feedback and Usability

During the proof of concept phase, the system underwent evaluation by various educational institutions, students, and employers. The feedback from these consumers was predominantly favorable, with specific focus on the following aspects.

The user interface was intuitive, facilitating the effortless upload and verification of degrees by users. Educational institutions deemed the upload process uncomplicated, but employers valued the ease of diploma verification without the necessity of contacting the issuing university.

Users emphasized the clarity of the verification process. The transaction's recording on the blockchain enables both students and employers to independently verify the diploma's authenticity, thereby fostering trust in the system.

Employers expressed satisfaction with the efficiency of the verification process. In conventional procedures, diploma verification may require several days. Nonetheless, the blockchain-based approach enabled nearly instantaneous verification of diplomas, conserving both time and resources.

Some users observed that the system might improve with a more comprehensive help section and an enhanced mobile UI to increase accessibility for individuals unfamiliar with blockchain or IPFS technology.

== Comparison with Existing Systems

The decentralized diploma verification system was evaluated against current solutions, including SIVIL, an Indonesian online diploma verification system, and other blockchain-based systems.

SIVIL tackles the problem of counterfeit diplomas; however, it depends on a centralized server, which may create a bottleneck and presents possible security and accessibility problems. The suggested solution utilizing IPFS for storage and Solana for blockchain eliminates any single point of failure, hence enhancing security and reliability.

Alternative Blockchain-based Systems: Current blockchain-based diploma verification systems, including those utilized by certain colleges, frequently employ Ethereum or Hyperledger. Although these systems provide decentralized storage, their transaction prices and processing durations are elevated in comparison to Solana's economical and rapid transactions. Furthermore, Ethereum's Proof of Work (PoW) method is more energy-consuming, while Solana's Proof of History (PoH) is more efficient, rendering the proposed system more scalable and ecologically sustainable.

== Limitations and Challenges

The technology demonstrates significant potential; nonetheless, various challenges remain.

Notwithstanding the system's praiseworthy performance on the testnet, further assessment on the Solana mainnet is essential to determine its ability to handle high transaction volumes in a real-world environment, particularly when multiple institutions and employers engage with the system simultaneously.

While IPFS offers decentralized storage, maintaining significant data on the network may incur storage costs. Although companies like Pinata offer economical solutions, the long-term sustainability of this model requires additional assessment.

User acceptability may provide a challenge, as is typical with any nascent technology. Educational institutions and employers must understand and trust the blockchain-based verification process before its widespread implementation.

