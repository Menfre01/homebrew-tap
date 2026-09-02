# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.1/waveloom_darwin_arm64.tar.gz"
      sha256 "381116a1e4f39d6cef2b65deb3e04e13c1af4c3aa5f6d400e2b20dc6da510720"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.1/waveloom_darwin_amd64.tar.gz"
      sha256 "180a5ed8c9ea046705db29d0e43361a188b0dbf31148ddf579e1b3e5d27e78b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.1/waveloom_linux_arm64.tar.gz"
      sha256 "96216d8e24a88d554ba3fd137cd532b499de08a2301f06a4fcbfdb04c05c0e35"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.1/waveloom_linux_amd64.tar.gz"
      sha256 "5a3c9ef9332cad128288158be87db4e9999960f14ebe5efb9f655b89bd896476"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
