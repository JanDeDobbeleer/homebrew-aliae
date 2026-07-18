cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "1.3.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "a5c1213f1807746c65cea191bd115b47dbfd19a57557a0864638ce2bf79ed081",
           intel: "26e033faf60c9cb98f0eccd0c782d99fcda6f827e1b141f7a1b87cfbaad97204"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

