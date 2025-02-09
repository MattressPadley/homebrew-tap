class Newnew < Formula
  desc "Version management CLI for multiple languages"
  homepage "https://github.com/mattresspadley/newnew"
  version "0.1.0"
  url "https://github.com/MattressPadley/newnew/releases/download/v0.1.0/newnew-macos-v0.1.0.tar.gz"
  sha256 "d486b6d37fecf349637d8439c5a1d55e05cf6e6c4c0bb400cd7a9ccf8840f62a"
  license "MIT"

  def install
    bin.install "newnew"
  end

  test do
    system "#{bin}/newnew", "--version"
  end
end