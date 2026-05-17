# Reolens Homebrew cask.
#
# Lives in this repo as a template. The release workflow updates the
# `version`, `sha256`, and (optionally) a copy of this file in the
# `jestatsio/homebrew-reolens` tap repo.
#
# Users install via:
#   brew tap jestatsio/reolens
#   brew install --cask reolens
#
# `auto_updates true` defers to Sparkle for in-app updates — brew won't
# overwrite a Sparkle-installed newer version.

cask "reolens" do
  version "0.6.3"
  sha256 "e2cb137144490dcceacc74341c2b294ca62108fe00b5924ebeab005833775979"

  url "https://github.com/jestatsio/reolens/releases/download/v#{version}/Reolens-#{version}.dmg",
      verified: "github.com/jestatsio/reolens/"
  name "Reolens"
  desc "Modern macOS client for Reolink cameras and NVRs"
  homepage "https://reolens.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Reolens.app"

  zap trash: [
    "~/Library/Application Support/Reolens",
    "~/Library/Preferences/com.reolens.Reolens.plist",
    "~/Library/Caches/com.reolens.Reolens",
    "~/Library/Saved Application State/com.reolens.Reolens.savedState",
  ]
end
