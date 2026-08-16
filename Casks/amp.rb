cask "amp" do
  version "0.20.0"
  sha256 "37cb341f950e9a1d2f690a763cb160c5fceea6a86ab63ffbfefc820dafe06642"

  url "https://github.com/nanonigit/Vibe/releases/download/v#{version}/amp-v#{version}-macos-arm64.zip"
  name "amp"
  desc "Local music library manager and player"
  homepage "https://github.com/nanonigit/Vibe"

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
