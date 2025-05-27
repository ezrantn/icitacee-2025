Diploma verification is an essential process to ensure the authenticity and validity of educational documents. This research aims to develop a diploma verification system using blockchain technology, specifically utilizing Solana as a blockchain platform and IPFS for distributed file storage.

== System Design

The system design is based on two core technologies, namely Solana and IPFS. Solana was chosen for its high transaction speed and low cost, making it well suited for applications such as diploma verification that require efficiency and scalability @Castillo2022Creducate.

#figure(
  image("img/flow.png", width: 90%),
  caption: [Verification Flow],
)<flow>

Solana's Proof of History (PoH) provides improved throughput and minimal latency for validations. Diplomas are kept on IPFS, which offers enhanced security and tamper-resistance due to its decentralized architecture. The distinctive IPFS hash of each diploma is subsequently linked to the Solana blockchain for verification, facilitating transparent and secure credential administration as shown in @flow.

== Development Stages

The development of the system is structured into several key stages, each focused on specific components and milestones.

1. System Planning and Requirements Analysis

The initial phase of developing the diploma verification system involves delineating the functional requirements and system architecture. This entails delineating the responsibilities of students, educational institutions, and employers, guaranteeing that the system addresses the requirements of all parties. The primary functionalities to be implemented encompass user identification, diploma uploading, smart contract generation, and transaction documentation on the blockchain.

2. Smart Contract Development

Smart contracts are key to this technology, facilitating the automation of the diploma verification process. The contract will be programmed to autonomously verify a diploma's authenticity by comparing the file's cryptographic hash with the one recorded on the blockchain. This guarantees that once a diploma is uploaded and authenticated, it cannot be modified. The smart contract will undergo development and testing on the Solana testnet prior to its deployment on the main network. This phase guarantees that the contract operates smoothly and meets anticipated performance standards.

3. IPFS Integration

The subsequent phase involves the integration of IPFS for the storage of diploma files. An intuitive interface will be developed for educational institutions to post diploma files to IPFS. Every uploaded file will be assigned a distinct hash. The hash is subsequently documented on the blockchain, associating the file with a verified transaction. Integrating IPFS guarantees that diploma files are safely stored in a decentralized fashion, ensuring accessibility and resistance to tampering.

4. System Integration and Testing

After the individual components—Solana blockchain, IPFS, and smart contracts—are developed, they will be integrated into a complete system. During this phase, all parts of the system will work together to facilitate end-to-end diploma verification. The integration process will be tested extensively to ensure that each component communicates effectively. Additionally, the system will be tested on the testnet to evaluate its performance, scalability, and security in a controlled environment.

5. Proof of Concept Testing

Upon complete integration of the system, it will undergo testing as a proof of concept. This step entails conducting practical evaluations in which students, educational institutions, and employers engage with the system. Input from these users will be gathered to pinpoint potential areas for enhancement and to verify that the system functions as intended. This testing phase will ascertain the system's readiness for extensive deployment and its capacity to manage the anticipated volume of diploma verifications.

== System Model

The diploma verification system will utilize a client-server architecture featuring decentralized storing and verification mechanisms. Within this framework:

1. Clients (students and employers) will engage with the system through a web interface. Students will submit their diplomas to the system, and employers will authenticate the credentials by accessing the blockchain.

2. The Server will provide communication between the client interface and backend services, specifically the Smart contract and IPFS. It will manage transaction processing, facilitate smart contract interactions, and retrieve files from IPFS.

This decentralized framework guarantees that no singular body governs the verification process, hence mitigating the vulnerabilities inherent in centralized systems.
