cask "vibe" do
  version "0.15.0"
  sha256 "e1bea87c8f227ab951ce658caeb7357b12ec924b426d199e1e55cc0ceaf6e8d4"

  url "https://github.com/nanonigit/Vibe/releases/download/v#{version}/Vibe-v#{version}-macos-arm64.zip"
  name "Vibe"
  desc "Local music library manager and player"
  homepage "https://github.com/nanonigit/Vibe"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Vibe.app"

  caveats <<~EOS
    Vibe is ad-hoc signed and is not notarized by Apple. If macOS blocks the
    first launch, open /Applications in Finder, Control-click Vibe, choose
    Open, and review the warning before continuing.
  EOS
end
