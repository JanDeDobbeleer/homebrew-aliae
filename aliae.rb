class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://aliae.dev"
  url "https://github.com/JanDeDobbeleer/aliae/archive/v17.5.3.tar.gz"
  head "https://github.com/JanDeDobbeleer/aliae.git", branch: "main"
  sha256 "de2855ef79f9232d724929cfd3ed9d70f97d613c3f05b9325c5ca5a7a3b48a19"
  license "MIT"
  version "17.5.3"

  depends_on "go@1.20" => :build

  def install
    Dir.chdir("src") do
      ENV["GOPROXY"] = ENV.has_key?("HOMEBREW_GOPROXY") ? ENV["HOMEBREW_GOPROXY"] : ""
      system("go build -o=aliae -ldflags=\"-s -w -X \'main.Version=17.5.3\'\"")
      bin.install "aliae"
    end
  end

  def caveats
    <<~EOS
      Thanks for installing aliae.
      Have a look at https://aliae.dev/docs/ for detailed instructions for your shell.

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

