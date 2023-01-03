class Ckg < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/check-git/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "4c0a3ec0c270d80da731ca7fc5baa5be583338598ebf5d1b5bd18b2ce94554cc"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
