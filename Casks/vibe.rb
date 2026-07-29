cask "vibe" do
  version "0.16.0"
  sha256 "b8d3bf41fb8accc43f8693b6536260ec73845a48dd26e012cdc27841e4f614ab"

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
