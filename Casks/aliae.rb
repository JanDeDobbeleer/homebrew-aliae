cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.26.1"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "5885c92cbbdaf8c150699da8a50ac3faff7277af8542aff16424a0e880e02d98",
           intel: "410fdac3e78a7dd0599cedf7ded8f2dd8312a8b32d3a2609c1ec7897484af630"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

