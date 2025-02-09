class Newnew < Formula
  desc "Project bootstrapper"
  homepage "https://github.com/mattresspadley/newnew"
  version "0.1.1"
  url "https://github.com/MattressPadley/newnew/releases/download/v0.1.1/newnew-macos-v0.1.1.tar.gz"
  sha256 "f196868d50801e68e9ceb71afe06b6ff4fcaceea5a94e003ae328c0be14176d4"
  license "MIT"

  def install
    bin.install "newnew"
  end

  test do
    system "#{bin}/newnew", "--version"
  end
end