cask "frameleaf" do
  version "0.1.5"
  sha256 "7457b555b455aa99593fdc5bde5967e4fae95326ea2ba7ee19601ca58f6f43f6"

  url "https://github.com/Frameleaf/frameleaf-desktop/releases/download/v#{version}/Frameleaf_#{version}_aarch64.dmg",
      verified: "github.com/Frameleaf/frameleaf-desktop/"
  name "Frameleaf"
  desc "Run or connect to a self-hosted photo and video library"
  homepage "https://frameleaf.app/download/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Frameleaf.app"

  zap trash: [
    "~/Library/Application Support/app.frameleaf.desktop",
    "~/Library/Caches/app.frameleaf.desktop",
    "~/Library/Preferences/app.frameleaf.desktop.plist",
    "~/Library/Saved Application State/app.frameleaf.desktop.savedState",
    "~/Library/WebKit/app.frameleaf.desktop",
  ]
end
