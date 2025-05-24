Diploma verification is an essential process to ensure the authenticity and validity of educational documents. This research aims to develop a diploma verification system using blockchain technology, specifically utilizing Solana as a blockchain platform and IPFS for distributed file storage.

== System Design

The system design is based on two core technologies, namely Solana and IPFS. Solana was chosen for its high transaction speed and low cost, making it well suited for applications such as diploma verification that require efficiency and scalability @Castillo2022Creducate. Solana's Proof of History (PoH) consensus mechanism guarantees high throughput and low latency, which is crucial for handling large volumes of verification requests. On the other hand, IPFS is used to store the actual diploma files. In contrast to traditional centralized storage systems, IPFS uses a decentralized network of nodes, thus offering higher security and reducing the risk of data manipulation. Once the diploma is uploaded to IPFS, it will be assigned a unique cryptographic hash, which will then be stored on the Solana blockchain to ensure authenticity. This combination of Solana and IPFS enables a transparent and secure way of storing and verifying academic credentials.

== Development Stages

The development of the system is structured into several key stages, each focused on specific components and milestones.

1. System Planning and Requirements Analysis

The first step in building the diploma verification system is to outline the functional requirements and system architecture. This involves defining the roles of students, educational institutions, and employers, ensuring that the system meets the needs of all stakeholders. The core features to be developed include user authentication, diploma uploading, smart contract creation, and transaction recording on the blockchain.

2. Smart Contract Development

Smart contracts are the heart of this system, responsible for automating the diploma verification process. The contract will be coded to automatically validate a diploma’s authenticity by matching the file’s cryptographic hash with the one stored on the blockchain. This ensures that once a diploma is uploaded and verified, it cannot be altered. The smart contract will be developed and tested on the Solana testnet before deployment on the main network. This phase ensures that the contract functions seamlessly and performs as expected.

3. IPFS Integration

The next phase is integrating IPFS for storing the diploma files. A user-friendly interface will be created for educational institutions to upload diploma files to IPFS. Each uploaded file will receive a unique hash. This hash is then recorded on the blockchain, linking the file to a verifiable transaction. By integrating IPFS, the system ensures that diploma files are securely stored in a decentralized manner, making them both accessible and tamper-proof.

4. System Integration and Testing

After the individual components—Solana blockchain, IPFS, and smart contracts—are developed, they will be integrated into a complete system. During this phase, all parts of the system will work together to facilitate end-to-end diploma verification. The integration process will be tested extensively to ensure that each component communicates effectively. Additionally, the system will be tested on the testnet to evaluate its performance, scalability, and security in a controlled environment.

5. Proof of Concept Testing

Once the system is fully integrated, it will be tested as a proof of concept. This phase involves running real-world tests where students, educational institutions, and employers interact with the system. Feedback from these users will be collected to identify potential areas for improvement and to ensure that the system works as intended. This testing phase will help determine whether the system is ready for broader deployment and if it can handle the expected volume of diploma verifications.

== System Model

The diploma verification system will follow a client-server model with decentralized storage and verification processes. In this model:

1. Clients (students and employers) will interact with the system via a web interface. Students will upload their diplomas to the system, and employers will verify the credentials by accessing the blockchain.

2. The Server will manage communication between the client interface and backend systems (Solana and IPFS). It will handle transaction processing, smart contract interactions, and file retrieval from IPFS.

This decentralized structure ensures that no single entity controls the verification process, eliminating the risks associated with centralized systems.
