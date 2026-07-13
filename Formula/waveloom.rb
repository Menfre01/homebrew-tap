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
      sha256 "9ac18464bacdbb7c4af1defca834b39f7b6036520839cdf0601012fdb1941e6e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.8/waveloom_darwin_amd64.tar.gz"
      sha256 "b28bf4ee5eddea7c358e63e21f7fd6d2ef65636d36a1d3e8554bcdaed91f1a3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.8/waveloom_linux_arm64.tar.gz"
      sha256 "8535fd5332d267b8d9935711cb8631a89d100198619058f0796cbca139dd3a2e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.8/waveloom_linux_amd64.tar.gz"
      sha256 "9a8eb99f9a5fd4872af6d363916f4ddf370faa4d3aed605de66aa0faee714d20"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
