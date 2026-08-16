cask "vibe" do
  version "0.19.0"
  sha256 "784be26d7706bf97825a9c94f2c800b886863de929d3aab40f0aeaa2e27eb542"

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
