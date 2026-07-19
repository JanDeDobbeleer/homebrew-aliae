cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "1.5.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "bd9da624ff07af80602d683f6e62e2e5571689ba4662fb06ac775fd8114448d5",
           intel: "c03b90505d66fe7dd202bead611184a31ea23158f35e73f04bcc08a4fe107a3a"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

