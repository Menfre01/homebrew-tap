# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.6/waveloom_darwin_arm64.tar.gz"
      sha256 "fd35a3e2613736c93ba5ee5c3582f322633b40a83b2aa90000a646ecd10fdf8e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.6/waveloom_darwin_amd64.tar.gz"
      sha256 "aae8626b3911f50df22e734ecfcb36c4b0d423753793d00884e46e2dcedf794c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.6/waveloom_linux_arm64.tar.gz"
      sha256 "2ad90a004711dca680d0773d1c5da8f4bbd2d6581276772e58b27b2638424910"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.6/waveloom_linux_amd64.tar.gz"
      sha256 "1d07b935c8f2f685611b738ab00de37d2ee577ca3ae6bd5051e5ee32a63b26b5"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
