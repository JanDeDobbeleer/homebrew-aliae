cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.21.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "c943447a1e73bdf408020e913a46a0d5240232ebfdedd59adb54a7debc391222",
           intel: "74a53b7bce13503dade21115acefbe25bc50f6f4dec8999095986f22b15a0087"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

