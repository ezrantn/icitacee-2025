This chapter provides a comprehensive overview of the foundational technologies that support decentralized degree verification systems. It examines blockchain’s immutable ledger capabilities, the decentralized storage mechanism of the InterPlanetary File System (IPFS), and the interoperability of the Solana network.

== Blockchain Technology

Blockchain technology represents a revolutionary advancement in data management by utilizing a distributed ledger system that guarantees secure, immutable, and transparent data storage across a decentralized network @Beck2017Blockchain. This paradigm shift is characterized by its fundamental features: immutability, transparency, and decentralization, features that collectively uphold data integrity while eliminating the need for centralized intermediaries. Once information is recorded on a blockchain, it becomes resistant to unauthorized alterations—a crucial safeguard that reduces the likelihood of credential fraud, particularly in academic contexts @Beck2017Blockchain.

The blockchain process begins with the creation of a transaction (such as validating a diploma), which is then broadcast to the network. The transaction is grouped with others into a block, which is added to the blockchain through a consensus mechanism. This ensures that the data remains consistent across all nodes in the network, preventing fraudulent modifications @Xiao2019A.

== InterPlanetary File System (IPFS)

In the realm of decentralized diploma verification, the InterPlanetary File System (IPFS) is preferred over conventional cloud platforms, such as Amazon Web Services (AWS) or Google Cloud Platform (GCP), because it adheres to the foundational principles of decentralization and trustless systems. In contrast to centralized cloud service providers that retain authority over data storage and access, IPFS offers a more distributed and autonomous approach to data management.

IPFS is a peer-to-peer distributed file system that allows data to be stored and accessed in a decentralized manner, overcoming the drawbacks of centralized systems such as single points of failure and arbitrary control @Politou2020Delegated. Pinata is a service that facilitates the use of IPFS by providing an easier interface to upload and manage data in IPFS @Vaidya2024Blockchain-Powered. The implemented system utilizes the InterPlanetary File System (IPFS) protocol to securely upload users’ academic degrees, which are subsequently stored via the Pinata platform.

A significant advantage of the InterPlanetary File System (IPFS) is its implementation of content-addressable storage, whereby each file is designated by a unique cryptographic hash @Doan2022Toward. This mechanism offers a reliable guarantee of data integrity, as any alteration to the file will result in a distinct hash value, thus facilitating the immediate detection of any tampering. In contrast, centralized platforms employ location-based addressing for data storage, a strategy that does not inherently validate the authenticity of the content.

== Smart Contracts

Smart contracts are autonomous agreements with the stipulations encoded directly into programming language. These contracts autonomously implement and enforce the stipulations upon the fulfillment of predetermined criteria, eliminating the necessity for intermediaries and mitigating the risk of human error or fraud @Zheng.2020. In the context of academic verification, smart contracts will be used to automate the verification process. When a diploma is uploaded to IPFS and its hash stored on the blockchain, the smart contract will verify the legitimacy of the diploma automatically. This process is faster, more secure, and transparent compared to manual verification methods, ensuring that academic credentials are valid without requiring third-party validation.

Incorporating smart contracts enhances the system’s reliability and trustworthiness by guaranteeing that no one can alter the verification process once the diploma is validated, thus ensuring data integrity @Kong2024Characterizing.

== Proof of History (PoH)

Proof of History (PoH) is a novel consensus technique aimed at enhancing transaction sequencing and verification in blockchain networks. It utilizes a verifiable delay function to establish a historical record of events, enabling nodes to concur on transaction sequences without considerable inter-node communication. This approach has been prominently employed in blockchain systems such as Solana, which seeks to improve scalability and diminish energy usage linked to conventional consensus models @Zimba.2025.

PoH is particularly useful for applications that require high throughput and low latency, such as decentralized diploma verification systems. It allows Solana to handle over 65,000 transactions per second (TPS), making it one of the fastest blockchains in existence @SolanaBlockchainTechnologyReview2024. This high transaction throughput is crucial for handling the large volume of diploma verifications that could occur in a global system. Additionally, the use of PoH reduces the computational power required for consensus, making the network more energy-efficient than traditional Proof of Work (PoW) systems.
