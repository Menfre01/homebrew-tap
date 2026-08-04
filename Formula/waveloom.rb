# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_darwin_arm64.tar.gz"
      sha256 "fbbcbe19e3a0342e9f0bcd300bb299cb1ba73aebcd53d34950673a8f9a969617"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_darwin_amd64.tar.gz"
      sha256 "de83a4dda6ca4d5b1a8e3717ccb174797172f85a548bbd83e02626d0e90bb0e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_linux_arm64.tar.gz"
      sha256 "e3fb349485f6e604822bc698d723d7fed2b71cff5daf64ae938f4f9af2d30638"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_linux_amd64.tar.gz"
      sha256 "f66155dc28ed18af684da670f8d4c8ded8bfa3d80956a279b4d5e7205a42c672"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
