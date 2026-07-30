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
      sha256 "68922d953a6c0866036dd383676dec5707547fd06c8b1ec491a1ea1a33687754"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_darwin_amd64.tar.gz"
      sha256 "0e16cefb7111411cd2ed545779ccaf17f594f00f2b24efff47c4864eac2f140a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_arm64.tar.gz"
      sha256 "8cc7dc1b0f72682d1dacac75d548e8b54410d3bd3c030bb4a9cdc92ce448e1ce"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_amd64.tar.gz"
      sha256 "58233854d6f0f74aeb96deb3ac20a0a80d9eba750973c1205d767c536f79bf6e"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
