class SshList < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/ssh-list/archive/refs/tags/v0.0.17.tar.gz"
  sha256 "aaceb0995008384685aa11ecfc89601a78c193dbbc0ec298055024b80e4932f3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
