cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.26.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "752687456c17aff0e7244ae65cd8cb95241f9d76daddbec61aeea633965291e5",
           intel: "04ce6ed22115a645537ed3864257beff7f022c96bf662cd0206d1452575421d0"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

