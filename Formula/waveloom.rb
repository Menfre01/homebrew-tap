# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.4/waveloom_darwin_arm64.tar.gz"
      sha256 "7b81c1358dfee69712d20c360c644d814db3f89a936b6e760115b7f2b5c19b6b"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.4/waveloom_darwin_amd64.tar.gz"
      sha256 "c4978028ad59055db8477bfc361a2e2eba95f21c7bda1530c09ca1020f9ec5f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.4/waveloom_linux_arm64.tar.gz"
      sha256 "9542d86c59c1a6362c2276e5bae502e30de1f3ec6f24bd0bc77517fd6fb28507"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.4/waveloom_linux_amd64.tar.gz"
      sha256 "6ce21a59535651906241b2d5d65292296942194348e4b3442dd90e7b5b3eba56"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
