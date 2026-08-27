# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.0/waveloom_darwin_arm64.tar.gz"
      sha256 "0fab926ea48b44648b65cdf371fcefc345cf2df58852cadedb103101b6c1672c"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.0/waveloom_darwin_amd64.tar.gz"
      sha256 "e78fc5a51752d14e48a56e8da99de1a4f6be07e8310625ee8c820a7e1cddfeaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.0/waveloom_linux_arm64.tar.gz"
      sha256 "72bb4836eca502b8f48dcf9516c8bec28f5c1af10e5a4ab54793740c502566b7"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.0/waveloom_linux_amd64.tar.gz"
      sha256 "1795a69a99c70599294ef4e2c0e74f3bdf7eaaeb11f431e907aef35ee4e6be3f"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
