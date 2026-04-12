class Pjf < Formula
  desc "A CLI that guarantees harmony across all your projects and package.json files."
  homepage "https://github.com/Tchoupinax/package-json-formatter"
  url "https://github.com/Tchoupinax/package-json-formatter/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fec488c15d9f810be1d15f7a1160d8bc1236a30fac601e7615accb6c86c3159d"
  license "MIT"

  depends_on "go" => :build

  def install
    require "net/http"
    require 'date'

    uri = URI("https://api.github.com/repos/Tchoupinax/package-json-formatter/releases/latest")
    resp = Net::HTTP.get(uri)
    resp_json = JSON.parse(resp)
    
    latest_version = resp_json["tag_name"]
    build_date = Date.parse(resp_json["published_at"]).strftime('%Y-%m-%d')

    commit_uri = URI("https://api.github.com/repos/Tchoupinax/package-json-formatter/commits/#{latest_version}")
    commit_resp = Net::HTTP.get(commit_uri)
    commit_hash = JSON.parse(commit_resp)["sha"]

    ldflags = %W[
      -s -w
      -X pjf/cmd.version=#{latest_version}
      -X pjf/cmd.buildDate=#{build_date}
      -X pjf/cmd.commit=#{commit_hash}
    ]

    system "go", "build", "-mod=readonly", *std_go_args(ldflags:), "./cmd/pjf"
  end

  test do
    system "false"
  end
end
