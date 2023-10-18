cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.13.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "532ce8999f98be387bb56e2562f3b7eecff7034173ea78c514e09524d75dac20",
           intel: "b23cb64e77d21f9b625b28abd566245449c6804e616cc83095978ae9d419b902"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

