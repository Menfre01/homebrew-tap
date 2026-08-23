# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.8/waveloom_darwin_arm64.tar.gz"
      sha256 "a53634ecd80d13a824b2c100f6c0d1941c615e63f27e03a1a03b786b56c16d72"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.8/waveloom_darwin_amd64.tar.gz"
      sha256 "5f315f812b452693cf6fa09c4bf895f15c58b217536c78bf18b69ef307cdfec8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.8/waveloom_linux_arm64.tar.gz"
      sha256 "88616c498793d9f68c1d147704f6621c69728ece8eb112242553de630539c434"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.8/waveloom_linux_amd64.tar.gz"
      sha256 "3c0045bdf0945619dfbe1cb881348272279bb15d735e89ff658d37e8d65de990"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
