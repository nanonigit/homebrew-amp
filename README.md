# Homebrew Tap for Vibe

This repository is the official Homebrew Tap for [Vibe](https://github.com/nanonigit/Vibe), a local music library manager and player for macOS.

## Install

```bash
brew install --cask nanonigit/vibe/vibe
```

The command automatically taps this repository and installs `Vibe.app` into `/Applications`.

Vibe currently requires:

- Apple Silicon
- macOS Tahoe 26 or later

The current build is ad-hoc signed and is not notarized by Apple. If macOS blocks the first launch, open `/Applications` in Finder, Control-click Vibe, choose **Open**, and review the warning before continuing.

## Upgrade

```bash
brew update
brew upgrade --cask vibe
```

## Uninstall

```bash
brew uninstall --cask vibe
```

Library data and offline cache under `Application Support/MassiveMusic` are intentionally preserved when the app is uninstalled.

## Tap manually

The one-line install above is recommended. To add the Tap separately:

```bash
brew tap nanonigit/vibe
brew install --cask vibe
```

## Release source

The Cask downloads the versioned Apple Silicon ZIP from [Vibe GitHub Releases](https://github.com/nanonigit/Vibe/releases). Checksums are pinned in [`Casks/vibe.rb`](Casks/vibe.rb).
