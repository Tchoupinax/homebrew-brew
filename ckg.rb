class Ckg < Formula
  desc "_"
  homepage "https://github.com/Tchoupinax/homebrew-brew"
  url "https://github.com/Tchoupinax/check-git/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ce0aaa4b689b8ea2c6addb809100e7f122c019e08bfa98c1765e41f38258b923"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
