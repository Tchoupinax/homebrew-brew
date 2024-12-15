class SshList < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/ssh-list/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "e41f0ada92760cc08a3c9c53ceea13d1c11b7625d23a0ca3dc37d8c5a65e72cb"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
