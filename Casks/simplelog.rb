cask "simplelog" do
  version "1.4.11"
  sha256 "4534329669e09d2e5af890e48532110af1501a979756d060f747b5d9271c5c27"

  url "https://github.com/simplelogdev/simplelog/releases/download/v#{version}/SimpleLog-macOS.dmg"
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
