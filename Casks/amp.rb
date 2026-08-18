cask "amp" do
  version "0.22.0"
  sha256 "0d9426c1c8f290519d59211e100a58a4c1384e12f55eb4d7d687607cde05bb66"

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
