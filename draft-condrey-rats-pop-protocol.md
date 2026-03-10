---
v: 3
docname: draft-condrey-rats-pop-protocol-latest
title: "Proof of Process (PoP): Architecture and Evidence Format"
abbrev: PoP Protocol
category: exp
ipr: trust200902
submissiontype: independent
area: Security
workgroup: Individual Submission
keyword:
  - attestation
  - RATS
  - provenance
  - authorship
  - SEAT

stand_alone: yes
pi:
  toc: yes
  tocdepth: "4"
  sortrefs: yes
  symrefs: yes

author:
  - fullname: David Condrey
    initials: D.
    surname: Condrey
    organization: WritersLogic Inc
    abbrev: WritersLogic
    city: San Diego
    region: California
    country: United States
    email: david@writerslogic.com

normative:
  RFC2104:
  RFC4648:
  RFC5705:
  RFC5869:
  RFC8017:
  RFC8610:
  RFC8949:
  RFC9052:
  RFC9106:
  RFC9334:
  PoP-Appraisal:
    title: "Proof of Process (PoP): Forensic Appraisal and Security Model"
    author:
      - fullname: David Condrey
        initials: D.
        surname: Condrey
    date: 2026-02
    seriesinfo:
      Internet-Draft: draft-condrey-rats-pop-appraisal-04

informative:
  RFC3161:
  RFC3552:
  RFC6973:
  RFC9266:
  RFC9711:
  Boneh2018:
    title: "Verifiable Delay Functions"
    target: "https://doi.org/10.1007/978-3-319-96884-1_25"
    author:
      - fullname: Dan Boneh
        initials: D.
        surname: Boneh
      - fullname: Joseph Bonneau
        initials: J.
        surname: Bonneau
      - fullname: Benedikt Bunz
        initials: B.
        surname: Bunz
      - fullname: Ben Fisch
        initials: B.
        surname: Fisch
    date: 2018
    seriesinfo:
      CRYPTO: "2018"
  Dolev-Yao:
    title: "On the Security of Public Key Protocols"
    target: "https://doi.org/10.1109/TIT.1983.1056650"
    author:
      - fullname: Danny Dolev
        initials: D.
        surname: Dolev
      - fullname: Andrew Yao
        initials: A.
        surname: Yao
    date: 1983
    seriesinfo:
      "IEEE Transactions on Information Theory": "29(2), 198-208"
  Salthouse1986:
    title: "Perceptual, Cognitive, and Motoric Aspects of Transcription Typing"
    target: "https://doi.org/10.1037/0033-295X.93.3.303"
    author:
      - fullname: Timothy A. Salthouse
        initials: T.A.
        surname: Salthouse
    date: 1986
    seriesinfo:
      "Psychological Review": "93(3), 303-319"
  Sardar-RATS:
    title: "Security Considerations for Remote ATtestation procedureS (RATS)"
    target: "https://datatracker.ietf.org/doc/html/draft-sardar-rats-sec-cons-02"
    author:
      - fullname: Muhammad Usama Sardar
        initials: M.U.
        surname: Sardar
    date: 2026-02
    seriesinfo:
      Internet-Draft: draft-sardar-rats-sec-cons-02
  RATS-Models:
    title: "Reference Interaction Models for Remote Attestation Procedures"
    target: "https://datatracker.ietf.org/doc/html/draft-ietf-rats-reference-interaction-models-15"
    author:
      - fullname: H. Birkholz
        initials: H.
        surname: Birkholz
      - fullname: M. Eckel
        initials: M.
        surname: Eckel
      - fullname: W. Pan
        initials: W.
        surname: Pan
      - fullname: E. Voit
        initials: E.
        surname: Voit
    date: 2025
    seriesinfo:
      Internet-Draft: draft-ietf-rats-reference-interaction-models-15
  SEAT-EXPAT:
    title: "Remote Attestation with Exported Authenticators"
    target: "https://datatracker.ietf.org/doc/html/draft-fossati-seat-expat-01"
    author:
      - fullname: Muhammad Usama Sardar
        initials: M.U.
        surname: Sardar
      - fullname: Thomas Fossati
        initials: T.
        surname: Fossati
      - fullname: Tirumaleswar Reddy
        initials: T.
        surname: Reddy
      - fullname: Yaron Sheffer
        initials: Y.
        surname: Sheffer
      - fullname: Hannes Tschofenig
        initials: H.
        surname: Tschofenig
      - fullname: Ionut Mihalcea
        initials: I.
        surname: Mihalcea
    date: 2026-01
    seriesinfo:
      Internet-Draft: draft-fossati-seat-expat-01
  SEAT-Timing:
    title: "Pre-, Intra- and Post-handshake Attestation"
    target: "https://datatracker.ietf.org/doc/html/draft-usama-seat-intra-vs-post-03"
    author:
      - fullname: Muhammad Usama Sardar
        initials: M.U.
        surname: Sardar
    date: 2026-01
    seriesinfo:
      Internet-Draft: draft-usama-seat-intra-vs-post-03
  Liang2023:
    title: "GPT Detectors Are Biased Against Non-Native English Writers"
    target: "https://doi.org/10.1016/j.patter.2023.100779"
    author:
      - fullname: Weixin Liang
        initials: W.
        surname: Liang
      - fullname: Mert Yuksekgonul
        initials: M.
        surname: Yuksekgonul
      - fullname: Yining Mao
        initials: Y.
        surname: Mao
      - fullname: Eric Wu
        initials: E.
        surname: Wu
      - fullname: James Zou
        initials: J.
        surname: Zou
    date: 2023-07
    seriesinfo:
      Patterns: "4(7), 100779"
  C2PA:
    title: "C2PA Technical Specification"
    target: "https://c2pa.org/specifications/specifications/2.2/specs/C2PA_Specification.html"
    author:
      - org: Coalition for Content Provenance and Authenticity
    date: 2024
    seriesinfo:
      Version: "2.2"
  SEAT-UseCases:
    title: "Use Cases and Properties for Integrating Remote Attestation with Secure Channel Protocols"
    target: "https://datatracker.ietf.org/doc/html/draft-mihalcea-seat-use-cases-01"
    author:
      - fullname: Ionut Mihalcea
        initials: I.
        surname: Mihalcea
      - fullname: Muhammad Usama Sardar
        initials: M.U.
        surname: Sardar
      - fullname: Thomas Fossati
        initials: T.
        surname: Fossati
      - fullname: Tirumaleswar Reddy
        initials: T.
        surname: Reddy
      - fullname: Yuning Jiang
        initials: Y.
        surname: Jiang
      - fullname: Meiling Chen
        initials: M.
        surname: Chen
    date: 2026-01
    seriesinfo:
      Internet-Draft: draft-mihalcea-seat-use-cases-01
  HHS-AI-RFI:
    title: "Request for Information: Accelerating the Adoption and Use of Artificial Intelligence as Part of Clinical Care"
    target: "https://www.regulations.gov/docket/HHS-ONC-2026-0001"
    author:
      - org: "U.S. Department of Health and Human Services, Office of the National Coordinator for Health Information Technology"
    date: 2025-12
    seriesinfo:
      "Federal Register": "2025-23641"
  NIST-AI-Agents-RFI:
    title: "Request for Information Regarding Security Considerations for Artificial Intelligence Agents"
    target: "https://www.regulations.gov/docket/NIST-2025-0035"
    author:
      - org: National Institute of Standards and Technology
    date: 2026-01
    seriesinfo:
      "Federal Register": "2026-00206"
  AG-Human-Authored:
    title: "Authors Guild Launches \"Human Authored\" Certification to Preserve Authenticity in Literature"
    target: "https://authorsguild.org/news/ag-launches-human-authored-certification-to-preserve-authenticity-in-literature/"
    author:
      - org: The Authors Guild
    date: 2025-01
  GPTZero:
    title: "GPTZero: AI Detection and Writing Process for Google Docs"
    target: "https://gptzero.me/chrome"
    author:
      - org: "GPTZero, Inc."
    date: 2025
  Amazon-KDP-AI:
    title: "Kindle Direct Publishing Content Guidelines"
    target: "https://kdp.amazon.com/en_US/help/topic/G200672390"
    author:
      - org: "Amazon.com, Inc."
    date: 2025

--- abstract

This document specifies the Proof of Process (PoP) Evidence Framework, a specialized profile of Remote Attestation Procedures (RATS) designed to validate the provenance of effort in digital authorship. Unlike traditional provenance, which tracks file custody, PoP attests to the continuous physical process of creation.

The protocol defines a cryptographic mechanism for generating Evidence Packets utilizing a composite Sequential Work Function (SWF) to enforce temporal monotonicity, jitter seals to bind behavioral entropy (human inter-keystroke timing) to the checkpoint chain, and entangled MACs to bind physical state to the document. Technical specifications for wire formats, sequential work functions, and hardware-anchored trust are provided.

--- to_be_removed_note_Discussion_Venues

Source for this draft and an issue tracker can be found at
<https://github.com/writerslogic/draft-condrey-rats-pop>.

--- middle

# Introduction {#introduction}

The rapid proliferation of generative artificial intelligence has created an authenticity crisis in digital discourse. While traditional provenance tracks the "custody of pixels," it fails to attest to the human-driven process of creation. This document specifies the Proof of Process (PoP) protocol, which extends the RATS architecture {{RFC9334}} to validate the "provenance of effort."

Unlike traditional attestation which captures static system state, PoP attests to a continuous physical process. Its Sequential Work Function (SWF) enforces temporal monotonicity, jitter seals bind behavioral entropy (human inter-keystroke timing) to the checkpoint chain, and entangled MACs bind physical state (thermodynamics) to the document's evolution.

By entangling content hashes with these physical constraints, this protocol enables an Attester to generate an Evidence Packet (.cpop) that imposes quantifiable cost on forgery of authorship claims, preserving privacy by design without disclosing document content. The formal threat model, including the adversarial Attester assumption that distinguishes PoP from standard RATS deployments, is defined in {{threat-model}}.

# Requirements Language {#requirements-language}

{::boilerplate bcp14-tagged}

# Problem Statement {#problem-statement}

Digital documents lack creation-process provenance. Existing
cryptographic mechanisms address complementary but insufficient
aspects of this gap: COSE signatures {{RFC9052}}
prove key possession, trusted timestamps
{{RFC3161}} prove that content existed at a given
time, and media provenance standards such as C2PA
{{C2PA}} track the custody and transformation of
digital assets after creation. None of these mechanisms reveals
how a document was produced or how it evolved during authorship.

Non-cryptographic approaches have emerged to address this gap,
but each carries fundamental limitations:

Surveillance-based methods:
: Screen recording, keystroke logging, and similar monitoring
  capture the authoring process but are inherently
  privacy-invasive, require continuous trust in a third-party
  archive, and produce evidence that cannot be independently
  verified without access to the surveillance
  infrastructure.

Detection-based methods:
: Stylometric classifiers and AI-generated content detectors
  operate on finished output rather than the creation process.
  These tools are probabilistic, degrade as generative models
  improve, are vulnerable to adversarial evasion, and exhibit
  systematic bias against non-native language speakers
  {{Liang2023}}. Their outputs do not constitute
  deterministic, independently reproducible evidence.

Proprietary commercial solutions:
: Several products have emerged to fill this gap but lack
  openness, verifiability, or both. GPTZero ships a Chrome
  extension that records writing replay in Google Docs and
  analyzes typing patterns using a proprietary algorithm
  {{GPTZero}}; the analysis is opaque, controlled
  by the detector rather than the author, and not independently
  reproducible. The Authors Guild "Human Authored" certification
  for books relies on author self-attestation with no
  cryptographic verification {{AG-Human-Authored}}.
  Amazon requires publishers to disclose AI-generated content on
  its Kindle Direct Publishing platform but provides no mechanism
  to verify compliance {{Amazon-KDP-AI}}.

