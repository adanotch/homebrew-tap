cask "adanotch@beta" do
  version "0.1.0-beta.17"
  sha256 "6273013b447769c7a5bbf87fedd108526421227485c72feaef0fe0bad40a251c"

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
