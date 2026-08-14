cask "vibe" do
  version "0.17.0"
  sha256 "8b1840cd898331e743cd55c960db2b1d90943d55aff3771917d260a5300ef2a0"

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
