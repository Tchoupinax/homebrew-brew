class Gb < Formula
  desc "Tools to easily switch and view your git branches"
  homepage "https://github.com/Tchoupinax/git-branch"
  url "https://github.com/Tchoupinax/git-branch/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "d8e590a85b6d8a2609f1eeef86e1733e94116df7d5ddcf42fafa82b43326fcc3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
