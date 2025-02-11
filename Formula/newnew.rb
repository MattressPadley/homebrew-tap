class Newnew < Formula
  desc "Project bootstrapper"
  homepage "https://github.com/mattresspadley/newnew"
  version "0.3.0"
  url "https://github.com/MattressPadley/newnew/releases/download/v0.3.0/newnew-macos-v0.3.0.tar.gz"
  sha256 "9441a500e4f19ba58f4687a5a3f62604f1730bf94721f0ce5fd412aa60e766fe"
  license "MIT"

  def install
    bin.install "newnew"
  end

  test do
    system "#{bin}/newnew", "--version"
  end
end