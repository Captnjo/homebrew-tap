cask "pulsecheck" do
  version "1.0"
  sha256 "5373503d0b05f0b1f47954d2e14e3177aabd615e0a72a1b3509e2af25966a064"

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