The need for creation-process provenance extends across sectors
and jurisdictions. AI-assisted authoring is entering clinical
documentation workflows, prompting the U.S. Department of
Health and Human Services to seek input on how to maintain
accountability when AI tools contribute to medical records
{{HHS-AI-RFI}}. The autonomous content generation
capabilities of AI agents have led the National Institute of
Standards and Technology to examine security implications,
including the attribution of agent-produced output
{{NIST-AI-Agents-RFI}}. The common requirement across
these sectors is a standardized, open mechanism to verify how
content was produced rather than inferring it after the fact.
Such a mechanism must satisfy four properties:

1. *Privacy-preserving:* Evidence must not require
   disclosure of document content or invasive behavioral
   surveillance. Cryptographic hashes, not raw content, must form
   the evidentiary basis.
2. *Independently verifiable:* Proofs must be
   self-contained and deterministically checkable by any Verifier
   without access to external archives or proprietary
   systems.
3. *Tamper-evident:* Evidence must form a cryptographic
   chain resistant to retroactive modification, reordering, or
   selective omission.
4. *Process-documenting:* The mechanism must capture how
   a document evolved over time, not merely what it contains at a
   point in time.

# Use Cases {#use-cases}

The provenance gap identified in
{{problem-statement}} has concrete consequences
across multiple domains. Where detection-based methods have been
deployed as substitutes for process evidence, the results have
been problematic: Liang et al. found that GPT detectors
misclassified over 61% of essays by non-native English writers
as AI-generated {{Liang2023}}, and courts have
begun
ruling that sanctions based solely on AI detection scores lack
valid evidentiary basis. The following use cases illustrate how
process attestation addresses needs that neither content
detection nor custody-based provenance can satisfy.

Importantly, PoP does not assert that human-authored content is
inherently superior to AI-generated content. The value of
process attestation lies in transparency: enabling Relying
Parties to make informed trust decisions appropriate to their
context. In some contexts, AI-generated content is entirely
acceptable or even preferred; in others, stakeholders require
assurance about the nature and extent of human involvement.
PoP provides the evidentiary basis for these decisions without
imposing a policy preference.

## Creative Industries and Labor Rights {#uc-creative-industries}

Professional guilds and labor organizations in the creative
industries have established contractual frameworks governing
AI use in content production. The Writers Guild of America's
2023 Minimum Basic Agreement provides that AI-generated
material cannot be credited as "literary material" and
requires studios to disclose when materials provided to
writers incorporate AI-generated content. Similar provisions
exist in SAG-AFTRA agreements for digital replicas and
synthetic performers, and the Authors Guild has published
model contract clauses addressing AI use.

These contractual obligations currently lack a standardized
technical enforcement mechanism. A screenwriter's authoring
application acts as the Attester, producing an Evidence
Packet (.cpop) that documents the writing process. When the
writer uses AI tools for research or drafting, the Tool
Receipt Protocol defined in {{PoP-Appraisal}}
records each AI contribution with a signed receipt binding
the tool's output to the evidence chain. The studio or guild
acts as the Relying Party, consuming the Attestation Result
(.cwar) to verify compliance with contractual AI disclosure
requirements. The Attestation Result includes the
human-to-machine effort ratio, providing quantified
attribution rather than a binary human-or-AI determination.

## Academic Integrity {#uc-academic-integrity}

Educational institutions face a dilemma: post-hoc AI
detectors produce probabilistic scores that cannot
reliably distinguish AI-generated text from the writing of
non-native speakers, students with certain disabilities,
or those with concise writing styles
{{Liang2023}}. Sanctions based on detector
output alone have been overturned by courts as lacking valid
evidentiary basis, with affected families incurring
substantial legal costs. Institutions that rely on these
tools expose themselves to litigation under due process and
civil rights frameworks.

PoP inverts this model. Rather than accusing students based
on statistical analysis of their output, it enables students
to voluntarily submit affirmative evidence of their authorship
process. The student's writing environment acts as the
Attester, producing an Evidence Packet over the course of
the assignment. The institution's learning management system
acts as the Relying Party, evaluating whether the submitted
evidence is consistent with the claimed authorship timeline
and effort. Participation is opt-in: PoP serves as a
provenance tool that rewards transparency, not a surveillance
mechanism that presumes guilt.

This use case requires particular attention to privacy.
Behavioral telemetry constitutes biometric data; the privacy
protections defined in
{{privacy-considerations}} (jitter
quantization, data minimization, and Verifier data
retention limits) are essential safeguards. Institutions
deploying PoP SHOULD establish clear data governance policies
and ensure students retain control over their Evidence
Packets.

## Journalism and News Provenance {#uc-journalism}

Major news organizations including the Associated Press and
BBC have adopted editorial policies requiring human oversight
of AI-assisted content production, and several have
co-founded initiatives to combat AI-generated disinformation.
These policies require reporters to disclose AI tool use but
lack a machine-verifiable mechanism for enforcement.

A reporter's authoring application acts as the Attester,
producing Evidence Packets during article composition. The
news organization's editorial system acts as the Verifier,
appraising the evidence before publication. The resulting
Attestation Result can be embedded in the article's metadata
for downstream consumers (fact-checkers, aggregators, and
readers) who act as secondary Relying Parties. When reporters
use AI tools for research or drafting, Tool Receipts document
each contribution, preserving an auditable record of the
human editorial process that complements C2PA media
provenance for any associated images or video.

## Legal and Evidentiary Standards {#uc-legal-evidentiary}

PoP Evidence Packets are designed to align with existing
legal standards for digital evidence authentication. The
U.S. Federal Rules of Evidence already provide a framework:
Rule 901(b)(9) admits evidence about "a process or system,
showing it produces an accurate result," and Rules 902(13)
and 902(14) (amended 2017) establish that hash-authenticated
electronic records and certified process outputs are
self-authenticating. PoP's hash-chained evidence structure,
cryptographic signatures, and deterministic verification
procedures map naturally to these evidentiary requirements.

Regulatory frameworks are also converging on mandatory AI
content disclosure. The EU AI Act (Article 50) requires
disclosure of AI-generated content published on matters of
public interest, with enforcement beginning August 2026.
These obligations create demand for a standardized technical
mechanism that can produce verifiable, machine-readable
attestation of how content was produced.

In this use case, a filer's authoring environment acts as the
Attester, producing Evidence Packets bound to a hardware
Secure Element (T3 or T4 tier) for non-repudiation. The
regulatory body or court acts as the Relying Party, consuming
Attestation Results that include forgery cost estimates to
quantify the economic assurance of the evidence.

## Content Platforms and Marketplaces {#uc-content-marketplace}

Content platforms may distinguish between human-authored and
AI-generated submissions for editorial placement, pricing,
or labeling purposes. Authors act as Attesters, submitting
Evidence Packets alongside their content. The platform's
Verifier produces Attestation Results that inform trust
decisions.

Absence Proofs as defined in {{PoP-Appraisal}}
enable the platform to identify submissions that lack
process evidence, indicating unknown provenance rather
than necessarily AI generation. The forgery cost bounds
in the Attestation Result provide a quantitative basis for
graduated trust: platforms can distinguish between content
with strong process evidence, content with partial evidence,
and content with no provenance at all, rather than relying
on a binary authentic-or-not classification.

# Scope and Applicability {#scope-and-applicability}

PoP is designed as a voluntary, author-initiated mechanism.
The following constraints define its intended scope of use:

* Evidence collection MUST be initiated by the author.
  The Attester operates under the author's control; no
  external party may activate evidence collection without
  the author's explicit consent.
* Implementations MUST NOT be deployed as proctoring
  or surveillance mechanisms. PoP does not capture screen
  content, camera input, biometric identification, or
  application activity outside the authoring environment.
* The author MUST retain sole control over whether to
  share Evidence Packets with a Verifier or Relying Party.
  Evidence Packets are generated and stored locally until
  the author chooses to release them.
* Verifiers MUST NOT automatically reject Evidence
  based solely on atypical timing patterns. Atypical
  input patterns may reflect assistive technologies,
  non-Latin input methods, or individual variation
  rather than forgery (see
  {{PoP-Appraisal}}).

Whether any institution or platform requires PoP evidence
as a condition of participation is a policy decision outside
the scope of this protocol. PoP provides a technical
mechanism for producing verifiable evidence; it does not
mandate that evidence be produced or consumed.

# System Model {#system-model}

This section defines the PoP system model in terms of the RATS architecture {{RFC9334}} and identifies where PoP diverges from standard remote attestation assumptions.

## RATS Entity Roles {#rats-entity-roles}

PoP maps to RATS entity roles as follows:

Attester:
: The authoring application and its host platform. The Attester generates Evidence Packets (.cpop) containing behavioral entropy, physical state markers, and SWF proofs. Unlike traditional RATS deployments, the Attester in PoP is operated by the entity whose claims are being verified (the author).

Attesting Environment (AE):
: The software and hardware components that collect telemetry and generate cryptographic bindings. This includes the authoring application, operating system interfaces for entropy collection, and hardware Secure Elements (TPM/SE) when available.

Verifier:
: An entity that appraises Evidence Packets and produces Attestation Results. Verifiers may be operated by publishers, platforms, or independent third parties. Verifier logic is specified in {{PoP-Appraisal}}.

Relying Party:
: Consumers of Attestation Results who make trust decisions based on the appraisal. This includes publishers, readers, or automated systems that need authenticity assurance.

Endorser:
: Entities that vouch for the Attesting Environment's integrity by issuing Endorsements. In PoP, Endorsers include hardware manufacturers that issue TPM endorsement certificates and platform attestation credentials for T3/T4 tiers.

Reference Value Provider:
: Entities that supply Reference Values for appraisal. In PoP, this includes the PoP specification itself (defining expected behavioral patterns and SWF parameters) and calibration services that provide updated forensic baselines.

## Compatibility with RATS Architecture {#rats-compatibility}

PoP implements a specialized RATS profile with a critical trust inversion: in traditional remote attestation, the Attester is a device whose owner (Relying Party) wants assurance about its state. The adversary is typically external -- malware, network attackers, or supply chain threats.

In PoP, the Attester is operated by the author, and the Relying Party (publisher, reader) has no privileged access to the authoring environment. The primary adversary is the Attester operator themselves. This fundamental inversion shapes the entire security model:

* Evidence must be unforgeable by the entity generating it
* Temporal claims must be bound to physical constraints the Attester cannot circumvent
* Behavioral entropy must be computationally expensive to simulate
* Hardware attestation provides value only when the hardware root of trust is genuinely inaccessible to the Attester operator

Despite this inversion, PoP maintains compatibility with RATS message flows and data formats, enabling integration with existing RATS infrastructure where appropriate.

## Applicability to RATS Architecture {#rats-applicability}

PoP extends the RATS framework beyond traditional device state
attestation to process attestation, verifying that a physical
process (human authorship) occurred as claimed. This extension
is justified because the fundamental problem structure is
identical: an Attester generates Evidence, conveys it to a
Verifier, and the Verifier produces Attestation Results for
Relying Parties. The RATS entity roles, message flows, and
data format conventions apply directly.

The adversarial Attester model
(see {{adversarial-attester}}) inverts the
standard RATS trust assumption. The RATS architecture
accommodates this through its layered trust model and
configurable Appraisal Policies
({{RFC9334}}, Section 8). The Experimental
category is appropriate for exploring this novel application
of RATS.

