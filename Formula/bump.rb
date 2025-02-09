class Bump < Formula
  desc "Version management CLI for multiple languages"
  homepage "https://github.com/mattresspadley/bump"
  version "0.0.6"
  url "https://github.com/MattressPadley/bump/releases/download/v0.0.6/bump-macos-v0.0.6.tar.gz"
  sha256 "b8d58d131b41e4c720fea4a3d991f1208ee42be111d03ce5dd38cc30c33fb58a"
  license "MIT"

  def install
    bin.install "bump"
  end

  test do
    system "#{bin}/bump", "--version"
  end
end