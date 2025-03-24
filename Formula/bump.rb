class Bump < Formula
  desc "Version management CLI for multiple languages"
  homepage "https://github.com/mattresspadley/bump"
  version "0.0.10"
  url "https://github.com/MattressPadley/bump/releases/download/v0.0.10/bump-macos-v0.0.10.tar.gz"
  sha256 "67b65543578dc72d49649a537c8c7bfc62119a4de61a441f13eb7853db48b4d7"
  license "MIT"

  def install
    bin.install "bump"
  end

  test do
    system "#{bin}/bump", "--version"
  end
end