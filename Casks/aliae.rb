cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.15.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "3f5c2fb7764455a1ab39783a9d06ec460dddf73cd08b7d07f68a701854f39cfe",
           intel: "e43a5029ece7f63aad993e7d325c1c5ee0c7f0410ae007f8f46aa8b27625b55f"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

