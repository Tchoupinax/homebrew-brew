class SshList < Formula
  desc "Cross platform tools to display your registered ssh connections "
  homepage "https://github.com/Tchoupinax/ssh-list"
  url "https://github.com/Tchoupinax/ssh-list/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "9357240ead00339a402a1c4a0bd5595f5524323c9425ee757b6d7a67e52a4008"
  license "MIT"

  depends_on "go" => :build

  def install
    require "net/http"
    require 'date'

    uri = URI("https://api.github.com/repos/Tchoupinax/ssh-list/releases/latest")
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
