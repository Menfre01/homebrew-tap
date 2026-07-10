# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.5/waveloom_darwin_arm64.tar.gz"
      sha256 "43ab754f3c0e1251772d8a5023d45d945539022fb1dd0ae3d0287babf3d8a42d"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.5/waveloom_darwin_amd64.tar.gz"
      sha256 "7b288c4f7264178aa0fae5e21b51dc1ae04fad813bc5c145b2848e1bc5fd3cab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.5/waveloom_linux_arm64.tar.gz"
      sha256 "f819ca89b2a634a574e12fd2a29440b442b5a1077649adce41c5d10471f0e9d1"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.5/waveloom_linux_amd64.tar.gz"
      sha256 "56f084ab5bf3a582b770bdcd6adab1c6f644519f05859d9cead30ce1e3e643a1"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
