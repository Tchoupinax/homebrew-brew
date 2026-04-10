class Pjf < Formula
  desc "A CLI that guarantees harmony across all your projects and package.json files."
  homepage "https://github.com/Tchoupinax/package-json-formatter"
  url "https://github.com/Tchoupinax/package-json-formatter/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "1b024d8c75cbfd23b70a28844fb14a6c2d6562259602cfbe4895d06a1739327f"
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
