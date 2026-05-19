cask "simplelog" do
  version "1.6.0"
  sha256 "607e6fa5be7919c5c52fc2c5ce31e3ce89a15d224b3496ef9696ec2ac63479c2"

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
