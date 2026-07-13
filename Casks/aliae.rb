cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "1.1.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "0b6a110e0d85fa3b5fbd1f3fe13ff0b7e89a1537ec1ae4db4d21d71f453fa651",
           intel: "2d00836c0e56c82b135c1c3d858aef4bc921571b0ad27dab02a00d242cb0b6b7"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

