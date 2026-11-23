cask "narada" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "a167bd5e339f9767af81309c6bbc52c07aa70956047a381af449d52c871d2f42",
         intel: "669a07b218674c0a4371bca7f61a6ce139ccdcf794ff9175c9807ceee4361a6e"

  url "https://github.com/gokul-kulkarni/narada/releases/download/v#{version}/Narada_#{version}_#{arch}.dmg"
  name "Narada"
  desc "Free, local-first, Postman-compatible API client"
  homepage "https://github.com/gokul-kulkarni/narada"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Narada.app"

  zap trash: [
    "~/Library/Application Support/com.narada.app",
    "~/Library/Caches/com.narada.app",
    "~/Library/Saved Application State/com.narada.app.savedState",
    "~/Library/WebKit/com.narada.app",
  ]

  caveats <<~EOS
    Narada is not notarized by Apple yet. The first time you open it, macOS says it
    can't check it for malware: open System Settings → Privacy & Security, scroll to
    Narada and choose "Open Anyway".
  EOS
end
