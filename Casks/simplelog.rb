cask "simplelog" do
  version "2.3.0"
  sha256 :no_check # à remplacer par le vrai SHA256 du DMG une fois disponible

  url "https://github.com/simplelogdev/simplelog/releases/download/v#{version}/SimpleLog-#{version}.dmg"
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
