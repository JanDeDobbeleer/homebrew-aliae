cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.26.3"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "c150546f3da0d8088fd6ba1d7284e28c9f221e1ead2cbd65340aac52ae69b9e4",
           intel: "f49fd3ee84fd3adc098c8cb8118d02cf84f4bf4dd89b2ef2578690d06e1cd35b"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

