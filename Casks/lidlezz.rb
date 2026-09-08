# Homebrew cask. release.sh fills VERSION/SHA256/URL and writes homebrew/lidlezz.rb; copy it into your tap.
cask "lidlezz" do
  version "0.1.0"
  sha256 "b1677a0d0515a49ac96fd217ef3c9bbf26341d5d6b87e8466d2761df8014f3e2"

  url "https://github.com/witcharon/lidlezz-releases/releases/download/v0.1.0/Lidlezz-0.1.0.dmg"
  name "Lidlezz"
  desc "Keep Claude Code running with the MacBook lid closed, without cooking the Mac"
  homepage "https://lidlezz.app"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Lidlezz.app"
  binary "#{appdir}/Lidlezz.app/Contents/MacOS/lidlezz"

  uninstall quit: "com.cansincengiz.lidlezz"
  zap trash: [
    "~/Library/Application Support/Lidlezz",
    "~/Library/Preferences/com.cansincengiz.lidlezz.settings.plist",
  ]
end