The protocol document defines Evidence format, collection,
and conveyance, topics that
align with the RATS charter. The companion appraisal document
({{PoP-Appraisal}}) defines domain-specific
verification procedures for PoP Evidence; while the RATS
charter scopes out general appraisal policy formats, every
RATS deployment requires domain-specific appraisal criteria
to produce meaningful Attestation Results. The emerging SEAT
working group ({{SEAT-EXPAT}}), which addresses
integration of remote attestation with secure channel
protocols, represents a complementary venue for the transport
and channel-binding aspects of this work.

# Protocol Overview {#protocol-overview}

This section provides an end-to-end overview of the PoP protocol, mapping the message flow to the RATS passport model and illustrating the lifecycle of an Evidence Packet from creation through appraisal.

## Passport Model Message Flow {#passport-model}

PoP follows the RATS passport model ({{RFC9334}}, Section 8.1; {{RATS-Models}}) in which Evidence flows directly from the Attester to the Verifier, and Attestation Results flow from the Verifier to the Relying Party:

~~~ ascii-art
                        +------------+
                        |  Endorser  |
                        |  (HW Mfg)  |
                        +------+-----+
                               |
                               | Endorsements
                               | (TPM/SE certs,
                               |  T3/T4 only)
                               v
+----------+  .cpop file +-------+-------+  .cwar file +-----------+
|          |  Evidence   |               |  Attestation|           |
| Attester +------------>+   Verifier    +------------>+  Relying  |
| (Author  |             |               |  Results    |   Party   |
|  App/AE) |             |               |  (WAR)      |(Publisher,|
+----------+             +-------+-------+             |  Reader)  |
                                 ^                     +-----------+
                                 |
                                 | Reference Values
                                 | (behavioral patterns,
                                 |  SWF parameters)
                         +-------+-------+
                         |   Reference   |
                         |     Value     |
                         |   Provider    |
                         +---------------+
