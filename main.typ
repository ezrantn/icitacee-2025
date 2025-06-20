#import "./local-template/lib.typ": ieee

#show: ieee.with(
  title: [A Blockchain and InterPlanetary File System (IPFS) Based Smart Contract Framework for Preventing Certificate Fraud in Academia],
  abstract: [
    #include "abstract.typ"
  ],
  authors: (
    (
      name: "Ezra Natanael",
      department: [Department of Information Systems],
      organization: [Soegijapranata Catholic University],
      location: [Semarang, Indonesia],
      email: "ezrantn@proton.me",
    ),
    (
      name: "Ridwan Sanjaya",
      department: [Department of Information Systems],
      organization: [Soegijapranata Catholic University],
      location: [Semarang, Indonesia],
      email: "ridwan@unika.ac.id",
    ),
    (
      name: "Erdhi Widyarto Nugroho",
      department: [Department of Information Systems],
      organization: [Soegijapranata Catholic University],
      location: [Semarang, Indonesia],
      email: "erdhi@unika.ac.id",
    ),
  ),
  index-terms: (
    "blockchain",
    "decentralized verification",
    "diploma fraud prevention",
    "ipfs",
    "smart contract",
  ),
  bibliography: bibliography("refs.bib"),
  figure-supplement: [Figure],
  paper-size: "a4",
)

= Introduction
#include "introduction.typ"

= Concepts Overview
#include "concept.typ"

= Implementation
#include "implementation.typ"

= Result & Discussion
#include "result-discussion.typ"

= Conclusion
#include "conclusion.typ"
terms
