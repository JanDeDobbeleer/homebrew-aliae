cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.11.3"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "a0722a887bb7814d792ce0266158feff29a5f35913cefd6e282176aac086969d",
           intel: "5707624407a96671e512340c6f93ad92e79a5d399ea666eb812b4587a3d48007"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

