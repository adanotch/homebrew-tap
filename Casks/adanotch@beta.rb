cask "adanotch@beta" do
  version "0.1.0-beta.23"
  sha256 "a5db04e10d40b46c4eec8777f70bd1a1b5066b9181c31780e0929d98963dbf36"

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
