# Homebrew Tap for amp

This repository is the official Homebrew Tap for [amp](https://github.com/nanonigit/amp), a local music library manager and player for macOS.

## Install

```bash
brew install --cask nanonigit/amp/amp
```

The command automatically taps this repository and installs `amp.app` into `/Applications`.

amp currently requires:

- Apple Silicon
- macOS 26.0 or later

The current build is ad-hoc signed and is not notarized by Apple. If macOS blocks the first launch, open `/Applications` in Finder, Control-click amp, choose **Open**, and review the warning before continuing.

## Upgrade

```bash
brew update
brew upgrade --cask amp
```

## Uninstall

```bash
brew uninstall --cask amp
```

Library data and offline cache under `Application Support/MassiveMusic` are intentionally preserved when the app is uninstalled.

## Tap manually

The one-line install above is recommended. To add the Tap separately:

```bash
brew tap nanonigit/amp
brew install --cask amp
```

## Release source

The Cask downloads the versioned Apple Silicon ZIP from [amp GitHub Releases](https://github.com/nanonigit/amp/releases). Checksums are pinned in [`Casks/amp.rb`](Casks/amp.rb).
