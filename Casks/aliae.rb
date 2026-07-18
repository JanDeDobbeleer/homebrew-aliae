cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "1.2.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "308996c23633ececb5abbcc12de436a2f78bbfd3ee62a049683b2551aac9160c",
           intel: "76efb9a34a3af482a631eedf4a5b32abca2e6cc079caa5668d73a372d0184fea"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

