class Ckg < Formula
  desc "_"
  homepage "https://github.com/Tchoupinax/homebrew-brew"
  url "https://github.com/Tchoupinax/check-git/archive/refs/tags/v0.2.6.tar.gz"
  sha256 "1f3926a6f9859e0b072afe2a3149cd6c671894e86ea65713e5187e13b114f03e"
  license "MIT"

  depends_on "go" => :build

  def install
    require "net/http"
    require 'date'

    uri = URI("https://api.github.com/repos/Tchoupinax/check-git/releases/latest")
    resp = Net::HTTP.get(uri)
    resp_json = JSON.parse(resp)
    
    latest_version = resp_json["tag_name"]
    build_date = Date.parse(resp_json["published_at"]).strftime('%Y-%m-%d')

    ldflags = %W[
      -s -w
      -X ssh-list/cmd.version=#{latest_version}
      -X ssh-list/cmd.buildDate=#{build_date}
    ]

    system "go", "build", "-mod=readonly", *std_go_args(ldflags:)
  end

  test do
    system "false"
  end
end
