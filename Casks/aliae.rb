cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.22.1"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "35e5430cd6a94ecd8769a172e42c27bab594ce899d5e4c8f80b87de52fcb90c5",
           intel: "870f2f1bb978f95de07f45a30afcf172b685e1b12303372c61367595a4c7b08c"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

