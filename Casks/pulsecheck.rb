cask "pulsecheck" do
  version "1.4.2"
  sha256 "0d4d2e446e8fe4351133a927c2e4052b3a741b709c1f317a71c5cfc7445d7bae"

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
