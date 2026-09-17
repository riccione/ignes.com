---
title: Hermes OTP
description: CLI OTP (One-Time Password) manager designed for pipelines and automation, built with Rust.
categories: ["Security"]
tags: ["otp", "totp", "2fa", "cli", "security", "Linux", "macOS", "Windows"]
license: MIT
website: https://github.com/riccione/hermes-otp
github: https://github.com/riccione/hermes-otp
replaces: ["Google Authenticator", "Authy"]
foss_alternatives: ["KeePassXC"]
---

{{< tool-info >}}

## Key Features

* CLI-based TOTP code generation ideal for scripting and CI/CD pipelines.
* JSON output format for machine-readable integration.
* Import/export of OTP records via otpauth:// URIs and JSON backup files.
* Encrypted storage of OTP secrets with fuzzy search support.
