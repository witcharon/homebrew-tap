# Homebrew cask. release.sh fills VERSION/SHA256/URL and writes homebrew/lidlezz.rb; copy it into your tap.
cask "lidlezz" do
  version "0.3.2"
  sha256 "b5b9fdaa0b0ffd0044c8fbb6a79e0922b584ffb7a7504a153e8adb1e53b709e3"

  url "https://github.com/witcharon/lidlezz/releases/download/v0.3.2/Lidlezz-0.3.2.dmg"
  name "Lidlezz"
  desc "Keep Claude Code running with the MacBook lid closed, without cooking the Mac"
  homepage "https://lidlezz.app"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Lidlezz.app"
  binary "#{appdir}/Lidlezz.app/Contents/MacOS/lidlezz"

  uninstall quit: "com.cansincengiz.lidlezz"
  zap trash: [
    "~/Library/Application Support/Lidlezz",
    "~/Library/Preferences/com.cansincengiz.lidlezz.settings.plist",
  ]
end
