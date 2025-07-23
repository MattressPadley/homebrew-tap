class Bump < Formula
  desc "Interactive TUI for semantic versioning and changelog generation"
  homepage "https://github.com/MattressPadley/bump"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.1/bump-tui-darwin-amd64.tar.gz"
    sha256 "3818c5c6731f6f27c3e7fa55fdd2c89b084562055b83d1f60a95dc513c2c81fa"
  else
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.1/bump-tui-darwin-arm64.tar.gz"
    sha256 "58d3d57fad9a638e725e295a3e2c43b8b3cf7fb3a7b1eb77b9fd0ba2e8291d2d"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "bump-tui-darwin-amd64" => "bump-tui"
    else
      bin.install "bump-tui-darwin-arm64" => "bump-tui"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bump-tui -version")
  end
end
