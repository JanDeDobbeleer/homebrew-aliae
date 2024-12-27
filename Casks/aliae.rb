cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.24.1"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "746d71f81dbb54fa811c5c265c54b3610db9069c4d2129c68a9f0502d5ec99c9",
           intel: "2dc7cd37396c7569de9069fb9351e901576aa265a2728a399b33f7507276e47e"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

