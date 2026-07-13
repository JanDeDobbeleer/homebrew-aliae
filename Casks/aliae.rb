cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "1.1.1"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "16c9ff8537d4dd677b99196055c0104081c444a7433739c7895793842bb39291",
           intel: "0b386e985ed79c967c6aee05b7d6997d695ae95c237670dab9a465a36c2ae09e"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

