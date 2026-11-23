cask "narada" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "097484d78204efe8da6ab5d503e2690382c2da0e7165f27a0a0f878313e68414",
         intel: "1aa160f8dec4303fe4b43d468a26e38cfc1e8d4852bb2b61f38211c963ddc258"

  url "https://github.com/gokul-kulkarni/narada/releases/download/v#{version}/Narada_#{version}_#{arch}.dmg"
  name "Narada"
  desc "Free, local-first, Postman-compatible API client"
  homepage "https://github.com/gokul-kulkarni/narada"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

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
