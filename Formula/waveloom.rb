# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.8/waveloom_darwin_arm64.tar.gz"
      sha256 "6c82aec1cb1c58a6ad4e3e63d196adcc5141c3581fcfa23943c7481338aa48a6"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.8/waveloom_darwin_amd64.tar.gz"
      sha256 "ef741f70d0c50265482cce8bb29981b255d0b93ab42edd25f8ae43186764c7a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.8/waveloom_linux_arm64.tar.gz"
      sha256 "ed682b4cf8046c3a0ddaf3707de01aa92c6367c075955980e887d2afafd1b288"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.8/waveloom_linux_amd64.tar.gz"
      sha256 "1aaa993385becffe744c438f4b4ed5fb1b151d5c3eb2d11b2f92b977ca6882ff"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
