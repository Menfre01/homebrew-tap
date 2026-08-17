# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.2/waveloom_darwin_arm64.tar.gz"
      sha256 "56f4da36f6bc713cbf7a2fa18d69d9e7136e3fc4270ed6d9bcc0bb2464142e0d"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.2/waveloom_darwin_amd64.tar.gz"
      sha256 "468edca863bc90e778741d635cf9ab331142030522721cc709d9edbfedc1ae7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.2/waveloom_linux_arm64.tar.gz"
      sha256 "46ff7b5edfa61fd396ac231185de2d74141be1afeddab786b610a21a0c9af457"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.2/waveloom_linux_amd64.tar.gz"
      sha256 "ac22e5f912c1e77957d40c5bc8dc755f4e521a4300567a49d7bcaafde289fbb2"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
