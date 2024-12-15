class SshList < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/ssh-list/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d578df8ac9bd976c3be7e169ea1176bfabd594b595a82809305ee49a37577ff5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
