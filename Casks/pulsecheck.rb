cask "pulsecheck" do
  version "1.3"
  sha256 "40df15725ef36bcb8814d44ca0024ea4995f5f0598472d680e30bdd976be79f3"

  url "https://github.com/Captnjo/pulsecheck/releases/download/v#{version}/PulseCheck-#{version}.dmg"
  name "PulseCheck"
  desc "Menu bar app monitoring usage limits for Claude Code, Codex and OpenRouter"
  homepage "https://github.com/Captnjo/pulsecheck"

  depends_on macos: ">= :sonoma"

  app "PulseCheck.app"

  zap trash: [
    "~/Library/Caches/com.jo.PulseCheck",
    "~/Library/Preferences/com.jo.PulseCheck.plist",
  ]
end
