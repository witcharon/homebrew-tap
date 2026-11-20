# Homebrew cask. release.sh fills VERSION/SHA256/URL and writes homebrew/lidlezz.rb; copy it into your tap.
cask "lidlezz" do
  version "0.3.0"
  sha256 "e7572cea522a662f302913151af8114866381288e49c8b1b1c649a38249df084"

  url "https://github.com/witcharon/lidlezz/releases/download/v0.3.0/Lidlezz-0.3.0.dmg"
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
