cask "simplelog" do
  version "1.3.0"
  sha256 "c3ba140404ae2dc4adcb47e433851f17d5a44a8fd5a25cd77f0917dd2d1fa830"

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
