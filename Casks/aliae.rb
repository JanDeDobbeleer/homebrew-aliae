cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "1.0.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "e6dc47d48d53cd6c1f8a60bbfe7a572ab73e0f6dba27a0283573364d2251b670",
           intel: "c3a5751c05fb6d463a6711da0c2154260390e0cbc32a4b9b8a29948a68070c82"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

