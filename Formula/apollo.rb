class Apollo < Formula
  desc "AI-powered coding assistant for your terminal"
  homepage "https://github.com/i-luv-pho/apollov2"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.2/apollo-darwin-arm64.tar.gz"
      sha256 "2ad31e0ec6b91a8d37e0f506d4d3692a6e08d9910a9a728fcdc6d27cf7ee3f4f"
    else
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.2/apollo-darwin-x64.tar.gz"
      sha256 "27e4a8e5e302e1bd646ee734cb7ae11f0eb927698da90370c374b2971e1cd2e9"
    end
  end

  def install
    bin.install "apollo"
  end

  test do
    assert_match "apollo", shell_output("#{bin}/apollo --help")
  end
end
