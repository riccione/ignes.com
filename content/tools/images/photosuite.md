---
title: PhotoSuite
description: Desktop image editor faithful to classic Adobe Photoshop, with native PSD/PSB compatibility and no subscription.
categories: ["Images & Media"]
tags: ["image-editor", "photoshop", "psd", "rust"]
platform: ["Windows", "macOS", "Linux"]
license: MIT OR Apache-2.0
website: https://photosuite.app
github: https://github.com/eolix/photosuite
replaces: ["Adobe Photoshop"]
foss_alternatives: ["PhotoCraft", "GIMP"]
---

{{< tool-info >}}

## Key Features

* PSD/PSB as the native format — clean round-trips through the binary format.
* Native and offline — egui on wgpu, no Electron, no account, no telemetry.
* Fidelity over reinterpretation — if you know Photoshop ~CS6, you already know PhotoSuite.
* Camera Raw and lens correction with Lensfun-backed profiles.
* Actions, batch events, JSON control channel, and sandboxed WebAssembly plug-ins.
