# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.6/waveloom_darwin_arm64.tar.gz"
      sha256 "79abf33c10ce0da63f72d49959ebac5385564a73b3d5c7612e39a461de1330bc"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.6/waveloom_darwin_amd64.tar.gz"
      sha256 "7e5fd9788e3c961b0fe2366f06853958cd8cb4149f67562eed98ed2aa16f4275"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.6/waveloom_linux_arm64.tar.gz"
      sha256 "a4a5b3bc0500e2466ed11bff72f557633ced8b0c2bb2ce4c01f51fc6ad213645"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.6/waveloom_linux_amd64.tar.gz"
      sha256 "f8bb8dc52ae896b99f892eb734fe7c843ea176068cff5b417c7858e96da37b6d"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
