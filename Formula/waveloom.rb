# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.2.0-beta.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.3/waveloom_darwin_arm64.tar.gz"
      sha256 "8300898978a74b31a7b6f9ddec1c9a53755cef33178475433aecaae16bd68596"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.3/waveloom_darwin_amd64.tar.gz"
      sha256 "93ed07690a85020d0c957902714fdd0f02c4454084bbc6136fa7286b93649810"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.3/waveloom_linux_arm64.tar.gz"
      sha256 "e6b5ed7407c59fa7c154e387ba0de2cdb8c98bd6a93c91af709601b6a4c077d0"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.3/waveloom_linux_amd64.tar.gz"
      sha256 "f61bd3d5607c816a671d2da4bdf73c788cb0b22eaa35cd4a8b234d898c5e5326"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
