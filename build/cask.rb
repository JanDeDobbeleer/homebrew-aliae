cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "<VERSION>"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "<SHA256-ARM>",
           intel: "<SHA256-INTEL>"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end
