class Ckg < Formula
  desc "_"
  homepage "https://github.com/Tchoupinax/homebrew-brew"
  url "https://github.com/Tchoupinax/check-git/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "384c7ecbef15488dcc963999449c64c8a8dc89c45e23ae2caa527d02d5362836"
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
