cask "adanotch@beta" do
  version "0.3.1"
  sha256 "873bf7e0964a8bbc4f3fccb72d9cdfb99d546fe63793dbdef3bb96ba15d161d8"

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
