# Homebrew cask. release.sh fills VERSION/SHA256/URL and writes homebrew/lidlezz.rb; copy it into your tap.
cask "lidlezz" do
  version "0.2.0"
  sha256 "16d4943efa1f73b6e644df8df088ac25d536e82d1e1e44ef1cecde0006757fc8"

  url "https://github.com/witcharon/lidlezz-releases/releases/download/v0.2.0/Lidlezz-0.2.0.dmg"
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
