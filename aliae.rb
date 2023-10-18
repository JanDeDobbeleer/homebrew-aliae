class Aliae < Formula
  desc "Cross shell and platform alias management"
  homepage "https://aliae.dev"
  url "https://github.com/JanDeDobbeleer/aliae/archive/v0.13.0.tar.gz"
  head "https://github.com/JanDeDobbeleer/aliae.git", branch: "main"
  sha256 "4a4d73f03e252da8f41c6d4c7617a569cad0d8a275a8811a7462017115f76b01"
  license "MIT"
  version "0.13.0"

  depends_on "go@1.20" => :build

  def install
    Dir.chdir("src") do
      ENV["GOPROXY"] = ENV.has_key?("HOMEBREW_GOPROXY") ? ENV["HOMEBREW_GOPROXY"] : ""
      system("go build -o=aliae -ldflags=\"-s -w -X \'main.Version=0.13.0\'\"")
      bin.install "aliae"
    end
  end

  def caveats
    <<~EOS
      Thanks for installing aliae.
      Have a look at https://www.aliae.dev/docs/setup/shell for detailed instructions for your shell.

      If you're enjoying aliae, feel free to donate or become a sponsor.
      https://github.com/sponsors/JanDeDobbeleer

      In case you're looking for help, want to share how you use aliae, or find like-minded individuals, join our Discord community!
      https://discord.gg/n7E3DkXssv
    EOS
  end

  test do
    system "#{bin}/aliae", "--help"
  end
end

