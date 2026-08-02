# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.5.1/waveloom_darwin_arm64.tar.gz"
      sha256 "b9359afa3f26bbb29a45c3a26e64ae14ebd31684fb18c9ec741da2a2fc4c06e4"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.5.1/waveloom_darwin_amd64.tar.gz"
      sha256 "eb4d528ecf6b2d3fe8ba0e26d0725f3a578a3e869242ee379f5b080f283f03c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.5.1/waveloom_linux_arm64.tar.gz"
      sha256 "831effcbecdb463be63f66be915cbcd1ae99004ed685443b18143590c4747839"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.5.1/waveloom_linux_amd64.tar.gz"
      sha256 "70929c64e8488ba9405636f71ea1d430cda9a1a05258ba7ba2017a29f67c6cef"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
