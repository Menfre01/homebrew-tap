# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.7/waveloom_darwin_arm64.tar.gz"
      sha256 "66e1b08f967e993797ac2252acccad04dabf9e8076c2608ed69732963e4b1484"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.7/waveloom_darwin_amd64.tar.gz"
      sha256 "40045ea9897ad52da4a860bfefcf462df93c179e622ad93ed5457626adceaf47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.7/waveloom_linux_arm64.tar.gz"
      sha256 "d0b0775e4afb6db04c427c6d74cb488342d2a16b3556945a11eb17f926648128"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.7/waveloom_linux_amd64.tar.gz"
      sha256 "82c3bcdb88a8708c017418a85d035db0c88e7f26d07aa5637ffbb4255ab3a657"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
