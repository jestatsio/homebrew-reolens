# homebrew-reolens

Homebrew tap for [Reolens](https://reolens.io) — a modern, native macOS client for Reolink cameras and NVRs.

## Install

```sh
brew tap jestatsio/reolens
brew install --cask reolens
```

Updates after the first install are handled by Sparkle inside the app — you don't need `brew upgrade`.

## What's in this tap

- `reolens` — the macOS app (signed, notarized DMG from [the latest GitHub release](https://github.com/jestatsio/reolens/releases/latest))

## Updating the cask

When a new version of Reolens ships:

1. The release workflow on `jestatsio/reolens` builds a notarized DMG and publishes a GitHub Release.
2. Bump `version` and `sha256` in [Casks/reolens.rb](Casks/reolens.rb) — the SHA is in the release notes / `.sha256` sidecar file.
3. Commit, push. Users running `brew upgrade --cask reolens` will pick it up; users with the app already running will be offered the update by Sparkle directly.

## Source

The cask formula is mastered in [jestatsio/reolens](https://github.com/jestatsio/reolens) at `dist/homebrew/reolens.rb`. This tap is a publish target.
