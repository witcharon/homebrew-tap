# Homebrew cask. release.sh fills VERSION/SHA256/URL and writes homebrew/lidlezz.rb; copy it into your tap.
cask "lidlezz" do
  version "0.2.1"
  sha256 "724e61ca8747eaed4af1a44cb099661fdf02f21946ed0ab10d0c7761d517b388"

  url "https://github.com/witcharon/lidlezz-releases/releases/download/v0.2.1/Lidlezz-0.2.1.dmg"
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
