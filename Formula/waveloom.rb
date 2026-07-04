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
      sha256 "b5a1c91244bb68db4cbde1da06c2a0d020d470cb018c4c9a631f19e818c6e3f9"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_darwin_amd64.tar.gz"
      sha256 "31c952b51b0fd549a6e4f5dac9035de6bae104536950697304fac5196a081dbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_arm64.tar.gz"
      sha256 "e7016d07af85c95ca2f197edec79d190a9a3121ca9446140104c57d39478fd6b"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_amd64.tar.gz"
      sha256 "b4110360df86cc170003bbf9080a1edc0f0a9d1bb579eda145feeba05b60f749"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
