cask "pulsecheck" do
  version "1.4"
  sha256 "23fb62e7f4d2124345587f2832df02f40c96455cab2bd5e5fcfca8055619a4f4"

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
