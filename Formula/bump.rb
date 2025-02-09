class Bump < Formula
  desc "Version management CLI for multiple languages"
  homepage "https://github.com/mattresspadley/bump"
  version "0.0.5"
  url "https://github.com/MattressPadley/bump/releases/download/v0.0.5/bump-macos-v0.0.5.tar.gz"
  sha256 "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"
  license "MIT"

  def install
    bin.install "bump"
  end

  test do
    system "#{bin}/bump", "--version"
  end
end