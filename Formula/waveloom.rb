# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.1/waveloom_darwin_arm64.tar.gz"
      sha256 "93f89d47d0fbea5f7a65b9d14de3de76f86c44cdb73a758dfe61557a8f462b79"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.1/waveloom_darwin_amd64.tar.gz"
      sha256 "0ff9af7301d0f26b62656953dbacd35ab8d2218b04355d453f77f5bae4c1cd2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.1/waveloom_linux_arm64.tar.gz"
      sha256 "66a4223148c09120a3db566517cdb941e692f1ae33c7c898a35d860e5736f91f"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.1/waveloom_linux_amd64.tar.gz"
      sha256 "ee46537ffb7bbfb80b85a9539ec58d47a4d9e2fe30514cb1c104e6c0c9a68f77"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