~~~
{: #fig-passport-model title="PoP Passport Model Message Flow"}

In this model:

1. The Attester (authoring application running in the Attesting Environment) collects behavioral telemetry during content creation and generates an Evidence Packet (.cpop) containing SWF proofs, jitter bindings, and physical state markers.
2. The Evidence Packet is conveyed to a Verifier, which appraises chain integrity, temporal ordering, behavioral entropy, and content binding per the procedures defined in {{PoP-Appraisal}}.
3. The Verifier produces a Writers Authenticity Report (.cwar) containing EAT claims, forensic assessment scores, and forgery cost estimates.
4. The Relying Party (publisher, reader, or automated platform) consumes the WAR to make trust decisions about the claimed authorship provenance.

Endorsers (hardware manufacturers) supply TPM endorsement certificates and Secure Element attestations that Verifiers use to validate hardware-bound claims in T3/T4 Evidence. Reference Value Providers supply the expected behavioral patterns, SWF difficulty parameters, and profile specifications that Verifiers use as appraisal baselines.

## Evidence Lifecycle {#evidence-lifecycle}

The following sequence illustrates the end-to-end lifecycle of a PoP attestation session:

~~~ ascii-art
 Author        Attester (AE)          Verifier         Relying Party
   |                |                     |                  |
   | begin session  |                     |                  |
   +--------------->|                     |                  |
   |                |--+ sample physical  |                  |
   |                |  | freshness anchor |                  |
   |                |<-+ (entropy, thermal)|                 |
   |                |                     |                  |
   |                |--+ collect initial  |                  |
   |                |  | jitter sample    |                  |
   |                |<-+ (32+ bytes)      |                  |
   |                |                     |                  |
   | keystrokes,    |                     |                  |
   | edits, pauses  |                     |                  |
   +--------------->| capture jitter,     |                  |
   |                | semantic events     |                  |
   |                |                     |                  |
   |                |--+ CHECKPOINT:      |                  |
   |                |  | compute SWF,     |                  |
   |                |  | bind jitter +    |                  |
   |                |  | physical state,  |                  |
   |                |  | extend hash chain|                  |
   |                |<-+                  |                  |
   |                |                     |                  |
   |   ... (repeat per checkpoint interval) ...             |
   |                |                     |                  |
   | end session    |                     |                  |
   +--------------->| SEAL: sign chain,   |                  |
   |                | emit .cpop file     |                  |
   |                |                     |                  |
   |                | .cpop (Evidence)    |                  |
   |                +-------------------->|                  |
   |                |                     | appraise:        |
   |                |                     | chain, SWF,      |
   |                |                     | entropy, MACs    |
   |                |                     |                  |
   |                |                     | .cwar (Result)   |
   |                |                     +----------------->|
   |                |                     |                  | trust
   |                |                     |                  | decision
   |                |                     |                  |
~~~
{: #fig-evidence-lifecycle title="Evidence Packet Lifecycle"}

Each checkpoint interval (default 30 seconds, MUST be between 10 and 120 seconds) produces one link in the hash chain. The SWF computation runs continuously during the interval, binding the author's behavioral entropy and the platform's physical state to the elapsed wall-clock time. At session end or rollover boundary, the Attester seals the chain into a .cpop Evidence Packet. For long-running authoring projects, the Session Continuation mechanism ({{session-continuation}}) allows a series of Evidence Packets to be cryptographically linked.

## Session Continuation {#session-continuation}

Long-running authoring projects (e.g., books, dissertations,
multi-day reports) may produce checkpoint chains that exceed
practical memory and file-size limits. To support these
workflows, the Attester MAY partition the authoring process
into a series of Evidence Packets linked by the
previous-packet-ref field (evidence-packet key 14).

Attesters SHOULD roll over to a new Evidence Packet when the
checkpoint count within the current packet approaches the
implementation's resource limits. A maximum of 10,000
checkpoints per Evidence Packet is RECOMMENDED.

The following rules govern session continuation:

1. The first Evidence Packet in a series MUST omit the
   previous-packet-ref field (key 14) and MUST set
   packet-sequence (key 15) to 1, or omit both fields
   entirely. Omission of both fields indicates a standalone
   (non-continuation) Evidence Packet.
2. Each subsequent Evidence Packet MUST include
   previous-packet-ref containing the hash (using the series'
   hash-algorithm) of the complete CBOR-encoded preceding
   Evidence Packet. packet-sequence MUST be set to one greater
   than the preceding packet's packet-sequence value.
3. The document-ref (evidence-packet key 5) MUST be
   identical across all packets in a series. Verifiers MUST
   reject a continuation packet whose document-ref differs
   from the initial packet's.
4. The first checkpoint in a continuation packet MUST set
   its prev-hash to the final checkpoint-hash of the preceding
   Evidence Packet (not to H(CBOR-encode(document-ref)),
   which is reserved for the series' first checkpoint). This
   cryptographically links the two packets into one logical
   chain.
5. Checkpoint sequence numbers (checkpoint key 1) MUST be
   globally monotonic across the series. The first checkpoint
   in a continuation packet MUST have a sequence number
   strictly greater than the last checkpoint in the preceding
   packet.
6. The Attester MUST seal the current Evidence Packet
   before beginning a new one. Concurrent open packets for
   the same document-ref MUST NOT exist.

This mechanism preserves the full cryptographic chain
integrity of a single Evidence Packet while bounding per-file
resource consumption. A Verifier appraising a series
reconstructs the logical chain by following
previous-packet-ref links from the final packet back to the
initial packet.

## Behavioral Baseline Verification {#behavioral-baseline}

The Attester MAY include a baseline-verification structure
(evidence-packet key 19) that enables Verifiers to assess
behavioral consistency across writing sessions by the same
author. This mechanism strengthens authorship attribution
by comparing a session's behavioral summary against an
accumulated baseline digest.

A baseline-verification structure contains a
session-behavioral-summary capturing the current session's
typing metrics (IKI histogram, coefficient of variation,
Hurst exponent, cognitive pause frequency, duration, and
keystroke count). Optionally, it includes a baseline-digest
summarizing the author's historical behavioral profile and
a COSE_Sign1 signature over the CBOR-encoded digest.

The baseline-digest aggregates per-session statistics using
Welford's online algorithm (streaming-stats) for numerically
stable incremental computation of mean and variance. The
identity-fingerprint field MUST equal SHA-256 of the author's
Ed25519 public key, binding the digest to the signing
identity. The session-merkle-root field contains the root of
a Merkle Mountain Range over hashes of all sessions
incorporated into the digest, enabling efficient append-only
proof of session inclusion. Attesters that have not yet
implemented session-level MMR tracking MUST set
session-merkle-root to 32 zero bytes. Verifiers MUST treat
a zero session-merkle-root as providing no session inclusion
proof and MUST NOT elevate the confidence-tier based on it.

The confidence-tier field indicates the maturity of the
baseline. Attesters and Verifiers use the following
thresholds:

population-reference (1):
: 0-4 sessions observed. Comparison is limited to
  population-level human-vs-machine discrimination.

emerging (2):
: 5-9 sessions. Meaningful per-author consistency
  emerges.

established (3):
: 10-19 sessions. Author identity is distinguishable
  from other authors.

mature (4):
: 20 or more sessions. Full authorship attribution
  with high confidence.

During initial enrollment (fewer than one prior session),
the Attester MUST omit the baseline-digest and
digest-signature fields, including only the
session-behavioral-summary. The Verifier treats enrollment
packets as contributing to baseline accumulation without
performing baseline comparison.

When a baseline-digest is present, the digest-signature
field MUST also be present. Verifiers MUST verify the
COSE_Sign1 signature over the CBOR-encoded baseline-digest
and MUST verify that the identity-fingerprint equals
SHA-256 of the Evidence Packet's signing key.

# Threat Model {#threat-model}

This section defines the adversary model following the methodology of {{RFC3552}} and incorporating insights from RATS security analysis {{Sardar-RATS}}. The threat model assumes a Dolev-Yao style adversary {{Dolev-Yao}} with domain-specific constraints.

## Adversarial Attester Model {#adversarial-attester}

The PRIMARY threat in PoP is an adversarial Attester -- an author who controls the Attesting Environment and seeks to generate Evidence for content they did not authentically author. This inverts the standard RATS trust assumption where the Attester is trusted to report honestly.

The adversarial Attester has the following capabilities:

* *Full software control:* Can modify, instrument, or replace any software component including the authoring application and operating system
* *Timing manipulation:* Can adjust system clocks, virtualize execution environments, and attempt to compress or expand apparent time
* *Entropy injection:* Can inject synthetic behavioral data (keystroke timing, jitter sequences) from pre-recorded or generated sources
* *Content pre-generation:* Can generate document content using AI tools or other assistance before initiating the attestation session
* *Parallel execution:* Can run multiple attestation sessions simultaneously or use distributed resources

The adversary is constrained by:

* *Physics:* Cannot violate thermodynamic laws or accelerate hardware beyond physical limits
* *Memory bandwidth:* MHSF computations are bounded by available memory bandwidth
* *Hardware isolation:* In T3/T4 tiers, cannot extract keys from Secure Elements without physical tampering
* *Economic rationality:* Will not expend resources exceeding the value of successful forgery

## Security Goals {#security-goals}

PoP provides the following authentication properties, defined in terms of adversary advantage:

Temporal Authenticity:
: Given Evidence claiming authorship duration D, an adversary cannot produce valid Evidence in time significantly less than D. Formally: Adv_temporal = Pr\[Verify(E) = accept AND Time(Generate(E)) < D - epsilon\] is negligible for meaningful epsilon.

Behavioral Authenticity:
: Given Evidence containing behavioral entropy B, an adversary cannot efficiently generate synthetic entropy that is indistinguishable from biological origin. The cost of generating synthetic behavioral data satisfying all forensic constraints MUST exceed a defined threshold.

Content Binding:
: Evidence E is cryptographically bound to document D such that E cannot be repurposed to attest a different document D'. This property is unconditional given collision resistance of H.

Non-repudiation (T3/T4):
: In hardware-bound tiers, Evidence is signed with keys that the Attester cannot extract or duplicate, providing non-repudiation of the attestation act.

## Attack Taxonomy {#attack-taxonomy}

The following attacks are in scope for PoP defenses:

### Retype Attack {#retype-attack}

The canonical forgery attack against PoP: an adversary generates content using AI or other assistance, then retypes the pre-existing content while collecting "authentic" behavioral telemetry. This attack exploits the gap between typing existing text and composing original text.

PoP defends against retype attacks through:

* *Cognitive Load Correlation:* Authentic composition exhibits increased inter-keystroke intervals during high-complexity passages. Retyping known text shows uniform timing regardless of content complexity. Evidence with semantic-timing correlation r < 0.2 is flagged for additional scrutiny (see {{sec-retype-defense}}).
* *Error Topology:* Authentic authoring exhibits characteristic error patterns (hesitations, deletions near recent insertions, self-corrections). Retyping from reference exhibits either unnaturally low error rates or artificially injected errors lacking positional correlation.
* *Semantic-Temporal Binding:* The SWF proof binds the document's semantic evolution to wall-clock time. Retyping requires real-time effort proportional to document length, even if content was pre-generated.

Retype attacks remain economically viable for short documents. The forgery cost scales with document length and checkpoint frequency, providing graduated assurance rather than binary security.

### Replay Attack {#replay-attack}

Attempting to reuse previously valid Evidence for new claims. Defeated by Physical Freshness anchors that bind Evidence to non-reproducible physical state (thermal trajectories, kernel entropy samples). Entangled VDF Mode (`swf-argon2id-entangled`) further closes the parallel generation attack surface by creating a strict cryptographic dependency on the completion of the previous interval's memory-hard function, preventing an adversary from pre-computing SWF proofs in parallel.

### Relay Attack {#relay-attack}

Forwarding challenges or Evidence between a legitimate author and an adversary's session. In PoP, this manifests as claiming credit for another author's work. Defeated by hardware-bound signing (T3/T4) and out-of-band presence challenges that verify physical proximity.

### SWF Acceleration Attack {#swf-acceleration}

Using specialized hardware to compute SWF proofs faster than consumer hardware. Mitigated by Argon2id's memory-hardness (computation bounded by memory bandwidth, not ALU throughput) and Hardware-Anchored Time in T3/T4 tiers.

### AE Spoofing {#ae-spoofing}

Presenting a virtualized or modified Attesting Environment as genuine. In T1/T2 tiers, this is possible and Evidence SHOULD be weighted accordingly. T3/T4 tiers require hardware attestation that is difficult to spoof without physical access to the Secure Element.

### Baseline Forgery {#baseline-forgery}

An adversarial Attester manufactures a synthetic baseline by
performing enrollment sessions using the same synthetic
behavioral patterns intended for subsequent forgery. This
attack is feasible because the baseline-digest is accumulated
and signed entirely within the Attesting Environment. The
adversary can establish a "consistent" but entirely synthetic
baseline, then present forgery sessions that match it.

This attack is mitigated by:

* *Baseline is non-verdict:* Baseline comparison modulates
  Verifier confidence but does not constitute an independent
  forensic flag (see {{PoP-Appraisal}}). The forensic
  mechanisms (SNR, CLC, perplexity, cadence analysis) operate
  independently of baseline data.
* *Cross-metric consistency:* An adversary must simultaneously
  maintain consistent IKI histograms, coefficient of
  variation, Hurst exponent, and cognitive pause frequency
  across all forged sessions. Synthesizing coherent values
  for all four metrics is substantially harder than spoofing
  any single metric.
* *Hardware binding (T3/T4):* When the signing key is
  hardware-bound, the adversary cannot create a separate
  baseline under a different key and swap it in.

Verifiers MUST NOT treat baseline consistency as independent
evidence of authenticity. The confidence-tier field reflects
statistical robustness of the baseline, not trustworthiness
of the Attesting Environment.

### Diversion Attack {#diversion-attack}

An adversary redirects Evidence intended for one Verifier to a different Verifier or Relying Party context. PoP Evidence Packets do not inherently bind to a specific Verifier identity. To mitigate this, implementations SHOULD use the TLS Exported Keying Material (EKM) mechanism defined in {{RFC9266}} to bind Evidence to the transport session.

When the Attester conveys Evidence over TLS, it SHOULD populate the optional channel-binding field (key 11) in the evidence-packet structure as follows:

1. The Attester calls the TLS exporter function with label "EXPORTER-PoP-channel-binding" and an empty context value, requesting 32 bytes of output.
2. The Attester sets binding-type to 1 (tls-exporter) and binding-value to the 32-byte EKM output.
3. The Verifier, upon receiving the Evidence Packet, calls the same TLS exporter function on its side of the connection and compares the result to the binding-value in the channel-binding field.
4. If the values do not match, the Verifier MUST reject the Evidence Packet as potentially diverted.

The EKM label "EXPORTER-PoP-channel-binding" is specific to this protocol. The empty context ensures the binding depends solely on the TLS session keys, which are unique per connection.

For offline verification (where no TLS session exists between Attester and Verifier), the channel-binding field is absent and Relying Parties MUST evaluate Evidence provenance through out-of-band channels.

When PoP Evidence is conveyed over an attested TLS channel, implementations MAY leverage the SEAT exported authenticator mechanism {{SEAT-EXPAT}} to combine platform attestation (proving the Attesting Environment's integrity) with PoP process attestation (proving the authorship process). The TLS channel binding described above is compatible with the SEAT evidence binding approach, which derives binding values from TLS exporters. At T3/T4 tiers, SEAT platform attestation provides the hardware trust anchor that corroborates PoP's Attesting Environment claims.

## Out-of-Scope Threats {#out-of-scope-threats}

The following threats are explicitly out of scope:

* *Nation-state HSM compromise:* Adversaries capable of extracting keys from certified HSMs via invasive physical attacks
* *Physics-level laboratory spoofing:* Adversaries capable of simulating thermal trajectories and entropy sources at sub-microsecond precision
* *Quantum computation:* Attacks requiring large-scale quantum computers (hash function collision finding, Argon2id inversion)

# Core Principles and Claims {#core-principles}

Building on the threat model defined above, PoP operates on five primary constraints:

* Physics-based Cost: Memory-Hard Sequential Functions (MHSF) establish an economic lower bound on forgery, ensuring consumer hardware remains competitive with specialized ASICs.
* Physical Freshness: Replay and simulation attacks are defeated by anchoring sessions to irreversible physical markers (Thermal Trajectories and Kernel Entropy pools). Every session incorporates Non-deterministic Physical Freshness sampled within the AE at the start of the sequential work function execution.
* Biological Binding: Captured human motor-signal randomness (jitter) serves as the non-deterministic seed for the SWF proof.
* Out-of-Band Presence: Utilizing secondary physical devices (e.g., smartphone QR scans) to bridge the digital-physical gap and ensure a human is in the loop.
* Asymmetric Verification: The sequential work function allows proofs to be verified probabilistically via Merkle-sampled audit proofs, ensuring scalability and DoS resistance.

# Protocol Rationale and Terminology {#rationale-and-terminology}

The Proof of Process (PoP) framework follows the RATS architecture while introducing domain-specific extensions for physical process attestation.

PoP Evidence Packet (.cpop):
: An Attester artifact containing SWF Merkle trees, jitter seals, and physical liveness markers (CBOR tag 1129336656, encoding ASCII "CPOP").

WAR Result (.cwar):
: A Verifier Attestation Result containing signed EAT claims and forensic assessments (CBOR tag 1129791826). The WAR format is specified in {{PoP-Appraisal}}.

SWF:
: Sequential Work Function. The composite construction combining Argon2id and iterated hashing using the Evidence Packet's selected hash algorithm (see {{swf-construction}}).

# Attester State Machine {#attester-state-machine}

The Attesting Environment (AE) MUST implement the following formal state machine:

* RECORDING: AE captures semantic events and physical telemetry into a hash-linked buffer. Events are appended and the block hash is updated.
* PENDING_CHECK: The current event block is frozen to prepare for a checkpoint. No new events are accepted into this block.
* CHECKPOINT: AE computes the SWF over the entangled seed (previous hash + current jitter + physical markers).
* SEALING: The Attester generates a final snapshot, signs the transcript root with the Attester's signing key (hardware-bound for T3/T4; software-managed for T1/T2), and prepares the transport container (.cpop).

# Evidence Content Tiers {#evidence-tiers}

PoP Evidence Packets are classified by the depth of behavioral and forensic data collected:

CORE (Tier Value 1):
: Checkpoint chain with SWF proofs, hash-based content binding, and physical freshness anchors. Proves temporal ordering and content integrity.

ENHANCED (Tier Value 2):
: All CORE components plus behavioral entropy capture (Jitter Seals) and intra-checkpoint correlation. Adds evidence of interactive authoring behavior.

MAXIMUM (Tier Value 3):
: All ENHANCED components plus entangled MACs binding physical state, error topology analysis, and forgery cost bounds. Provides the strongest available evidence.

PoP Evidence is classified along two orthogonal axes. Evidence Content
Tier (CORE/ENHANCED/MAXIMUM) determines the depth of behavioral and
forensic data collected. Attestation Assurance Level (T1-T4) determines
the strength of hardware trust anchoring. These axes are independent:
a T3 CORE packet provides hardware-bound signing with minimal behavioral
data, while a T1 MAXIMUM packet provides rich behavioral data with
software-only signing.

# Attestation Assurance Levels {#attestation-assurance-levels}

The attestation tier system maps to established assurance frameworks
including NIST SP 800-63B Authenticator Assurance Levels (AAL),
ISO/IEC 29115 Levels of Assurance (LoA), and Entity Attestation Token
(EAT) security levels as defined in {{RFC9711}}.

| PoP Tier | NIST AAL | EAT Security Level (RFC 9711) |
|---|---|---|
| T1: Software-Only | AAL1 | unrestricted (1) |
| T2: Attested Software | AAL2 | restricted (2) |
| T3: Hardware-Bound | AAL3 | hardware (4) |
| T4: Hardware-Hardened | LoA4 | hardware (4) |

T3 and T4 both map to EAT security level "hardware" (4) because the EAT
specification does not distinguish PUF-level binding from standard
TPM key binding.

## Tier T1: Software-Only {#tier-t1-software}

Binding Strength:
: none or hmac_local

NIST AAL Mapping:
: AAL1

Security Properties:

:   * SWF timing provides temporal ordering
    * Hash chains provide tamper evidence
    * Jitter entropy provides behavioral binding
    * No hardware root of trust; keys stored in software

## Tier T2: Attested Software {#tier-t2-attested}

T2 extends T1 with optional hardware attestation hooks. The AE attempts to use platform security features (Keychain, DeviceCheck) but degrades gracefully. Maps to AAL2.

## Tier T3: Hardware-Bound {#tier-t3-hardware-bound}

Requires TPM 2.0 or platform Secure Enclave key binding. Evidence generation MUST fail if hardware is unavailable. Maps to AAL3.

## Tier T4: Hardware-Hardened {#tier-t4-hardware-hardened}

Discrete TPM + PUF binding + Enclave execution. Anti-tamper evidence required. Exceeds AAL3 requirements; maps to ISO/IEC 29115 LoA4.

# Profile Architecture {#profile-architecture}

The PoP specification defines three implementation profiles that establish Mandatory-to-Implement (MTI) requirements for interoperability.

| Feature ID | Feature Name | CORE | ENHANCED | MAXIMUM |
|---|---|---|---|---|
| 1 | swf-argon2id | M | M | M |
| 2 | content-binding | M | M | M |
| 4 | checkpoint-chain | M | M | M |
| 50 | behavioral-entropy | O | M | M |
| 60 | assistive-mode | O | O | O |
| 105 | hardware-attestation | O | O | M |

Feature IDs 1-9 are reserved for core protocol features. IDs 50-99 are reserved for behavioral features. IDs 100-199 are reserved for hardware features. Future revisions may define additional features within these ranges.

## Conformance Requirements {#conformance}

A conforming Attester MUST implement at least the CORE profile. A conforming Verifier MUST be capable of validating all three profiles. Verifiers encountering unknown fields MUST ignore them and proceed with validation of known fields. Verifiers receiving an Evidence Packet with version greater than 1 MUST reject the packet unless they implement the corresponding protocol version.

The profile-uri field in an Evidence Packet MUST be set to "urn:ietf:params:rats:eat:profile:pop:1.0" for Evidence conforming to this specification.

In the document-ref structure, byte-length is the length in bytes of the UTF-8 encoded document, and char-count is the number of Unicode scalar values (code points).

If the Evidence Packet omits the attestation-tier field, the Verifier
MUST assess the tier from the evidence content: T1 if no hardware
attestation is present, T2 if platform attestation hooks are
detected, T3 if TPM key binding is verified, T4 if anti-tamper
evidence and PUF binding are confirmed.

# Evidence Format and CDDL {#wire-format}

Evidence Packets are CBOR-encoded {{RFC8949}} and identified by semantic tag 1129336656. The CDDL notation {{RFC8610}} is used to define the wire format.

~~~ cddl
; CBOR tag wrappers
pop-evidence = #6.1129336656(evidence-packet)
pop-war = #6.1129791826(attestation-result)

; Primary structures
evidence-packet = {
    1 => uint,                    ; version (MUST be 1)
    2 => tstr,                    ; profile-uri
    3 => uuid,                    ; packet-id
    4 => pop-timestamp,           ; created
    5 => document-ref,            ; document
    6 => [3* checkpoint],          ; checkpoints (min 3)
    ? 7 => attestation-tier,      ; T1-T4
    ? 8 => [* tstr],              ; limitations
    ? 9 => profile-declaration,   ; profile
    ? 10 => [+ presence-challenge], ; QR/OOB proofs
    ? 11 => channel-binding,      ; TLS EKM binding
    ; key 12 reserved for future use
    ? 13 => content-tier,          ; Evidence Content Tier
    ? 14 => hash-value,            ; previous-packet-ref
    ? 15 => uint,                  ; packet-sequence (1-based)
    ; keys 16-17 reserved for future use
    ? 18 => physical-liveness,    ; physical-liveness markers
    ? 19 => baseline-verification, ; behavioral baseline
    * int => any,                  ; extension fields
}

checkpoint = {
    1 => uint,                    ; sequence (monotonic)
    2 => uuid,                    ; checkpoint-id
    3 => pop-timestamp,           ; timestamp (local)
    4 => hash-value,              ; content-hash
    5 => uint,                    ; char-count
    6 => edit-delta,              ; delta
    7 => hash-value,              ; prev-hash
    8 => hash-value,              ; checkpoint-hash
    9 => process-proof,           ; SWF proof
    ? 10 => jitter-binding,         ; behavioral-entropy (ENHANCED+)
    ? 11 => physical-state,         ; physical-state binding (ENHANCED+)
    ? 12 => hash-digest,             ; entangled-mac (ENHANCED+)
    ? 13 => [+ self-receipt],        ; cross-tool composition receipts
    ? 14 => [+ active-probe],        ; active liveness probes
    * int => any,                    ; extension fields
}

document-ref = {
    1 => hash-value,              ; content-hash
    ? 2 => tstr,                  ; filename
    3 => uint,                    ; byte-length
    4 => uint,                    ; char-count
    ? 5 => hash-salt-mode,        ; salting mode
    ? 6 => hash-digest,             ; salt-commitment
}

process-proof = {
    1 => proof-algorithm,         ; algorithm id
    2 => proof-params,            ; SWF params
    3 => hash-digest,             ; input (seed)
    4 => hash-digest,             ; merkle-root
    5 => [+ merkle-proof],        ; sampled proofs
    6 => uint,                     ; claimed-duration (milliseconds)
}

; Subsidiary type definitions
attestation-tier = &(
    software-only: 1,             ; T1: AAL1
    attested-software: 2,         ; T2: AAL2
    hardware-bound: 3,            ; T3: AAL3
    hardware-hardened: 4,         ; T4: LoA4
)

content-tier = &(
    core: 1,
    enhanced: 2,
    maximum: 3,
)

proof-algorithm = &(
    ; 1 is reserved for future use
    swf-argon2id: 20,
    swf-argon2id-entangled: 21, ; Entangled VDF Mode
)

hash-salt-mode = &(
    unsalted: 0,
    author-salted: 1,
)

proof-params = {
    1 => uint,                    ; time-cost (t)
    2 => uint,                    ; memory-cost (m, KiB)
    3 => uint,                    ; parallelism (p)
    4 => uint,                    ; iterations
}

jitter-binding = {
    1 => [+ uint],                ; intervals (milliseconds)
    2 => uint,                    ; entropy-estimate (centibits)
    3 => hash-digest,             ; jitter-seal (HMAC)
}

merkle-proof = {
    1 => uint,                    ; leaf-index
    2 => [+ hash-digest],        ; sibling-path
    3 => hash-digest,             ; leaf-value
}

edit-delta = {
    1 => uint,                    ; chars-added
    2 => uint,                    ; chars-deleted
    3 => uint,                    ; op-count
    ? 4 => [* edit-position],     ; positions
}

edit-position = [
    uint,                         ; offset
    int,                          ; change (+/-), MUST be non-zero
]

physical-state = {
    1 => [+ int],                 ; thermal (relative, millidegrees)
    2 => int,                     ; entropy-delta (signed)
    ? 3 => bstr .size 32,         ; kernel-commitment
}

physical-liveness = {
    1 => [+ thermal-sample],      ; thermal trajectory
    2 => bstr .size 32,           ; entropy-anchor
}

thermal-sample = [
    pop-timestamp,                ; sample time
    int,                          ; temperature delta (millidegrees)
]

presence-challenge = {
    1 => bstr .size (16..256),    ; challenge-nonce (128+ bits)
    2 => bstr,                    ; device-signature (MUST be COSE_Sign1)
    3 => pop-timestamp,           ; response-time
}

profile-declaration = {
    1 => tstr,                    ; profile-id
    2 => [+ uint],                ; feature-flags
}

binding-type = &(
    tls-exporter: 1,
)

channel-binding = {
    1 => binding-type,            ; binding-type
    2 => bstr .size 32,           ; binding-value (EKM output)
}

self-receipt = {
    1 => tstr,                    ; tool-id (source environment)
    2 => hash-value / compact-ref, ; output-commit
    3 => hash-value / compact-ref, ; evidence-ref (source packet)
    4 => pop-timestamp,           ; transfer-time
}

active-probe = {
    1 => probe-type,              ; challenge category
    2 => pop-timestamp,           ; stimulus-time
    3 => pop-timestamp,           ; response-time
    4 => bstr,                    ; stimulus-data (challenge payload)
    5 => bstr,                    ; response-data (captured response)
    ? 6 => uint,                  ; response-latency (milliseconds)
}

probe-type = &(
    galton-board: 1,              ; Galton invariant challenge
    reflex-gate: 2,               ; motor reflex timing gate
    spatial-target: 3,            ; spatial accuracy challenge
)

; Behavioral Baseline Verification
baseline-verification = {
    ? 1 => baseline-digest,       ; omitted during enrollment
    2 => session-behavioral-summary, ; current session metrics
    ? 3 => bstr .cbor COSE_Sign1,  ; digest-signature
}

baseline-digest = {
    1 => uint,                    ; version (MUST be 1)
    2 => uint,                    ; session-count
    3 => uint,                    ; total-keystrokes
    4 => streaming-stats,         ; iki-stats
    5 => streaming-stats,         ; cv-stats
    6 => streaming-stats,         ; hurst-stats
    7 => [9* float32],            ; aggregate-iki-histogram
    8 => streaming-stats,         ; pause-stats
    9 => bstr .size 32,           ; session-merkle-root (MMR)
    10 => confidence-tier,        ; baseline maturity
    11 => pop-timestamp,          ; computed-at
    12 => bstr .size 32,          ; identity-fingerprint
}

session-behavioral-summary = {
    1 => [9* float32],            ; iki-histogram
    2 => float32,                 ; iki-cv
    3 => float32,                 ; hurst
    4 => float32,                 ; pause-frequency
    5 => uint,                    ; duration-secs
    6 => uint,                    ; keystroke-count
}

streaming-stats = {
    1 => uint,                    ; count
    2 => float32,                 ; mean
    3 => float32,                 ; m2 (Welford)
    4 => float32,                 ; min
    5 => float32,                 ; max
}

confidence-tier = &(
    population-reference: 1,      ; 0-4 sessions
    emerging: 2,                  ; 5-9 sessions
    established: 3,               ; 10-19 sessions
    mature: 4,                    ; 20+ sessions
)

; Base types
uuid = bstr .size 16
pop-timestamp = uint                  ; epoch milliseconds (unsigned)
hash-digest = bstr .size 32 /        ; SHA-256
              bstr .size 48 /        ; SHA-384
              bstr .size 64          ; SHA-512
hash-value = {
    1 => hash-algorithm,
    2 => hash-digest,              ; length MUST match algorithm output
}
compact-ref = {
    1 => hash-algorithm,          ; algorithm used for full hash
    2 => bstr .size (8..32),      ; truncated-digest (8-32 bytes)
    3 => uint,                    ; prefix-length (bytes in digest)
}
hash-algorithm = &(
    sha256: 1,
    sha384: 2,
    sha512: 3,
)
~~~

The attestation-result type used in the pop-war tag wrapper is
defined in {{PoP-Appraisal}}.

To ensure cross-architecture determinism, all temporal and entropy measurements MUST be encoded as unsigned integers (`uint`). Timestamps and durations are expressed in milliseconds. Entropy estimates are expressed in centibits (1/100th of a bit).

pop-timestamp is a bare unsigned integer representing milliseconds since
the Unix epoch (1970-01-01T00:00:00Z). CBOR tag 1 is intentionally NOT
used because RFC 8949 Section 3.4.2 defines tag 1 as epoch seconds;
PoP requires millisecond precision for inter-keystroke interval (IKI)
measurements and jitter-binding timestamps. The timestamp semantics
are unambiguous because pop-timestamp appears only within typed map
entries (evidence-packet key 4, checkpoint key 3, baseline-digest
key 11, attestation-result key 12) where the CDDL schema defines the
interpretation. pop-timestamp values MUST be positive (greater than
zero). Verifiers MUST reject Evidence containing zero timestamps.

When hash-salt-mode is author-salted (1), the author generates a
random salt of at least 16 bytes. The salt-commitment field MUST
contain H(salt). To verify content binding, the author discloses
the salt to the Verifier, which checks that H(disclosed_salt)
matches the salt-commitment.

SHA-256 (value 1) is mandatory-to-implement. Conforming Attesters and Verifiers MUST support SHA-256. Support for SHA-384 and SHA-512 is OPTIONAL.

The hash digest length MUST match the algorithm output length: 32 bytes for SHA-256, 48 bytes for SHA-384, and 64 bytes for SHA-512.

All hash-value fields within a single Evidence Packet MUST use the
same hash algorithm. Verifiers MUST reject Evidence Packets
containing mixed hash algorithms.

Let H denote the hash function indicated by the hash-algorithm
field in the Evidence Packet. All internal hash computations in
this specification -- including the SWF iteration loop, Merkle
tree construction, seed derivation, checkpoint-hash computation,
Fiat-Shamir sampling, HMAC operations, and HKDF instantiation
-- MUST use H. The Argon2id output length (`len`
parameter) MUST equal the output length of H (32, 48, or 64
bytes). When this document writes H(...) in formulas, the hash
function used MUST be the one identified by hash-algorithm.

Encoders MUST use CBOR unsigned integer (major type 0) or
negative integer (major type 1) encoding for Evidence Packet
fields typed as `uint` or `int` in the CDDL. Floating-point
encodings (CBOR major type 7) MUST NOT be used for these
fields. Fields explicitly typed as `float32` in the CDDL
MUST use IEEE 754 single-precision encoding (CBOR additional
info 26). Half-precision (additional info 25) MUST NOT be
used, as it provides insufficient precision for streaming
variance computations. These float32 fields appear in both
Evidence Packet structures (streaming-stats,
session-behavioral-summary) and Attestation Result structures
(entropy-report, forgery-cost-estimate).

The `compact-ref` type provides a space-efficient
alternative to full `hash-value` references in
self-receipt structures. A compact-ref contains a truncated
hash prefix (minimum 8 bytes, providing 64 bits of collision
resistance) along with the hash algorithm identifier and the
prefix-length in bytes. Compact references MUST NOT be used
for security-critical bindings (checkpoint-hash, content-hash,
prev-hash); they are permitted only in self-receipt fields
where the referenced Evidence Packet can be independently
retrieved and verified against the full hash. Verifiers
encountering a compact-ref MUST resolve it to a full hash-value
before performing integrity checks.

Extension keys in evidence-packet and checkpoint structures MUST
use integer values 100 or greater. Keys 0-99 are reserved for use
by this specification and future revisions.

The op-count field in edit-delta counts the number of discrete
editing operations (insertions, deletions, and replacements)
during the checkpoint interval. A single paste operation counts
as one operation regardless of character count.

In edit-position entries, the change value MUST be non-zero.
Positive values indicate insertion of characters at the offset;
negative values indicate deletion. A zero change value is
semantically meaningless and MUST NOT appear.

The device-signature in a presence-challenge MUST be a COSE_Sign1
structure {{RFC9052}} covering the challenge-nonce.
The signing key MUST be hardware-bound on the secondary device.
The Verifier obtains the corresponding public key through prior
device registration (the registration mechanism is out of scope
for this document).

Active-probe structures (checkpoint key 14) record challenge-response
interactions issued by the Attester or Verifier during the authoring
session. Each probe records the probe-type, the stimulus timestamp
and payload, and the captured biological response. Galton-board
probes (type 1) present a visual randomness challenge whose response
distribution is compared against biological invariants. Reflex-gate
probes (type 2) measure involuntary motor reflex latency. Spatial-target
probes (type 3) measure pointing accuracy to on-screen targets.
The response-latency field, when present, MUST equal
(response-time minus stimulus-time) in milliseconds. Verifiers
appraise active-probe responses as specified in
{{PoP-Appraisal}}.

Per-checkpoint physical-state (checkpoint key 11) captures instantaneous
thermal and entropy measurements. Packet-level physical-liveness
(evidence-packet key 18) provides a session-wide thermal trajectory
for replay detection. physical-liveness SHOULD be included in ENHANCED
and MAXIMUM profiles. When both are present, Verifiers MUST verify
that per-checkpoint thermal values are consistent with the session-wide
trajectory.

The baseline-verification structure (evidence-packet key 19)
carries per-session behavioral metrics and, when available, a
signed digest of the author's accumulated behavioral baseline.
The session-behavioral-summary uses a fixed 9-bin IKI histogram
with bin edges at 0, 50, 100, 150, 200, 300, 500, 1000, and
2000 milliseconds. The streaming-stats type within
baseline-digest records count, mean, M2 (Welford's sum of
squared differences from the mean), min, and max for each
tracked metric. This representation supports numerically
stable incremental updates without retaining raw sample data.
Appraisal of baseline-verification data is specified in
{{PoP-Appraisal}}.

## Checkpoint Hash Computation {#checkpoint-hash-computation}

The checkpoint-hash field MUST be computed as follows:

~~~
checkpoint-hash = H(
    prev-hash ||
    content-hash ||
    CBOR-encode(edit-delta) ||
    CBOR-encode(jitter-binding) ||
    CBOR-encode(physical-state) ||
    process-proof.merkle-root
)
~~~

Where H is the Evidence Packet's selected hash function, \|\| denotes concatenation, and CBOR-encode produces deterministic CBOR per Section 4.2.1 of {{RFC8949}}.

For the first checkpoint in the initial Evidence Packet of a series (or a standalone packet), prev-hash MUST be set to H(CBOR-encode(document-ref)). This anchors the chain to the document identity. For the first checkpoint in a continuation packet (previous-packet-ref present), prev-hash MUST be set to the final checkpoint-hash of the preceding Evidence Packet (see {{session-continuation}}).

When jitter-binding and physical-state fields are absent (CORE profile), the checkpoint-hash MUST be computed without those terms: checkpoint-hash = H(prev-hash \|\| content-hash \|\| CBOR-encode(edit-delta) \|\| process-proof.merkle-root).

All components except process-proof.merkle-root are either
fixed-length hashes (32/48/64 bytes per algorithm) or
CBOR-encoded (self-delimiting). The merkle-root (fixed length
per hash algorithm) is appended last. This concatenation is
unambiguous and does not require additional domain separation.

## Checkpoint Computation Order {#checkpoint-computation-order}

The fields within a checkpoint MUST be computed in the following order:

1. Compute the SWF: run Argon2id with the derived seed, then iterate H to produce all intermediate states. Construct the Merkle tree to obtain the merkle-root (process-proof key 4).
2. Compute the jitter-seal using the merkle-root as HKDF-Expand PRK input and jitter-binding.intervals as HMAC input.
3. Assemble the jitter-binding structure (intervals, entropy-estimate, jitter-seal).
4. Compute the entangled-mac using the merkle-root as HKDF-Expand PRK input and prev-hash, content-hash, jitter-binding, and physical-state as HMAC input.
5. Compute the checkpoint-hash over prev-hash, content-hash, edit-delta, jitter-binding, physical-state, and merkle-root.

This ordering ensures that each subsequent computation can reference the outputs of prior steps. Implementations MUST follow this order to produce interoperable checkpoints.

## Evidence Protection {#evidence-protection}

For T3 and T4 Attestation Tiers, Evidence Packets MUST be wrapped
in a COSE_Sign1 envelope. For T1 and T2 tiers, COSE_Sign1 wrapping
is RECOMMENDED. The COSE_Sign1 envelope
{{RFC9052}} provides cryptographic protection during
transport. The COSE_Sign1 structure provides:

* Payload: the CBOR-encoded evidence-packet (including CBOR tag
  1129336656)
* Protected headers: algorithm identifier (ES256 or EdDSA
  RECOMMENDED)
* Signature: computed using the Attester's signing key

For T3/T4 tiers, the signing key MUST be bound to a hardware
Secure Element (TPM or platform SE). For T1/T2 tiers, a
software-managed key is acceptable.

When COSE_Sign1 wrapping is not used (e.g., offline file-based
conveyance), the Evidence Packet's integrity relies solely on
the internal hash chain. Relying Parties MUST evaluate the
trust implications of unwrapped Evidence.

For online conveyance, COSE_Sign1-wrapped Evidence Packets can be encapsulated within a Conceptual Message Wrapper (CMW) for transport via the SEAT cmw_attestation TLS extension {{SEAT-EXPAT}}. This enables PoP Evidence to be delivered alongside platform attestation evidence in a single post-handshake authentication exchange, which is the preferred attestation timing model {{SEAT-Timing}}. The SEAT use cases {{SEAT-UseCases}} identify runtime attestation and operation-triggered re-attestation as key requirements, both of which PoP's continuous checkpoint model satisfies.

## ASCII-Armored Encoding {#ascii-armor}

For transport over text-based protocols, embedding in source
code repositories, or human-readable archival, Evidence
Packets and Attestation Results MAY be encoded in an
ASCII-armored representation. The armored format consists of
a header line, Base64-encoded payload ({{RFC4648}},
Section 4), and a footer line.

Evidence Packets (.cpop) use the following armor boundaries:

~~~
-----BEGIN POP EVIDENCE-----
<Base64-encoded CBOR payload>
-----END POP EVIDENCE-----
~~~

Attestation Results (.cwar) use the following armor
boundaries:

~~~
-----BEGIN POP WAR-----
<Base64-encoded CBOR payload>
-----END POP WAR-----
~~~

The following rules apply to the armored encoding:

1. The payload MUST be the complete CBOR-encoded structure
   (including the CBOR semantic tag). When COSE_Sign1 wrapping
   is present, the entire COSE_Sign1 envelope is the
   payload.
2. Base64 line length MUST NOT exceed 76 characters per
   {{RFC4648}}. Decoders MUST ignore line
   breaks and whitespace within the Base64 block.
3. No additional headers or metadata are defined between
   the header line and the Base64 block. Implementations
   MUST NOT insert key-value headers (unlike PEM, which
   permits Proc-Type and DEK-Info headers).
4. Implementations MUST accept both armored and raw CBOR
   encodings. The media type for armored Evidence is
   application/cpop+cbor with a Content-Transfer-Encoding
   of base64. The media type for armored Attestation Results
   is application/cwar+cbor with the same transfer
   encoding.

# Sequential Work Function {#swf-construction}

PoP uses a composite Sequential Work Function (SWF) combining Argon2id {{RFC9106}} for memory-hardness with iterated hashing (using the Evidence Packet's selected hash function H) for sequential ordering. This construction is NOT a Verifiable Delay Function in the formal sense {{Boneh2018}}; it does not provide efficient public verification of the delay claim from the output alone.

Instead, verification relies on Merkle-sampled audit proofs: the Attester commits to a Merkle tree over intermediate states, and the Verifier checks a random subset of state transitions. This provides probabilistic verification in O(k * log n) time where k is the sample count and n is the iteration count.

## Construction {#swf-algorithm}

The SWF is computed as follows:

~~~
hash_len = output_length(H)          ; 32, 48, or 64 bytes
state_0  = Argon2id(seed, salt=H("PoP-salt" || seed), t=1, m=65536,
                    p=1, len=hash_len)
for i in 1..iterations:
    state_i = H(state_{i-1})
merkle_root = MerkleTree(state_0, state_1, ...,
                         state_iterations).root
~~~

The salt for Argon2id MUST be derived from the seed: salt = H("PoP-salt" \|\| seed). The Argon2id output length (`len`) MUST equal the output length of H. This ensures domain separation between the password and salt inputs per RFC 9106 best practices and guarantees that SWF state sizes are consistent with the selected hash algorithm.

The merkle-root field (process-proof key 4) MUST contain the Merkle tree root computed over all intermediate states. The final iteration state (state_iterations) is verified as the leaf at index "iterations" in the Merkle tree.

## Verification Protocol {#swf-verification}

The Verifier MUST:

1. Recompute Argon2id from the declared seed to obtain state_0
2. For each sampled proof in the Merkle tree, verify the sibling path against the committed root and recompute H(state_i) to compare against state_{i+1}
3. Verify the final iteration state (state_iterations) by checking its Merkle proof against the committed root (process-proof key 4, merkle-root). If the final-leaf index is not included in the Fiat-Shamir sample set, the Verifier SHOULD additionally derive or request a proof for it.

A minimum of 20 sampled proofs is REQUIRED for CORE profile. ENHANCED profile requires 50 proofs. MAXIMUM profile requires 100 proofs.

## Fiat-Shamir Sample Derivation {#fiat-shamir-sampling}

Merkle proof sample positions MUST be derived deterministically
using a Fiat-Shamir transform to prevent the Attester from
selectively including only honestly-computed leaves:

~~~
sample_seed = H(merkle_root || process-proof.input)
for j in 0..k-1:
    okm_j   = HKDF-Expand(sample_seed, I2OSP(j, 4), 4)
    index_j = OS2IP(okm_j) mod (iterations + 1)
~~~

Where k is the number of required samples (20 for CORE, 50 for
ENHANCED, 100 for MAXIMUM). HKDF-Expand is instantiated with H as
the underlying hash function per {{RFC5869}}. I2OSP
and OS2IP are the Integer-to-Octet-String and Octet-String-to-Integer
primitives as defined in {{RFC8017}}. The Attester
MUST include Merkle proofs for exactly these indices. The Verifier
recomputes the sample positions from the committed root and seed,
then verifies only those proofs.

If the derivation produces duplicate indices (index_j equal to a
previously derived index), the Attester MUST continue generating
additional indices by incrementing j beyond k-1 until k distinct
indices are obtained. The Verifier MUST verify that all k sample
indices are distinct.

Sample indices are in the range \[0, iterations\] inclusive.
Padded Merkle tree leaves (indices greater than iterations)
are never sampled by this derivation.

## SWF Seed Derivation {#swf-seed-derivation}

For `swf-argon2id` (20), the SWF seed for each
checkpoint MUST be derived as:

~~~
seed = H(
    prev-hash ||
    CBOR-encode(jitter-binding.intervals) ||
    CBOR-encode(physical-state)
)
~~~

For `swf-argon2id-entangled` (21), the Attester MUST
entangle the previous checkpoint's SWF output. The seed is
derived as:

~~~
seed = H(
    prev-hash ||
    prev-swf-output ||
    CBOR-encode(jitter-binding.intervals) ||
    CBOR-encode(physical-state)
)
~~~

Where `prev-swf-output` is the final Argon2id state
from the immediately preceding checkpoint's sequential work
function computation. This creates a strict cryptographic
dependency chain: each checkpoint's SWF cannot begin until the
previous checkpoint's SWF has completed.

For the first checkpoint (sequence = 1), both modes use:

~~~
seed = H(
    CBOR-encode(document-ref) ||
    initial-jitter-sample
)
~~~

Where initial-jitter-sample is a minimum 32-byte sample of
behavioral entropy collected before the first checkpoint.
When jitter-binding and physical-state are absent (CORE profile
without behavioral data), the seed MUST incorporate at least
the prev-hash and a locally-generated 32-byte random nonce:
seed = H(prev-hash \|\| local-nonce). For the first
checkpoint, the nonce provides non-determinism when
initial-jitter-sample is unavailable. Implementations MUST
NOT use a fully deterministic seed derivation.

NOTE: The test vectors in {{test-vectors}} use a
simplified fixed seed for implementation validation. Production
implementations MUST use the derivation specified above.

## Merkle Tree Construction {#merkle-tree-construction}

The SWF Merkle tree is constructed over all intermediate states
as follows:

* Leaves: state_i for i in 0..iterations, where leaf-index = i
  and leaf-value = state_i. The total number of leaves is
  (iterations + 1).
* Internal nodes: H(left_child \|\| right_child)
* Tree structure: binary Merkle tree. If the number of leaves
  is not a power of 2, the tree is padded by duplicating the
  last leaf until the count reaches the next power of 2.
* The Merkle root is stored in process-proof.merkle-root (key 4).

The final iteration state (state_iterations) is the leaf at
index "iterations" and is verified by checking its Merkle proof
against the committed root.

## Mandatory SWF Parameters {#mandatory-swf-params}

Conforming Attesters MUST use the following minimum SWF parameters
for each Evidence Content Tier:

| Parameter | CORE | ENHANCED | MAXIMUM |
|---|---|---|---|
| time-cost (t) | 1 | 1 | 1 |
| memory-cost (m, KiB) | 65536 | 65536 | 131072 |
| parallelism (p) | 1 | 1 | 1 |
| iterations | 10000 | 50000 | 100000 |
| Merkle samples (k) | 20 | 50 | 100 |

Verifiers MUST reject Evidence where declared proof-params are
below the mandatory minimums for the claimed content tier.
Expected wall-clock times for the Argon2id phase on reference
hardware (DDR4, approximately 25 GB/s memory bandwidth):
CORE approximately 50-100ms, ENHANCED approximately 50-100ms,
MAXIMUM approximately 100-200ms. The subsequent hash iterations
add approximately 0.1ms per 1000 iterations.

## Entangled MAC Computation {#entangled-mac-computation}

When present, the entangled-mac field (checkpoint key 12) MUST be
computed as HMAC-H {{RFC2104}} with the following
inputs:

~~~
mac-key  = HKDF-Expand(process-proof.merkle-root,
                       "PoP-entangled-mac", hash_len)
mac-input = prev-hash || content-hash ||
            CBOR-encode(jitter-binding) ||
            CBOR-encode(physical-state)
entangled-mac = HMAC-H(mac-key, mac-input)
~~~

Where HKDF-Expand is defined in {{RFC5869}},
\|\| denotes concatenation, and CBOR-encode produces deterministic
CBOR per Section 4.2.1 of {{RFC8949}}.

NOTE: In the adversarial Attester model, the Attester generates
the SWF output and therefore knows the MAC key. The entangled-mac
provides internal consistency binding but does NOT prevent forgery
by a malicious Attester (see {{sec-mac-limitations}}).

## Jitter Seal Computation {#jitter-seal-computation}

When present, the jitter-seal field (jitter-binding key 3) MUST be
computed as HMAC-H with the following inputs:

~~~
seal-key   = HKDF-Expand(process-proof.merkle-root,
                         "PoP-jitter-seal", hash_len)
seal-input = CBOR-encode(jitter-binding.intervals)
jitter-seal = HMAC-H(seal-key, seal-input)
~~~

The jitter-seal binds the timing measurements to the checkpoint's
SWF computation, preventing transplantation of jitter data from a
different session. It is subject to the same adversarial Attester
limitation as the entangled-mac ({{sec-mac-limitations}}).

NOTE: In the adversarial Attester model, the Attester generates both the SWF
output (from which the MAC key is derived) and the MAC input data. The
entangled-mac and jitter-seal therefore provide data integrity binding but
do not prevent an adversarial Attester from computing MACs over fabricated
data. Their security value is limited to ensuring internal consistency
within an honestly-generated checkpoint. See {{security-considerations}}.

## Security Bound {#swf-security}

An adversary who skips fraction f of iterations will be detected with probability 1-(1-f)^k where k is the number of sampled proofs. With k=20 and f=0.1, detection probability exceeds 0.878. With k=100 and f=0.05, detection probability exceeds 0.994.

This bound holds under the random oracle model for the selected
hash function H. The Attester commits to the Merkle root before
sample positions are derived via the Fiat-Shamir transform. Finding
a root that biases all k samples away from skipped iterations
requires inverting H, which is computationally infeasible under
standard assumptions.

## Hardware-Anchored Time (HAT) {#hat}

In T3/T4 tiers, the AE MUST anchor the SWF seed to the TPM Monotonic Counter. This prevents "SWF Speed-up" attacks by ensuring that the temporal proof is bound to the hardware's internal perception of time.

# IANA Considerations {#iana-considerations}

This document requests the following IANA registrations:

## CBOR Tags {#iana-cbor-tags}

This document requests registration of two CBOR tags in the
"CBOR Tags" registry per RFC 8949, Section 9.2:

Tag 1129336656:

Tag:
: 1129336656

Data Item:
: map

Semantics:
: PoP Evidence Packet (see {{wire-format}} of this document)

Point of Contact:
: David Condrey (david@writerslogic.com)

Description of Semantics:
: \[this document\]

Tag 1129791826:

Tag:
: 1129791826

Data Item:
: map

Semantics:
: PoP Attestation Result (see {{PoP-Appraisal}})

Point of Contact:
: David Condrey (david@writerslogic.com)

Description of Semantics:
: \[this document\], {{PoP-Appraisal}}

## SMI Private Enterprise Number {#iana-smi-pen}

No SMI Private Enterprise Number is required by this specification's
wire format. WritersLogic Inc has requested PEN 65074 for
organizational identification purposes only.

## EAT Profile {#iana-eat-profile}

Registration of the EAT profile URI: urn:ietf:params:rats:eat:profile:pop:1.0

## Media Types {#iana-media-types}

This document requests registration of the following media
types per RFC 6838:

application/cpop+cbor:

Type name:
: application

Subtype name:
: cpop+cbor

Required parameters:
: none

Optional parameters:
: none

Encoding considerations:
: binary (CBOR)

Security considerations:
: See {{security-considerations}} of this document

Interoperability considerations:
: See {{wire-format}} of this document

Published specification:
: \[this document\]

Person and email address to contact:
: David Condrey (david@writerslogic.com)

application/cwar+cbor:

Type name:
: application

Subtype name:
: cwar+cbor

Required parameters:
: none

Optional parameters:
: none

Encoding considerations:
: binary (CBOR)

Security considerations:
: See {{PoP-Appraisal}}

Interoperability considerations:
: See {{PoP-Appraisal}}

Published specification:
: \[this document\], {{PoP-Appraisal}}

Person and email address to contact:
: David Condrey (david@writerslogic.com)

## TLS Exporter Label {#iana-tls-exporter}

This document registers the following TLS exporter label in the
"TLS Exporter Labels" registry defined in {{RFC5705}}:

Value:
: EXPORTER-PoP-channel-binding

DTLS-OK:
: Y

Recommended:
: Y

Reference:
: \[this document\]

# Security Considerations {#security-considerations}

This section provides security analysis following {{RFC3552}} guidelines. The threat model is defined in {{threat-model}} with the adversarial Attester as the primary threat actor. Detailed forensic security analysis is provided in {{PoP-Appraisal}}.

## Primary Threat: Adversarial Attester {#sec-primary-threat}

Unlike traditional remote attestation where external adversaries threaten system integrity, PoP's primary threat is the Attester operator themselves. The author controls the Attesting Environment and has incentive to claim authenticity for AI-generated or assisted content.

This threat model inversion has fundamental implications:

* Software-only attestation (T1) provides minimal assurance since the Attester controls all software
* Cryptographic proofs must be bound to physical constraints the Attester cannot circumvent
* Behavioral entropy must be economically expensive to forge, not merely cryptographically secure
* Trust in Evidence scales with the Attestation Tier and the cost of bypassing its guarantees

## Retype Attack Defenses {#sec-retype-defense}

The retype attack (see {{retype-attack}}) is the canonical forgery vector. Defenses are layered:

Cognitive Load Correlation (CLC):
: Verifiers analyze correlation between content complexity and typing cadence as specified in {{PoP-Appraisal}}.

Error Topology Analysis:
: Authentic authoring produces characteristic error patterns: corrections localized near recent insertions, deletion-to-insertion ratios consistent with human cognitive models {{Salthouse1986}}, and fractal self-similarity in revision patterns. Retyping produces either unnaturally low error rates or randomly distributed artificial errors.

Temporal Cost:
: Even successful retype attacks require real-time effort. A 5,000-word document with 10-second checkpoint intervals requires 8+ hours of continuous typing effort to forge. The attack does not scale economically for high-volume forgery.

Relying Parties SHOULD be aware that retype attacks remain viable for short documents or high-value targets willing to invest real time. PoP provides graduated assurance proportional to document length and checkpoint density.

## Relay and Replay Attack Defenses {#sec-relay-replay}

As defined in {{replay-attack}} and {{relay-attack}}, these attacks are defeated through Physical Freshness anchors binding Evidence to non-reproducible physical state:

* Thermal trajectories captured during SWF computation cannot be replayed
* Kernel entropy pool deltas are bound to specific execution moments
* Out-of-band presence challenges (QR scans) verify real-time physical proximity

Verifiers MUST reject Evidence where physical freshness markers are stale, inconsistent with timestamps, or exhibit patterns suggesting simulation.

## SWF Acceleration Defenses {#sec-swf-speedup}

As analyzed in {{swf-acceleration}}, specialized hardware attacks are mitigated by:

* *Memory-hardness:* Argon2id computation is bounded by memory bandwidth (approximately 50 GB/s for DDR5), not ALU throughput. ASICs provide minimal advantage.
* *Hardware-Anchored Time (T3/T4):* SWF seeds are bound to TPM monotonic counters, preventing time compression even with faster computation.
* *Merkle sampling:* Skipping SWF iterations is detected probabilistically. With k=100 samples, skipping 5% of iterations has >99.4% detection probability.

## Trust Gradation by Tier {#sec-tier-trust}

Relying Parties SHOULD interpret Evidence according to its Attestation Tier:

T1 (Software-Only):
: Provides temporal ordering and content binding only. Adversarial Attester can forge all behavioral claims. Suitable only for low-stakes applications or as supplementary evidence.

T2 (Attested Software):
: Adds platform attestation hooks but degrades gracefully. Provides moderate assurance against casual forgery but not determined adversaries.

T3 (Hardware-Bound):
: Signing keys are hardware-protected. Forgery requires physical access to the Secure Element. Provides strong assurance for most applications.

T4 (Hardware-Hardened):
: Anti-tamper evidence and PUF binding. Forgery requires invasive hardware attacks. Suitable for high-stakes legal or financial applications.

## Forgery Cost Bounds {#sec-economic-bounds}

Implementations SHOULD report quantified forgery cost estimates in Attestation Results. For CORE profile (10,000 iterations, m=65536 KiB):

* Sequential computation time: Argon2id with t=1, m=65536 KiB requires approximately 50-100ms on consumer hardware (DDR4, ~25 GB/s memory bandwidth). The subsequent hash iterations add negligible time (<1ms for 10,000 iterations).
* Memory requirement: 64 MiB per concurrent chain
* Energy cost per checkpoint: approximately $0.00001 USD at consumer electricity rates

These costs are low for individual checkpoints. Security derives from the
conjunctive requirement across many checkpoints: an adversary must sustain
consistent behavioral entropy, temporal ordering, and physical state data
across the entire chain. The forgery cost scales superlinearly with
checkpoint count due to session consistency requirements.

## Denial of Service {#sec-dos}

SWF verification is asymmetric: Merkle-sampled proofs verify in O(k * log n) versus O(n) generation. Verifiers cannot be overwhelmed by expensive verification requests. Implementations SHOULD implement rate limiting on Evidence submission.

## MAC Field Security Limitations {#sec-mac-limitations}

The entangled-mac and jitter-seal fields are HMAC values keyed from
the SWF output. In the adversarial Attester model, the Attester
generates the SWF output and therefore knows the MAC key. An
adversarial Attester can compute valid MACs over fabricated data
(synthetic jitter, manufactured physical state). These fields provide
internal consistency checking but do NOT prevent forgery by the
Attester. Their value is limited to:

* Binding data fields to the SWF computation within an honestly-generated checkpoint
* Providing internal consistency verification (note: the MAC keys are derivable from the public merkle-root field; these MACs do not provide third-party tamper detection)
* In T3/T4 tiers, the packet-level hardware-bound signature (see {{attester-state-machine}}) provides the actual integrity guarantee

## Physical Freshness by Tier {#sec-physical-freshness-tiers}

In T1 (Software-Only) and T2 (Attested Software) tiers, the Attester
controls all software including the operating system. Physical state
readings (thermal trajectories, kernel entropy deltas) are obtained
from OS interfaces that the adversarial Attester can intercept or
fabricate. Verifiers MUST NOT treat physical-state or physical-liveness
fields as evidence of physical freshness in T1/T2 Evidence Packets.
Their value in these tiers is limited to increasing the dimensionality
of data that an adversary must fabricate consistently.

Physical freshness provides meaningful anti-replay protection only in
T3/T4 tiers where hardware attestation binds physical state readings
to a trusted execution environment.

## Implementation Security Requirements {#sec-implementation-requirements}

Conforming implementations MUST:

* Use constant-time comparison for all cryptographic operations
* Zero sensitive memory (keys, jitter data) after use
* Validate all input lengths and formats before processing
* Reject Evidence with inconsistent internal state (e.g., checkpoint-hash verification failure)

T3/T4 implementations MUST additionally:

* Store signing keys exclusively in hardware Secure Elements
* Bind SWF seeds to TPM monotonic counters
* Verify platform integrity before Evidence generation

## Signing Key Lifecycle and Rotation {#sec-key-rotation}

For T1/T2 tiers where signing keys are software-managed, the
Attester SHOULD implement a key rotation policy to limit the
impact of key compromise. The following normative guidelines
apply:

1. *Rotation frequency:* Software-managed signing keys
   SHOULD be rotated at least every 90 days or after generating
   10,000 Evidence Packets, whichever comes first. Attesters
   MAY rotate more frequently.
2. *Key binding:* Each Evidence Packet's COSE_Sign1
   envelope identifies the signing key. When a key is rotated,
   the Attester MUST begin using the new key for all subsequent
   Evidence Packets. Evidence Packets MUST NOT be re-signed
   with a new key after initial generation.
3. *Key continuity:* To allow Verifiers to validate
   older Evidence Packets, the Attester SHOULD publish a key
   history document (format out of scope) linking retired
   public keys to their validity periods. Verifiers MUST
   accept Evidence signed with a retired key if the Evidence
   Packet's created timestamp falls within the key's validity
   period.
4. *Compromise response:* If a signing key is
   suspected compromised, the Attester MUST immediately cease
   using it and SHOULD publish a revocation. Evidence Packets
   signed with a compromised key after the suspected
   compromise date SHOULD be treated as inconclusive by
   Verifiers.

For T3/T4 tiers, key management is governed by the hardware
Secure Element's lifecycle. Key rotation in hardware tiers
typically requires device re-provisioning, which is outside
the scope of this specification.

# Privacy Considerations {#privacy-considerations}

This section addresses privacy in accordance with {{RFC6973}}.

## Data Minimization {#priv-minimization}

PoP Evidence Packets do not contain document content. Content binding uses cryptographic hashes (H, as selected by hash-algorithm) which are computationally irreversible. The author-salted mode (hash-salt-mode=1) provides additional protection by preventing rainbow-table correlation across documents.

## Behavioral Fingerprinting {#priv-fingerprinting}

Jitter sequences in ENHANCED and MAXIMUM profiles constitute behavioral biometrics. To protect author privacy, Verifiers are expected to:

* Discard jitter data after the verification session completes
* Avoid correlating jitter across multiple Evidence Packets to prevent author deanonymization
* Use jitter data solely for authenticity verification

Attesters SHOULD quantize jitter values to reduce fingerprinting precision while preserving statistical validity. A minimum quantization of 5ms is RECOMMENDED.

## Physical State Leakage {#priv-physical-leakage}

Thermal trajectories and kernel entropy deltas in the physical-state field may reveal information about the Attester's hardware configuration. Implementations SHOULD normalize thermal data to relative deltas rather than absolute values to prevent device fingerprinting.

## Unlinkability {#priv-unlinkability}

Authors who wish to remain pseudonymous SHOULD use per-document signing keys and the author-salted content binding mode to prevent cross-document linkage.

## Privacy Budget {#priv-budget}

Each Evidence Packet released by an Attester discloses
behavioral telemetry that incrementally reduces the author's
anonymity set. Attesters SHOULD maintain an accounting of
cumulative privacy exposure and enforce budgetary limits
on high-fidelity data disclosure:

Jitter resolution:
: Attesters SHOULD default to the coarsest quantization
  (5ms) that satisfies the target content tier's entropy
  threshold. Finer resolution (1ms) SHOULD only be emitted
  when explicitly required by the Verifier's appraisal
  policy and the author has consented to the increased
  disclosure.

Physical-state detail:
: CORE and ENHANCED profiles SHOULD omit per-checkpoint
  physical-state (key 11) unless required by the deployment's
  appraisal policy. When included, thermal values MUST be
  normalized to relative deltas.

Session-level budget:
: Attesters SHOULD track the cumulative number of Evidence
  Packets generated for a given author identity (or signing
  key). When the cumulative count exceeds 1,000 packets with
  the same behavioral source, the Attester SHOULD warn the
  author that cross-document stylometric correlation risk is
  elevated and SHOULD recommend key rotation and increased
  jitter quantization.

Selective disclosure:
: When the Relying Party's trust requirements are satisfied
  by a lower content tier, the Attester SHOULD generate
  Evidence at the lowest tier sufficient for the use case,
  minimizing the behavioral data emitted.

--- back

# SWF Test Vectors {#test-vectors}
{:numbered="false"}

The following test vectors validate SWF implementations.

NOTE: These test vectors use SHA-256 (hash-algorithm value 1) and the construction from this specification revision. The salt is derived as H("PoP-salt" \|\| seed) where H is SHA-256 for these vectors. Implementers should verify their Argon2id output matches state_0 before proceeding with hash iterations.

~~~
Seed: "witnessd-genesis-v1"
Seed (hex): 7769746e657373642d67656e657369732d7631
Salt: H("PoP-salt" || seed)  [H = SHA-256 for this vector]

Argon2id Parameters:
  Time Cost (t): 1
  Memory Cost (m): 65536 KiB
  Parallelism (p): 1
  Output Length: 32 bytes

Iterations: 10,000

Salt (hex): c5de0ba53fa83ab477ead9013bfca978
             339e5072882cafb3d0efc8cc40299155

Intermediate States:
  state_0 (Argon2id):
    a40e0f73832f88dc8bfe5f8956fff4a0
    ad2fc4de5455e9d85497c6083b3b1802
  state_1000:
    c727ead9631eef95ca9a5976a947f71a
    6f4f29a5c80aa2dc7f120f9a4193d7b4
  state_5000:
    d6cba1225d1a2d25dddecfcf2d473020
    a19df736878f40ccdfb9334df5af58a5
  state_9999:
    d7482a780c9e89c787f1ff1e2c566b7b
    536260e37d24c539e46de1598321aea2
  state_10000 (final):
    e445a3cdc8152d66c71366d22b2c5975
    cff4d0c8ee6ec0e76515b04d143bd148
~~~

# Acknowledgements {#acknowledgements}
{:numbered="false"}

The author thanks the participants of the RATS working group for
their ongoing work on remote attestation architecture and security
considerations that informed this specification.
