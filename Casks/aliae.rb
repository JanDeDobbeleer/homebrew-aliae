cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.13.1"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "4c9d4eebb1bf8a7bcd2f28c50a4de8bc8cac4d4d5419da245364e7b7b8d69714",
           intel: "9aed9472524d3e3533faafc3904cc0c3c4034c7409a51d1425012998ee1d96bd"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

