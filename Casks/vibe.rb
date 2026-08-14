cask "vibe" do
  version "0.18.0"
  sha256 "035d7b12f08e5820ae0a52c74e147ba55b6e3e195b3aa8c769ef1a32f361b372"

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
