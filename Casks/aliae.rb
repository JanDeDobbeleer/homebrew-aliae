cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.24.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "447cd60922f5f45538d0644a6e04c6ff92093003fafc7aead78819013431ff7a",
           intel: "5d7ca434a0fe0d1ff9e949cc330779fd510d6b1d28b254cb57932da110d89fab"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

