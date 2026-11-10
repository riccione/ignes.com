---
title: Watchflare
description: Self-hosted host monitoring with real-time metrics, package inventory, and alerts from a single Hub and lightweight agents.
categories: ["Monitoring"]
tags: ["monitoring", "self-hosted", "metrics", "alerts"]
platform: ["Linux", "macOS", "Web"]
license: AGPL-3.0
website: https://watchflare.io/
github: https://github.com/watchflare-io/watchflare
replaces: ["PRTG Network Monitor", "Datadog", "New Relic", "Nagios XI"]
foss_alternatives: ["Beszel", "Glances", "Netdata", "Dashdot", "Homepage"]
---

{{< tool-info >}}

## Key Features

* Real-time streaming of CPU, memory, disk, network, load, temperature, and swap metrics.
* Package inventory across roughly 30 package managers, with outdated and security flags.
* Per-container CPU, memory, and network metrics via the Docker or Podman API.
* Threshold alerts with email and webhook notifications, plus host-offline detection.
* Secure by default with TLS 1.3, signed gRPC, JWT sessions, and agent buffering when the Hub is offline.

## Project Status

Watchflare is early-stage software: a pre-1.0 project with a very small community and a single maintainer, so treat it as promising but unproven.

## Personal Note

I spent about 20 minutes trying to get this working on my own, but had no success and ultimately gave up. The project appears to be largely AI-generated, so I'd recommend approaching it with caution.
