# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_darwin_arm64.tar.gz"
      sha256 "660d85685b19b174fb2ad68db28b0bd81eee494e20b7950bad531a6422740bc2"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_darwin_amd64.tar.gz"
      sha256 "f4a7d56e24c7c19d29f15c9b5fc7dc65b6529975fe992ce38c92770aff08d53b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_arm64.tar.gz"
      sha256 "c03d7270e58afbe6d5d61f187ecead3f348685a699589a03b6cb8481d1dd3483"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_amd64.tar.gz"
      sha256 "308862f8026bcf7b745d604248b3f16bb4e6bef4a06c1823dd8faf084566c97d"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
