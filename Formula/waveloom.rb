# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.5/waveloom_darwin_arm64.tar.gz"
      sha256 "aaf4e7219c1ea5f8bec7592c09c5cb0144b4fe31db54da1b7a4f48166de74ad1"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.5/waveloom_darwin_amd64.tar.gz"
      sha256 "6d15dcc9e07e5c4bf9389bf4fe8b8099f77c0c081957fa7c3a0b4acbeb9bca3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.5/waveloom_linux_arm64.tar.gz"
      sha256 "72ae572c331df48726b4823d07fd27d7b1a99d428fe4ab67e26baf45729ad759"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.5/waveloom_linux_amd64.tar.gz"
      sha256 "2dceed1c41a0eb0ed31a9e16fd5fd128b2180ff9bc046cb23dec0234ca5f3365"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
