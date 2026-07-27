# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.2/waveloom_darwin_arm64.tar.gz"
      sha256 "6fc588f59a0701939859c4457117f992e2a9957a838f9dbf4dd4e559d4529049"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.2/waveloom_darwin_amd64.tar.gz"
      sha256 "06bd5df2c5c784bedd38b84af615c594dcbb0496ff86e0adfc537b98e61a9549"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.2/waveloom_linux_arm64.tar.gz"
      sha256 "e6d0b855eb5695a5fac59b64ba3ab04d1169ff7608e4116a6d54406afa39000e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.2/waveloom_linux_amd64.tar.gz"
      sha256 "b0faacf93c6c185c1bb352c2274f01eef7ac2f0ee1de9f64c50cd72760472010"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
