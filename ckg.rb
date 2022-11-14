class Ckg < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/check-git/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b5a9e1cd3c7172f0aaf54c36602d2fb6d3ba5a9f5f6550098068d4e9b31a1772"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
