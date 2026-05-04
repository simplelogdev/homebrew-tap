cask "simplelog" do
  version "1.4.3"
  sha256 "a83cfa60811550caf2eecb4ec209aea94f64ba530cfa399a8b8814b792795f46"

  url "https://github.com/simplelogdev/simplelog/releases/download/v#{version}/SimpleLog-macOS-universal.dmg"
  name "SimpleLog"
  desc "Fast Material Design log viewer for CloudWatch, SSH, Docker, Vercel, GCP, Azure and local files"
  homepage "https://github.com/simplelogdev/simplelog"

  app "SimpleLog.app"

  zap trash: [
    "~/Library/Application Support/SimpleLog",
    "~/Library/Preferences/com.simplelogdev.simplelog.plist",
    "~/Library/Caches/SimpleLog",
  ]
end
