# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.1/waveloom_darwin_arm64.tar.gz"
      sha256 "3d73a4bb318e8fad3da094d6b4401c39d8eecf944e2c5713adf4d53f2709d0cc"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.1/waveloom_darwin_amd64.tar.gz"
      sha256 "5c424c0ad000d87852ecebca7b72daa6e3ded0387b9caa11587f093d235db696"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.1/waveloom_linux_arm64.tar.gz"
      sha256 "a9ebdcd6ae357d5c4dc343acef6c277a808a529ce92f26419035164354b6dbad"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.1/waveloom_linux_amd64.tar.gz"
      sha256 "b69b96df7515b539c9b8eceffc453f97b5bbbf795db1ba060023adc52035746d"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
