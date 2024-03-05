cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.18.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "96926c4356d1618808667e343de0fb0016c53e2b1648f9a39707b27c5359f1d0",
           intel: "32155b422f940e8d77d644b218344ffc1b9486c9bfbd86cd77b04390cc40092d"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

