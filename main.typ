#import "@preview/charged-ieee:0.1.3": ieee

#show: ieee.with(
  title: [A Blockchain and IPFS-Based Smart Contract Framework for Preventing Certificate Fraud in Academia],
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
      email: "erdhi@unika.ac.id"
    )
  ),
  index-terms: ("blockchain", "decentralized verification", "credential fraud prevention", "verification systems", "education"),
  bibliography: bibliography("refs.bib"),
  figure-supplement: [Fig.],
)

= Introduction
#include "introduction.typ"

= Problem Statement
#include "problem-statement.typ"

= Objectives
#include "objectives.typ"

= Theoretical Foundation
#include "theoritical-foundations.typ"