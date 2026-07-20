# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.2.0-beta.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_darwin_arm64.tar.gz"
      sha256 "7d57c802966be76c692578cf67094ae810767df7cb7966ceb6c8c8276de0c0d7"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_darwin_amd64.tar.gz"
      sha256 "dff5d70ed2998c931a813c32755d22f6aa80b9cb906e8e2e73bfcead5bac1737"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_linux_arm64.tar.gz"
      sha256 "17b014b06f4e57c41fd627d05378aa4f921aaa82eb44311784680a5944a96dad"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_linux_amd64.tar.gz"
      sha256 "30c7654cb7affc819cddc1fb2b99c6e8433eeb0a882c91fe0c41812afe823154"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
