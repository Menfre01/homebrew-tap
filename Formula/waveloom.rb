# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.10/waveloom_darwin_arm64.tar.gz"
      sha256 "71d67bb87acc65ab57da428ac42ea8e233d74ab7de2b2e425b53c4ae72b3c78d"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.10/waveloom_darwin_amd64.tar.gz"
      sha256 "c0dbd6baca3c4bd0ef30abfe681104c8bba95d40b9acb394a5f63342799a44af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.10/waveloom_linux_arm64.tar.gz"
      sha256 "6e5f4090024543a8330cfd5d5229b00a79823d2db6220db74c9805f1adc4c729"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.10/waveloom_linux_amd64.tar.gz"
      sha256 "56d5ebe79e41aa57e68d3f29ec71cbc7fb53b071c0435b126e5735b3e2f320ff"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
