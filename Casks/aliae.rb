cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.20.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "7294a822dbb2e6511b675e9b9dc98097aef33bac4663400f7640891663186f61",
           intel: "cf0170761c125f91d919e2016d3f2218f4a12a550fa9f3f194fe50ae2fb8ff9f"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

