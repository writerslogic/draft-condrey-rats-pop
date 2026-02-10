# IETF RATS Proof of Process

Internet-Drafts for Proof of Process (PoP), an evidence framework built on the RATS architecture (RFC 9334) for digital authorship attestation.

## Documents

| Document | Title |
|----------|-------|
| draft-condrey-rats-pop | Proof of Process: An Evidence Framework for Digital Authorship Attestation |
| draft-condrey-rats-pop-aggregation | Succinct Evidence Aggregation Extension |
| draft-condrey-rats-pop-collaborative | Collaborative Authorship Extension |
| draft-condrey-rats-pop-schema | CDDL Schema Definition |
| draft-condrey-rats-pop-examples | Worked Examples |
| draft-condrey-rats-witnessd-enrollment | Trust Anchor Bootstrap Protocol |
| draft-condrey-rats-witnessd-revocation | Evidence Status and Revocation Protocol |

## Building

Requires [xml2rfc](https://xml2rfc.tools.ietf.org/) and `xmllint`.

```sh
# Build all text and HTML outputs
make all

# Validate XML
make lint

# Run idnits checks
make idnits

# Clean generated files
make clean
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) and the [IETF contribution guidelines](https://www.ietf.org/about/participate/).
