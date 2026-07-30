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
      sha256 "8d5022e1a9cb021f667b888ef5f16c8a1557b3d02f268dad0a6e293562867d98"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_darwin_amd64.tar.gz"
      sha256 "09827aed8244d49d2cc62c33149ff7e901fa4c2d4c82cf662a0c0ddb19c03d37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_arm64.tar.gz"
      sha256 "ef95bde263cf2ef52629d51e190a05c65c1edb152d5cc5f7b78b8e10a65689e5"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_amd64.tar.gz"
      sha256 "be72d5f8e92e16572e885dca3cf4c760cf248134e42d7e30c3b28a0e1d98efdd"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
