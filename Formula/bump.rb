class Bump < Formula
  desc "Interactive TUI for semantic versioning and changelog generation"
  homepage "https://github.com/MattressPadley/bump"
  version "0.1.3"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.3/bump-darwin-amd64.tar.gz"
    sha256 "613e7539d7ca30e3796e7cd1b7e34ff0ad23a9147d1f5ab6f7aa574a08d216e8"
  else
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.3/bump-darwin-arm64.tar.gz"
    sha256 "0bed68189b747f1af820decaa2f29075f1bcb4f32cae22966a1e3ec9599e29f3"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "bump-darwin-amd64" => "bump"
    else
      bin.install "bump-darwin-arm64" => "bump"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bump -version")
  end
end
