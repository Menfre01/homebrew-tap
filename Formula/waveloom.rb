# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.7/waveloom_darwin_arm64.tar.gz"
      sha256 "8555ae2ef880f8d582f316210f1ee0a20b647c1c019447f6ed51ecec4da04e25"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.7/waveloom_darwin_amd64.tar.gz"
      sha256 "06666ddfb85b39fcd510e2e74d2f6951c0f2bcf29aa7875125c3dea1fe0413cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.7/waveloom_linux_arm64.tar.gz"
      sha256 "4d635ea5ef10e93066680be6c8cc892642bcce02a19de79b0339b4c7273fa2e9"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.7/waveloom_linux_amd64.tar.gz"
      sha256 "7381f3ea9a504a495f3a033c18dc2e322c218792d059fba915b5af38c9e6d456"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
