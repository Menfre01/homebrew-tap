# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.0/waveloom_darwin_arm64.tar.gz"
      sha256 "80e63f26a823d1b481efa7e3be4839c3a4de2c47db4bffeaafff5f0b1a496d83"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.0/waveloom_darwin_amd64.tar.gz"
      sha256 "f264f5a5c883eee1fe24610952dd4f21dd67e8fbcacafe8ee29f0040de8e1b3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.0/waveloom_linux_arm64.tar.gz"
      sha256 "1b5de5c08932c1dbfdf28ba147e19cfa7ff64ea6bd81fa91585e2c84036e9f80"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.0/waveloom_linux_amd64.tar.gz"
      sha256 "ad52af4053a25c406f604034c67c4f22f2029c79d7e5e6491a630f7d09ba58d1"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
