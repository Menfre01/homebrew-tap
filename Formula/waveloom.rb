# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.6/waveloom_darwin_arm64.tar.gz"
      sha256 "eaafcf70b81d9cddd8a91f75ecc250bb57b3e4be9ac39a6f2a5cec948590e644"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.6/waveloom_darwin_amd64.tar.gz"
      sha256 "2bc87d4f29ed2b01ec3dcfe396a84ee5f3174bc52b131c9aa34d466423401289"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.6/waveloom_linux_arm64.tar.gz"
      sha256 "56e43769fe7747e5a2c4e75bc29f8f544ddb042d185264f285d680d602fe4681"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.6/waveloom_linux_amd64.tar.gz"
      sha256 "7604b91685f6ddeb4ebff16c18dfd91d4d0940f72ec2d3440134ec5a681882e8"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
