class Ckg < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/check-git/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "2f9d060318dcd3b466b9086f71b53a2f1affc5f01c2c6da39d074c8a94efc9fc"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
