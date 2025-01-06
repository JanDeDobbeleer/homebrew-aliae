cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.26.4"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "134e1ba1260a69c1207db88009e1de12fe55d2749e448d83c851ae8f894a4ffb",
           intel: "453258ec07aabef27cd5d849900e97d39266f464ebd626dec5eda737a0d84eb9"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

