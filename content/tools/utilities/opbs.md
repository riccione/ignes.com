---
title: OPBS
description: Open Pickle Backup System — block-level disk imaging with differential chains, AES-256-GCM encryption, and read-only mounts for Windows.
categories: ["Utilities"]
tags: ["backup", "disk-imaging", "restore", "encryption"]
platform: ["Windows"]
license: GPL-3.0
website: https://bobeire.github.io/opbs/
github: https://github.com/bobeire/opbs
replaces: ["Macrium Reflect"]
---

{{< tool-info >}}

## Key Features

* Block-level imaging with per-block CRC-32 integrity checking.
* AES-256-GCM encryption with PBKDF2-SHA256 key derivation.
* Incremental chains — store only changed blocks via CRC-matching.
* Read-only mounts of image partitions as drive letters via WinFsp.
* Headless CLI for scripted backup, restore, verify, and prune.
