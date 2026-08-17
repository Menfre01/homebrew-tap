# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.3/waveloom_darwin_arm64.tar.gz"
      sha256 "c37a17f2f278457c94ed927023d29645a34b22408b4fb4fd7c2eb75883f21b22"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.3/waveloom_darwin_amd64.tar.gz"
      sha256 "524d982293463ff6c865a491372cff68c32384f54852c9bc0009a26300c13dba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.3/waveloom_linux_arm64.tar.gz"
      sha256 "1c508a2cc2e57fff00389816e992525b005fcc2a0596d3d029425b4f8165f396"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.3/waveloom_linux_amd64.tar.gz"
      sha256 "cd9dcb5a572bd608353c9f34132819ef3f0dbf6d62b9437ce2b28f5bd0a05af0"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
