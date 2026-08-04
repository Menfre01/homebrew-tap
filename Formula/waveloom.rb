# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_darwin_arm64.tar.gz"
      sha256 "246bb62ee02494487d8904789bbbf96015286dd3829caab62c0725fa5e6fb4de"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_darwin_amd64.tar.gz"
      sha256 "492a6aa1ffc2b483c251f824b35180291c0aa5c1cb52460e118cd8ca9dc1db0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_linux_arm64.tar.gz"
      sha256 "d4c1de5a4113600bb6436cae04de2c51e927b7507e4a8edd29b262b2b23a7c6e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.0/waveloom_linux_amd64.tar.gz"
      sha256 "1cc31f61c506495dd4466d267b6625af14ddb802cdcfdf87e28d6c77021d10b7"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
