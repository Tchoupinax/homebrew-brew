class Iggy < Formula
  desc "Iggy is the blazingly fast, Rust-based, persistent message streaming platform"
  homepage "https://github.com/iggy-rs/iggy"
  url "https://github.com/iggy-rs/iggy/archive/refs/tags/server-0.4.86.tar.gz"
  sha256 "8aa0b3ca19b17475b07772869a57c9ce4c2b6d3e57f94ca5937d2a18adc1265e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
