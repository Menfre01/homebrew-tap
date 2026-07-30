# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_darwin_arm64.tar.gz"
      sha256 "ef8108de7c0a07878c365f19ee6dada285e47f0b628f1d5639ffee9764358f6c"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_darwin_amd64.tar.gz"
      sha256 "2a77a1641b5c1beebb8f9d476bf50dbfbcd8e3c4a78914c77e3ef5907277f2cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_arm64.tar.gz"
      sha256 "6abf54253181ef4ba75a8993240a03aff0e5a45c6547b721cb6665de4beddb5f"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_amd64.tar.gz"
      sha256 "0c22ecf64a3f6da54b3e65bb97aa45a7d12aea2ad8c223b0b0789e936f34960f"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
