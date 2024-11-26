cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.23.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "f0b441abf864c14c4de948ba42cba2e2a57a01368856dc8e3301d807214d1e47",
           intel: "ddb4c069f326d7369c67b4ad4e6b759f0ebd7b8b46fa7959f3407205c02766dd"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

