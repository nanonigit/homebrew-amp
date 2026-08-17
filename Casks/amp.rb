cask "amp" do
  version "0.21.0"
  sha256 "5467ea44320ff14f834764b2c7e074fc08019d9099f837f1ea97a09154af7b03"

  url "https://github.com/nanonigit/amp/releases/download/v#{version}/amp-v#{version}-macos-arm64.zip"
  name "amp"
  desc "Local music library manager and player"
  homepage "https://github.com/nanonigit/amp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "amp.app"

  caveats <<~EOS
    amp is ad-hoc signed and is not notarized by Apple. If macOS blocks the
    first launch, open /Applications in Finder, Control-click amp, choose
    Open, and review the warning before continuing.
  EOS
end
