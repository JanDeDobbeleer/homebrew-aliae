cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "1.4.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "538da4b73106b99d088705579fb033568a8d0521c804981fcfaf113abad3c50b",
           intel: "93e2aadd17d830594d0636248c039891e60c281e426c9ace6586cc0bc0455b48"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

