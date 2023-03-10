class SshList < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/ssh-list/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "abe8b945c3aca8a4ea28e41b310646239b8a98968c61f2a89648a05165f3a0ca"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
