class Gb < Formula
  desc "Tools to easily switch and view your git branches"
  homepage "https://github.com/Tchoupinax/git-branch"
  url "https://github.com/Tchoupinax/git-branch/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "2b673fc856e4076ccf325335987ddae4d51ad321daf6b3c2c5444340e5adca85"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
