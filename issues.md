# Verified Issues — draft-condrey-rats-pop

Reviewed against:
- `draft-condrey-rats-pop-protocol.md` (2169 lines)
- `draft-condrey-rats-pop-appraisal.md` (1407 lines)
- `cddl/witnessd-pop.cddl` (409 lines)

Cross-referenced with IETF RATS WG documents:
- [RFC 9334](https://datatracker.ietf.org/doc/rfc9334/) — RATS Architecture
- [RFC 9711](https://datatracker.ietf.org/doc/rfc9711/) — Entity Attestation Token (EAT)
- [RFC 9782](https://www.rfc-editor.org/rfc/rfc9782.html) — EAT Media Types
- [draft-ietf-rats-ear-01](https://datatracker.ietf.org/doc/draft-ietf-rats-ear/) — EAT Attestation Results
- [draft-ietf-rats-ar4si-09](https://datatracker.ietf.org/doc/draft-ietf-rats-ar4si/) — Attestation Results for Secure Interactions
- [draft-sardar-rats-sec-cons-00](https://datatracker.ietf.org/doc/draft-sardar-rats-sec-cons/) — RATS Security Considerations Guidelines
- [draft-ietf-rats-reference-interaction-models-15](https://datatracker.ietf.org/doc/draft-ietf-rats-reference-interaction-models/) — Reference Interaction Models
- [draft-ietf-rats-msg-wrap-23](https://datatracker.ietf.org/doc/draft-ietf-rats-msg-wrap/) — RATS Conceptual Messages Wrapper (CMW)
- [draft-ietf-rats-corim-09](https://datatracker.ietf.org/doc/draft-ietf-rats-corim/) — Concise Reference Integrity Manifest

---

## Resolution Summary

### Overall Totals

| Status | Count | Details |
|--------|-------|---------|
| **RESOLVED** | 160 | Fixes fully implemented in current revision |
| **PARTIAL** | 3 | Some aspects fixed, others remain or acceptable as-is |
| **UNRESOLVED** | 1 | Not yet addressed |
| **DEFERRED** | 6 | Architectural issues deferred to future revision |

**Grand Total: 170 issues tracked. 4 remaining open (PARTIAL + UNRESOLVED). 6 deferred. 160 resolved.**

### Original Issues (1-105)

| Status | Count |
|--------|-------|
| RESOLVED | 95 |
| PARTIAL | 3 |
| UNRESOLVED | 1 |
| DEFERRED | 6 |

### New Issues (106-153)

| Status | Count |
|--------|-------|
| RESOLVED | 48 |
| PARTIAL | 0 |
| UNRESOLVED | 0 |

### Issues Added This Revision (154-170)

| Status | Count |
|--------|-------|
| RESOLVED | 17 |
| PARTIAL | 0 |
| UNRESOLVED | 0 |

---

## Original Issues Status Table (1-105)

| # | Status | Brief |
|---|--------|-------|
| 1 | DEFERRED | WAR→EAR conformance (architectural redesign) |
| 2 | RESOLVED | WAR CDDL added to appraisal |
| 3 | DEFERRED | SWF sequential hardness redesign |
| 4 | RESOLVED | Fiat-Shamir sample derivation added |
| 5 | DEFERRED | Verifier-originated freshness mechanism |
| 6 | RESOLVED | Rate-based entropy threshold (3.0 bits/IKI) |
| 7 | RESOLVED | Entangled-MAC computation specified |
| 8 | RESOLVED | Jitter-seal computation specified |
| 9 | RESOLVED | Merkle tree construction defined |
| 10 | RESOLVED | process-proof key 4 = merkle-root |
| 11 | RESOLVED | Hash chain genesis defined (SHA-256 of document-ref) |
| 12 | RESOLVED | SWF seed derivation specified |
| 13 | RESOLVED | COSE_Sign1 evidence protection added |
| 14 | RESOLVED | Checkpoint keys 10-12 made optional |
| 15 | RESOLVED | sha256-chain value 1 reserved |
| 16 | RESOLVED | Extension fields `* int => any` added |
| 17 | RESOLVED | Honest forgery cost benchmarks |
| 18 | RESOLVED | MAC limitations acknowledged in Security Considerations |
| 19 | RESOLVED | Physical freshness tier caveats added |
| 20 | DEFERRED | COSE/CWT/CMW wrapping (tied to Issue 1) |
| 21 | DEFERRED | Endorser/RVP operationalization (out of scope) |
| 22 | RESOLVED | EAT security level mapping table added |
| 23 | RESOLVED | RATS applicability section merged into compatibility |
| 24 | RESOLVED | Session Consistency Analysis added |
| 25 | RESOLVED | Behavioral thresholds added to normative body |
| 26 | RESOLVED | CLC threshold reconciled (r > 0.2) |
| 27 | RESOLVED | Orthogonal tier axes clarification added (protocol:443-449) |
| 28 | RESOLVED | content-tier CDDL enum added |
| 29 | RESOLVED | Mandatory SWF Parameters table added |
| 30 | RESOLVED | Checkpoint interval normatively specified (10-120s) |
| 31 | RESOLVED | PoP-Protocol moved to Normative in appraisal |
| 32 | RESOLVED | CBOR tag wrappers in CDDL |
| 33 | RESOLVED | Feature 60 added to profile table; CDDL enum deferred |
| 34 | RESOLVED | device-signature COSE_Sign1 specified in prose |
| 35 | RESOLVED | Verification step 5 rewritten |
| 36 | RESOLVED | physical-liveness vs physical-state explained |
| 37 | PARTIAL | verifier-signature still bare `bstr` in CDDL |
| 38 | RESOLVED | evidence-ref changed to hash-value |
| 39 | RESOLVED | [0.5x, 3.0x] timing tolerance specified |
| 40 | RESOLVED | Chain break → invalid verdict |
| 41 | RESOLVED | Independent entropy estimation required |
| 42 | RESOLVED | Entropy report computation defined |
| 43 | RESOLVED | Argon2id salt = SHA-256("PoP-salt" || seed) |
| 44 | RESOLVED | Salt-commitment scheme specified |
| 45 | RESOLVED | Attestation-tier derivation logic added |
| 46 | RESOLVED | RFC 5705 in Normative References |
| 47 | RESOLVED | Steps 3-4 conditional on field presence |
| 48 | DEFERRED | C_entropy set conservatively to 0; no concrete methodology |
| 49 | UNRESOLVED | Test vectors all TBD (requires running Argon2id) |
| 50 | RESOLVED | RATS-Models reference added |
| 51 | RESOLVED | Abstract acronyms expanded |
| 52 | RESOLVED | submissionType changed to "independent" in both files |
| 53 | RESOLVED | Appendix MUST language removed |
| 54 | RESOLVED | Manual appendix numbering removed |
| 55 | RESOLVED | Postal elements separated |
| 56 | RESOLVED | RFC 3552/6973 moved to Informative |
| 57 | RESOLVED | Cross-reference uses xref |
| 58 | RESOLVED | Tool Receipt consumer-side normative; provider-side deferred to companion |
| 59 | RESOLVED | absence-claim structured type |
| 60 | RESOLVED | profile-uri value specified |
| 61 | RESOLVED | Feature ID numbering explained |
| 62 | RESOLVED | Endorser role corrected |
| 63 | PARTIAL | hash-value bstr has prose constraint but not CDDL .size |
| 64 | RESOLVED | SHA-256 mandatory-to-implement |
| 65 | RESOLVED | Section 4.2.1 reference corrected |
| 66 | RESOLVED | SEALING state per-tier specification |
| 67 | RESOLVED | Keys reserved comment updated |
| 68 | RESOLVED | TLS exporter label IANA section added |
| 69 | RESOLVED | Channel binding verification step added |
| 70 | RESOLVED | CLC language analytical in SecCons |
| 71 | RESOLVED | "WAR Results" changed to "Attestation Results" (protocol:1221) |
| 72 | RESOLVED | process-proof input/output .size 32 |
| 73 | RESOLVED | RFC 9711 moved to Informative |
| 74 | RESOLVED | "should be aware" lowercase |
| 75 | RESOLVED | binding-type CDDL enum defined |
| 76 | RESOLVED | edit-delta chars-added/deleted as uint |
| 77 | RESOLVED | physical-state entropy-delta as int (signed) |
| 78 | RESOLVED | pop-timestamp float32 required |
| 79 | PARTIAL | Units documented; type mismatch (float32 vs uint) acceptable as-is |
| 80 | RESOLVED | float32 encoding prohibition added (protocol:736-740) |
| 81 | RESOLVED | [3* checkpoint] minimum |
| 82 | RESOLVED | .size (16..256) nonce constraint |
| 83 | RESOLVED | byte-length/char-count defined (UTF-8, scalar values) |
| 84 | RESOLVED | cost-unit enum defined |
| 85 | RESOLVED | Version forward-compatibility guidance |
| 86 | RESOLVED | C_intra defined with threshold |
| 87 | RESOLVED | "per checkpoint" replaces "per segment" |
| 88 | RESOLVED | Absence Types 1 and 3 have normative requirements |
| 89 | RESOLVED | Normative density acceptable for Experimental; prose tightened |
| 90 | RESOLVED | Separate Privacy and Accessibility sections |
| 91 | RESOLVED | Sardar-RATS version -02 confirmed on datatracker |
| 92 | RESOLVED | No `<strong>` tags remain |
| 93 | RESOLVED | xml-stylesheet removed |
| 94 | RESOLVED | DOCTYPE removed |
| 95 | RESOLVED | Acknowledgements sections added |
| 96 | RESOLVED | Salthouse1986 in appraisal references |
| 97 | RESOLVED | Salthouse1986 corrected (Psychological Bulletin 99(3)) |
| 98 | RESOLVED | Terminology "1/f characteristics" changed to "motor noise patterns" |
| 99 | RESOLVED | OOB-PC separated (Attester→protocol, Verifier→appraisal) |
| 100 | RESOLVED | CBOR tag and media type IANA templates expanded |
| 101 | RESOLVED | "Evidence Packets" capitalized consistently |
| 102 | RESOLVED | "HMAC value" replaces "HMAC signature" |
| 103 | RESOLVED | "physical-liveness markers" replaces "CDCE markers" |
| 104 | RESOLVED | WAR entropy-report privacy addressed |
| 105 | RESOLVED | Terminology section added to appraisal |

---

## New Issues Status Table (106-153)

| # | Status | Brief |
|---|--------|-------|
| 106 | RESOLVED | HKDF-Expand fixed to 3-arg RFC 5869 notation |
| 107 | RESOLVED | False MAC security claim corrected |
| 108 | RESOLVED | Checkpoint computation order section added |
| 109 | RESOLVED | Reserved keys comment fixed (14-17) |
| 110 | RESOLVED | Fiat-Shamir duplicate index handling added |
| 111 | RESOLVED | Merkle proof minimum enforced via prose (20/50/100) |
| 112 | RESOLVED | Domain separation justification added |
| 113 | RESOLVED | Verification step 3 rewritten for merkle-root |
| 114 | RESOLVED | CORE seed non-deterministic requirement added |
| 115 | RESOLVED | Padded Merkle leaf sampling note added |
| 116 | RESOLVED | pop-timestamp positive value requirement added |
| 117 | RESOLVED | Extension key range >= 100 added |
| 118 | RESOLVED | COSE wrapping T3/T4 MUST, T1/T2 RECOMMENDED |
| 119 | RESOLVED | op-count semantics defined |
| 120 | RESOLVED | Hash algorithm consistency requirement added |
| 121 | RESOLVED | Privacy MUST language softened |
| 122 | RESOLVED | Random oracle model justification added |
| 123 | RESOLVED | device-signature COSE_Sign1 comment and prose |
| 124 | RESOLVED | attestation-result cross-reference added |
| 125 | RESOLVED | RFC 9266 moved to Informative |
| 126 | RESOLVED | edit-position non-zero change requirement added |
| 127 | RESOLVED | Lifecycle diagram initial jitter step added |
| 128 | RESOLVED | pop-timestamp changed to float32 in all files |
| 129 | RESOLVED | SMI PEN clarified (not required) |
| 130 | RESOLVED | workgroup changed to "Individual Submission" |
| 131 | RESOLVED | Duplicate privacy sections merged |
| 132 | RESOLVED | Appraisal CDDL preamble added (shared types noted) |
| 133 | RESOLVED | entropy-report made optional (? 7) |
| 134 | RESOLVED | Contradictory forensic flags guidance added |
| 135 | RESOLVED | Reference hardware formally defined |
| 136 | RESOLVED | Authoritative source comment added to appraisal CDDL |
| 137 | RESOLVED | Feature 60 added to protocol Profile Architecture table |
| 138 | RESOLVED | Security Considerations MUST language softened |
| 139 | RESOLVED | absence-claim field semantics prose added |
| 140 | RESOLVED | c-total sum requirement and same cost-unit requirement added |
| 141 | RESOLVED | Entropy thresholds tied to NIST SP 800-90B estimator |
| 142 | RESOLVED | absence-claim array changed to [+ absence-claim] |
| 143 | RESOLVED | Companion document statement added to appraisal intro |
| 144 | RESOLVED | RFC 9052 moved to Informative in appraisal |
| 145 | RESOLVED | merkle-root field specified in verification step |
| 146 | RESOLVED | created timestamp (key 12) added to attestation-result |
| 147 | RESOLVED | Gradual drift threshold quantified (2 std deviations) |
| 148 | RESOLVED | evidence-ref COSE wrapper exclusion clarified |
| 149 | RESOLVED | PoP-Appraisal moved to Normative References |
| 150 | RESOLVED | Forensic mechanism ordering requirement added |
| 151 | RESOLVED | RFC 5869 moved to Informative in appraisal |
| 152 | RESOLVED | Structural validation step added |
| 153 | RESOLVED | process-proof.output renamed to process-proof.merkle-root |

---

## Issues Added This Revision (154-170)

| # | Status | Brief |
|---|--------|-------|
| 154 | RESOLVED | tool-receipt CDDL type added to CDDL and protocol |
| 155 | RESOLVED | checkpoint key 13 updated to accept both receipt types |
| 156 | RESOLVED | effort-attribution type and attestation-result key 15 added |
| 157 | RESOLVED | Protocol prose for receipt types and tool-receipt semantics |
| 158 | RESOLVED | §11 Tool Receipt Protocol rewritten as normative |
| 159 | RESOLVED | Effort Attribution computation section added to appraisal |
| 160 | RESOLVED | Forensic exclusion clauses broadened to both receipt types |
| 161 | RESOLVED | Tool Receipt Validation appendix rewritten as normative |
| 162 | RESOLVED | Prose tightened across both drafts (-93 lines) |
| 163 | RESOLVED | Cross-document redundancy consolidated (-36 lines) |
| 164 | RESOLVED | Passport model diagram restored in compact form |
| 165 | RESOLVED | Salthouse1986 citation corrected (journal, volume, DOI) |
| 166 | RESOLVED | Monrose2000 DOI corrected |
| 167 | RESOLVED | Goodman2007 replaced with Monaco2018 (IEEE S&P) |
| 168 | RESOLVED | CLC naming collision resolved (informative metric renamed to CDR) |
| 169 | RESOLVED | Argon2id parallelism characterization updated per RFC 9106 |
| 170 | RESOLVED | Renamed to Cryptographic Proof of Process / Cryptographic Writers Authenticity Report |

---

## Open Issues — Ordered by Severity

### MEDIUM — Normative Precision

#### 37. WAR `verifier-signature` typed as bare `bstr` not COSE_Sign1 [PARTIAL]

**Location:** appraisal.md, cddl/witnessd-pop.cddl

**Problem:** `verifier-signature` (key 11) is `bstr` with comment "(COSE_Sign1)". No algorithm, protected headers, or key identification specified in the CDDL.

**Fix:** Specify: "The verifier-signature field MUST contain a COSE_Sign1 structure per RFC 9052. The protected header MUST include algorithm identifier (ES256 or EdDSA RECOMMENDED). The payload is the CBOR encoding of the attestation-result excluding the verifier-signature field." Add `.cbor COSE_Sign1` constraint or minimum `.size (64..8192)` to the CDDL.

---

### LOW — Acceptable As-Is

#### 63. `hash-value` bstr has no size constraint [PARTIAL]

**Location:** protocol.md, cddl/witnessd-pop.cddl

**Problem:** `hash-value` key 2 is `bstr` without `.size` constraint. Prose specifies sizes but CDDL does not enforce them.

**Fix:** CDDL cannot express variable-size constraints dependent on sibling field values. Current prose constraint is sufficient. Acceptable as-is.

---

#### 79. `claimed-duration` is float32 but `chain-duration` is uint [PARTIAL]

**Location:** protocol.md, appraisal.md

**Problem:** Evidence-side duration is float32 (sub-second per checkpoint), WAR-side is uint (whole seconds for total session). Units are documented but type inconsistency remains.

**Fix:** Acceptable as-is. float32 is appropriate for per-checkpoint sub-second durations; uint is appropriate for total session duration.

---

#### 49. Test vectors all TBD [UNRESOLVED]

**Location:** protocol.md test-vectors appendix

**Problem:** All test vectors require running Argon2id with specified parameters to produce concrete values. Cannot be resolved by text editing alone.

**Fix:** Run Argon2id with the specified parameters on reference hardware and populate the test vector tables.

---

## DEFERRED Issues (Future Revision)

The following issues are recognized but deferred to a future revision as they require architectural changes beyond the scope of the current Experimental submission:

| # | Issue | Reason for Deferral |
|---|-------|-------------------|
| 1 | WAR→EAR/AR4SI conformance | Requires complete WAR redesign; EAR spec still evolving |
| 3 | SWF sequential hardness redesign | Fundamental algorithm change; current params documented honestly |
| 5 | Verifier-originated freshness | Requires protocol message flow changes; passport model limitation |
| 20 | COSE/CWT/CMW wrapping per RATS | Tied to Issue 1 (EAR alignment) |
| 21 | Endorser/RVP operationalization | CoRIM profiling beyond current scope |
| 48 | C_entropy computation methodology | Active research area; honest "set to 0" is appropriate |

---

## RESOLVED Issues (160 of 170)

### Original Issues (95 of 105 resolved)

Issues 2, 4, 6-19, 22-36, 38-47, 50-52, 53-70, 71-78, 80-89, 90-98, 99-105 have been fully resolved in the current revision. See the Original Issues Status Table above for individual resolution notes. Notable resolutions:

- **33**: Feature 60 (assistive-mode) added to protocol Profile Architecture table as Optional for all tiers
- **58**: Tool Receipt Protocol consumer-side wire format made normative; provider-side signing protocol deferred to companion document
- **89**: Normative density addressed through prose tightening; MUST retained for interoperability-critical requirements, behavioral thresholds use SHOULD where appropriate
- **91**: Sardar-RATS version -02 confirmed to exist on IETF datatracker (HTTP 200)
- **97**: Salthouse1986 corrected to Psychological Bulletin 99(3) with updated DOI
- **98**: Terminology "1/f characteristics" changed to "motor noise patterns" in appraisal
- **100**: IANA CBOR tag registrations expanded with RFC 8949 Section 9.2 template fields; media type registrations expanded with RFC 6838 template fields

### New Issues (48 of 48 resolved)

Issues 106-153 have all been fully resolved. Key fixes implemented:

- **106**: HKDF-Expand pseudocode rewritten with correct 3-argument RFC 5869 notation
- **107**: False MAC security claim removed; honest "internal consistency only" language added
- **108**: Checkpoint Computation Order subsection added
- **109**: Reserved keys comment corrected from "12-17" to "14-17"
- **110**: Fiat-Shamir duplicate index handling specified
- **111**: Merkle proof minimums enforced via prose: 20/50/100 per tier
- **151**: RFC 5869 moved from normative to informative in appraisal (uncited in body)

### Issues Added This Revision (17 of 17 resolved)

- **154-157**: Normative tool-receipt support: CDDL types (`receipt`, `tool-receipt`, `effort-attribution`), checkpoint key 13 updated, protocol prose for receipt semantics including COSE_Sign1 payload specification and compact-ref exclusion
- **158-159**: Appraisal §11 rewritten with normative AI Tool Receipt verification steps and Effort Attribution computation section (human-fraction, unavailable-packet handling, total-chars constraint)
- **160-161**: Forensic exclusion clauses broadened from "self-receipt" to "receipt" at 4 locations; Tool Receipt Validation appendix rewritten with normative steps for both types
- **162-164**: Prose tightening (-129 net lines): merged RATS applicability into compatibility, condensed entity roles, COSE_Sign1 explanation, pop-timestamp rationale, problem statement, adversary model, clock skew justification, baseline similarity (table format), IME preamble; passport model diagram restored in compact form
- **165-169**: Citation and accuracy fixes: Salthouse1986 journal/volume/DOI corrected, Monrose2000 DOI corrected, Goodman2007 replaced with Monaco2018, CLC naming collision resolved (informative metric renamed to CDR), Argon2id parallelism characterization updated per RFC 9106 Section 7
- **170**: Framework renamed to Cryptographic Proof of Process (PoP); report renamed to Cryptographic Writers Authenticity Report (WAR) — aligning with CBOR tag mnemonics CPOP/CWAR

### CDDL Comment Sync and Cross-Reference Issues (RESOLVED)

All inline CDDL comments in protocol.md and appraisal.md have been synchronized with the standalone `cddl/witnessd-pop.cddl`:
- claimed-duration: `(seconds)` comment present in all files
- device-signature: `(MUST be COSE_Sign1)` comment in protocol and standalone CDDL
- pop-timestamp: `#6.1(float32)` with `; CBOR tag 1 (epoch-based, float32)` in all files
- verdict enum: descriptive comments in appraisal and standalone
- absence-type enum: descriptive comments in appraisal and standalone
- attestation-tier enum: tier mapping comments (T1:AAL1, T2:AAL2, T3:AAL3, T4:LoA4) in all files
- receipt types: `receipt = self-receipt / tool-receipt` with field-level comments in all files
- effort-attribution: field-level comments in appraisal and standalone CDDL

### Stale Files

The `.xml` source files (`draft-condrey-rats-pop-protocol.xml`, `draft-condrey-rats-pop-appraisal.xml`) predate the kramdown `.md` sources and need regeneration via `kramdown-rfc`.
