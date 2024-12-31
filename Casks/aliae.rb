cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.26.2"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "20f83983226dbaca2b33a48540d48004cd889d639355ff6857e18aee95ab942c",
           intel: "ff270b951be4e6dd90faa35c284bd3f2641a533c704ab570c318f0d208c082b2"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

