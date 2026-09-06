cask "pulsecheck" do
  version "1.4.1"
  sha256 "3f37e132c0c2b1695940dd0fe5b1f8ccd2a72120f8f81a5f2ab85bb8c591191d"

  url "https://github.com/Captnjo/pulsecheck/releases/download/v#{version}/PulseCheck-#{version}.dmg"
  name "PulseCheck"
  desc "Menu bar app monitoring usage limits for Claude Code, Codex and OpenRouter"
  homepage "https://github.com/Captnjo/pulsecheck"

  depends_on macos: :sonoma

  app "PulseCheck.app"

  zap trash: [
    "~/Library/Caches/com.jo.PulseCheck",
    "~/Library/Preferences/com.jo.PulseCheck.plist",
  ]
end
