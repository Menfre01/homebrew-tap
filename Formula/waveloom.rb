# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_darwin_arm64.tar.gz"
      sha256 "c748d2bd93ac7a0df70a195ff133785d521545c08e0d86e73f55b226b29edf11"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_darwin_amd64.tar.gz"
      sha256 "55a51a30aa7f4971598ce62d263efc5fd620dfc89c70805c3099c337b3dc5a20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_linux_arm64.tar.gz"
      sha256 "7e6a4b7a88cdcee5afb87a9e0a374209023952ba11bc9fc01896b64ee26aad05"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_linux_amd64.tar.gz"
      sha256 "40d9ef224e16d659ae1d15f3a8c5095158b15159f32067f703fda3a5341a1d9d"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
