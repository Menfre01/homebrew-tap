# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.1/waveloom_darwin_arm64.tar.gz"
      sha256 "a7f373d4f5df63b8b47b050d3a892be961204cf8c3af3cc010bb8fc0d3bea2ea"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.1/waveloom_darwin_amd64.tar.gz"
      sha256 "2a22214afb23a2013ee81e33734189c474feacc297e1795c96db05d050c0e5ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.1/waveloom_linux_arm64.tar.gz"
      sha256 "00c274c2b4dcab73ab867aaffab675939971d945312e0d491d6c93434868d755"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.1/waveloom_linux_amd64.tar.gz"
      sha256 "363488884d04b8905bd08f6ee46cef513feb5b591967b91dbf9bcf84bcfc7a67"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
