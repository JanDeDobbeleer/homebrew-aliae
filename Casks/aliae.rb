cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.17.2"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "ca1915fb52d6251a7e648d99871637989c5be6e2fd76656e5811542c8d45f65c",
           intel: "57e1f354d175e277ee82df7c0005db92928d074d4dd0d4373c75c0db4c65db4b"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

