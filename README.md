# IETF RATS Proof of Process

Internet-Drafts for Proof of Process (PoP), an evidence framework built on the RATS architecture (RFC 9334) that enables tamper-evident, independently verifiable attestation of how digital content is produced.

## Documents

| Document | Version | Title |
|----------|---------|-------|
| [draft-condrey-rats-pop-protocol](https://datatracker.ietf.org/doc/draft-condrey-rats-pop-protocol/) | -04 | Proof of Process Protocol: State Machine, Semantic Events, and Cryptographic Parameters |
| [draft-condrey-rats-pop-appraisal](https://datatracker.ietf.org/doc/draft-condrey-rats-pop-appraisal/) | -03 | Proof of Process Appraisal: Forensic Assessment, Forgery Bounds, and Absence Proofs |

## Building

Requires [xml2rfc](https://xml2rfc.tools.ietf.org/) and `xmllint`.

```sh
make all    # Build text and HTML
make lint   # Validate XML
make clean  # Remove generated files
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) and the [IETF contribution guidelines](https://www.ietf.org/about/participate/).
