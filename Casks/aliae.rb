cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.13.2"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "481f7f07a23d6ecce8a8ba97ee2f08ee1e3795df0a03d8566fd3d0f33203e065",
           intel: "f3d4b652748da910797c5485e40fc800b904a2ac734099498cfa1855178c5e53"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

