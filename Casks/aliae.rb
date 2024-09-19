cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.22.2"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "ab641a22d54318dff1b8b91d6f1cb90d60bff65d4b35fb9da5b83cfc02b5be5d",
           intel: "8c2a8daceeda5541e2cdd2ae809e364f2e32ab2dcb65473f9066243060956ece"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

