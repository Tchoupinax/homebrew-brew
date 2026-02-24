class SshList < Formula
  desc "Cross platform tools to display your registered ssh connections "
  homepage "https://github.com/Tchoupinax/ssh-list"
  url "https://github.com/Tchoupinax/ssh-list/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "a486b190ec04c1146322eb6d4ffb6aafb27900f75c53f37916f7f83a1d122b5b"
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
