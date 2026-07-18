cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "1.4.1"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "f79dc7c569c917a20b5efdf3a0812f0180ac0c0348e51dbda311bf37d1e10085",
           intel: "8e3fe1e4d7a7fa7c8719c27275821e502bc1a3723aab102e3fe3543ad7752ea1"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

