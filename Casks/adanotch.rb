cask "adanotch" do
  version "0.1.0-beta.16"
  sha256 "ac17f8956795d35cfb458eed3ccd02ce5ed7321a76b2b45d7b6cd7b0a9c2eb69"

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
