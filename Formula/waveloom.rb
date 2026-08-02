# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.5.0/waveloom_darwin_arm64.tar.gz"
      sha256 "73c5d90aba448e6e1437c9e77d8b77f0ac32492d3cca26c0722aad8d34695b03"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.5.0/waveloom_darwin_amd64.tar.gz"
      sha256 "8ab4ff41ab6a6438cce7f0d3e4339211846640c13c142e9239ee550249880ab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.5.0/waveloom_linux_arm64.tar.gz"
      sha256 "2e0ee9425e4e64871d4a139aa5f25681021af80b074d9e34e3700292fec725fd"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.5.0/waveloom_linux_amd64.tar.gz"
      sha256 "6395bdf878999f9b5bd18565e537993ac9cacefe41e3f1efa90bc95779c6e6af"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
