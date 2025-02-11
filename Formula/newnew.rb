class Newnew < Formula
  desc "Project bootstrapper"
  homepage "https://github.com/mattresspadley/newnew"
  version "0.2.0"
  url "https://github.com/MattressPadley/newnew/releases/download/v0.2.0/newnew-macos-v0.2.0.tar.gz"
  sha256 "87ff4c9efc0ffb7b6c618c569fe242a0107c350ea84696ffb71f0a9b9939db13"
  license "MIT"

  def install
    bin.install "newnew"
  end

  test do
    system "#{bin}/newnew", "--version"
  end
end