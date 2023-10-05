cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.12.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "6d680bdd3c6ba21b4d9c3246bf7a5d90b9f5d10526cbaa7e4442ed5e96e05ac0",
           intel: "d58a5b235429dca8f6facf4622421ca750b4b744ecef3d8b1570d3692465261a"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

