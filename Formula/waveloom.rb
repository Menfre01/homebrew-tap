# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.2.0-beta.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.1/waveloom_darwin_arm64.tar.gz"
      sha256 "41545611b3039394571cf8c8f2146f6b2147668c445034a8eb7b4a33caf6581e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.1/waveloom_darwin_amd64.tar.gz"
      sha256 "33b6d257725a6dfda943796ad2bced25f19da9e0095b617e0971461f1fefc492"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.1/waveloom_linux_arm64.tar.gz"
      sha256 "961793685b55e5380d5ff4b6cf43a54fdf7d58a6cff96c6e8fa071d90a949871"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.1/waveloom_linux_amd64.tar.gz"
      sha256 "242fada6129210bebf01bdb08562bf5f884c53e368d9c28797a7cc6a5987a26d"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
