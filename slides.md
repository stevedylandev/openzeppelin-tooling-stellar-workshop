---
author: Steve Simkins
title: "**OpenZeppelin Monitor and Relayer on Stellar**"
date: 2025-09-04
theme:
  name: terminal-dark
---

Hey there! 👋 My name is Steve
===
<!-- list_item_newlines: 2 -->

* Developer Relations at OpenZeppelin
* Fan of Developer Tools
* Find me with @stevedylandev

<!-- end_slide -->

What is OpenZeppelin?
===

<!-- list_item_newlines: 2 -->

* Founded in 2016
* Pioneered blockchain security standards
* Primary focus now is Smart Contracts, Tools, and Security Audits

<!-- end_slide -->

Monitor and Relayer
===

<!-- list_item_newlines: 2 -->

* They do exactly what you would think: monitor and relay transactions
* Backend services
* Monitor watch and trigger alerts or actions 
* Relayer run in a server and relay transactions

<!-- end_slide -->

Requirements
===

<!-- list_item_newlines: 2 -->

* Git
* Rust
* Docker (recommend)

<!-- end_slide -->

Monitors
===

<!-- list_item_newlines: 2 -->

- Run the [Automated Setup](https://docs.openzeppelin.com/monitor/1.0.x/quickstart)
  - Clone the repo
  - Copy the `.env.example` to `.env`
  - Run `bash setup_and_run.sh`
- This will create an `openzeppelin-monitor` binary which you can run to start up the monitor

<!-- end_slide -->


# Update Configs

<!-- list_item_newlines: 2 -->

- `networks` - Configure chain network and how to listen to it
- `filters` - Match filter scripts to determine what blocks get processed
- `monitors` - Configure what to listen to and what to do when a condition is met
- `triggers` - Actions you can take based on an event from the monitor

<!-- end_slide -->

# Example

<!-- list_item_newlines: 2 -->

- Network setup for stellar testnet
- Filters set to default for stellar
- Monitor setup to listen to counter contract and trigger webhook notification when counter goes up

<!-- end_slide -->

Relayers
===

<!-- list_item_newlines: 2 -->

- Follow the [Quickstart](https://docs.openzeppelin.com/relayer/1.1.x/quickstart)
  - Clone the repo
  - `cd` into `examples/basic-example`
  - Copy the `.env.example` to `.env`
  - Create a signer
```bash
cargo run --example create_key -- \
  --password <DEFINE_YOUR_PASSWORD> \
  --output-dir config/keys \
  --filename local-signer.json
```
  - Generate two UUIDs for the `API_KEY` and `WEBHOOK_SIGNING_KEY`
  - Update `.env` with the two UUIDs and the password for the signer generated
  - Update the `config/config.json` file with a webhook url
  - Run the docker command to start `docker compose -f docker-compose.yaml up`

<!-- end_slide -->

# Example

<!-- list_item_newlines: 2 -->

- Use API to list our Relayers
- Get balane of a Relayer
- Execute a transaction with a Relayer

<!-- end_slide -->

Practical Applications
===

Since scripts can be customized wiht Bash, Python, or Javascript, the real unlock with Monitors and Relayers is how you use them together

<!-- list_item_newlines: 2 -->

- Monitor a contract for suspicious activity or a loss of funds and Relay a transaction to pause it
- Monitor balance in a liquidity pool and Relay a transaction to rebalance it
- Treasury dApp that sends automated disbursements or proposal payouts but also monitors for unusual activity

<!-- end_slide -->

Resources
===

<!-- list_item_newlines: 2 -->

- Monitor Docs - [](https://docs.openzeppelin.com/monitor/)
- Monitor Repo - [](https://github.com/OpenZeppelin/openzeppelin-monitor)
- Relayer Docs - [](https://docs.openzeppelin.com/relayer/)
- Relayer Repo - [](https://github.com/OpenZeppelin/openzeppelin-relayer)
- This Example Repo - [](https://github.com/stevedylandev/openzeppelin-tooling-stellar-workshop)

<!-- end_slide -->

<!-- alignment: center -->
<!-- new_lines: 10 -->
Thank you!
