cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.26.6"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "0f5998c16c14d073debbbf671503a38a2f17c95f9945eaabd4d00d5edce042ba",
           intel: "e1081728b5731e4ead54079c65478a5a24e15d7bdca8b1de9bb2ad8725f00336"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

