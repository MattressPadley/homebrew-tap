class Bump < Formula
  desc "Version management CLI for multiple languages"
  homepage "https://github.com/mattresspadley/bump"
  version "0.0.7"
  url "https://github.com/MattressPadley/bump/releases/download/v0.0.7/bump-macos-v0.0.7.tar.gz"
  sha256 "d486b6d37fecf349637d8439c5a1d55e05cf6e6c4c0bb400cd7a9ccf8840f62a"
  license "MIT"

  def install
    bin.install "bump"
  end

  test do
    system "#{bin}/bump", "--version"
  end
end