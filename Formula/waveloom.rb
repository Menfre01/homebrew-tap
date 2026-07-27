# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.1/waveloom_darwin_arm64.tar.gz"
      sha256 "d9f3fe904306ca839367f3c3145bef32fa7d21fef64c40124858163e71740617"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.1/waveloom_darwin_amd64.tar.gz"
      sha256 "953ec6a8c5b758034d88af5fe27ebbd41535d45984a88135246aaaa2968fc45c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.1/waveloom_linux_arm64.tar.gz"
      sha256 "30ec9784373934e5dc8e378ebc1cc08dcfe2030e554119c029975aa9ef50d9d9"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.1/waveloom_linux_amd64.tar.gz"
      sha256 "f3c8bb91b9d90da799e2e9d48015da357d8ac08e3d3f27304f2f0589cf271df0"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
