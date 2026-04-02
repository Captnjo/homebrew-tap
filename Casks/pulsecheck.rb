cask "pulsecheck" do
  version "1.1"
  sha256 "b47cd87266251bec1d259bea73230c9d9497e10560bdb26dc8436c2012fbe489"

  url "https://github.com/Captnjo/pulsecheck/releases/download/v#{version}/PulseCheck-#{version}.dmg"
  name "PulseCheck"
  desc "macOS menu bar app showing Claude Code usage limits at a glance"
  homepage "https://github.com/Captnjo/pulsecheck"

  depends_on macos: ">= :sonoma"

  app "PulseCheck.app"

  zap trash: [
    "~/Library/Caches/com.jo.PulseCheck",
    "~/Library/Preferences/com.jo.PulseCheck.plist",
  ]
end
