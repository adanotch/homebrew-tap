cask "adanotch" do
  version "0.3.0"
  sha256 "09cfc2cc65cf43c6466892daf4a3e7cb92bb5ec817f8954455e5cc520d5aeb0a"

  url "https://download.adanotch.com/releases/Adanotch-#{version}.dmg"
  name "Adanotch"
  desc "Notch island for the MacBook: music, calendar, focus, shelf and extensions"
  homepage "https://adanotch.com"

  auto_updates true
  depends_on macos: :sonoma

  app "Adanotch.app"

  zap trash: [
    "~/Library/Application Support/Adanotch",
    "~/Library/Caches/dev.adanotch.app",
    "~/Library/Preferences/dev.adanotch.app.plist",
  ]
end
