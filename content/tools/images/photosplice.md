---
title: PhotoSplice
description: Desktop image editor faithfully replicating classic Adobe Photoshop, with 1:1 native PSD/PSB compatibility.
categories: ["Images & Media"]
tags: ["image-editor", "photoshop", "psd", "rust"]
platform: ["Windows", "macOS", "Linux", "Web"]
license: MIT OR Apache-2.0
website: https://photosplice.com
github: https://github.com/eolix/photosplice
replaces: ["Adobe Photoshop"]
foss_alternatives: ["PhotoCraft", "GIMP"]
aliases: ["/tools/images/photosuite/"]
---

{{< tool-info >}}

## Key Features

* PSD/PSB as the native format — clean round-trips through the binary format.
* Native and offline — egui on wgpu, no Electron, no account, no telemetry.
* Fidelity over reinterpretation — if you know Photoshop ~CS6, you already know PhotoSplice.
* Camera Raw and lens correction with Lensfun-backed profiles.
* Actions, batch events, JSON control channel, and sandboxed WebAssembly plug-ins.
* Live web app available in the browser at photosplice.com/web.
