cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.14.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "7207a3a012f74ec0b9cefb8136b697ea95b18c3f1b125fbe23b865219de1bec0",
           intel: "2351220e51b1e24b71c82bea6602ff8f24ef9cecca9477429f8133092bdee84d"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

