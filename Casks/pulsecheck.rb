cask "pulsecheck" do
  version "1.3.2"
  sha256 "f5ccd16adc495d865d8020a930bef34b35be494ff5351cdbee06fc181a2a8f1e"

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
