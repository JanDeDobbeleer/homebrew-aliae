cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.17.1"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "345cbe2389d03691c583bd44fa4f89f03d2de1af64f9ca2a6f9b6b06135539ad",
           intel: "37bb1bd2dca5a22fd56c9a641c2cb1a1b39058024ef2fa5032e32b3b17fa8ff2"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

