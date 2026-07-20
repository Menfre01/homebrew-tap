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
      sha256 "3b7d6b46342f2324744186d72eb21275037ec7c1749ad80bb104193432eee19a"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_darwin_amd64.tar.gz"
      sha256 "04e3c416d2e41c96213b0e79bd88a2c5ed2a3ef836eb4488c79b2f7ec1d4f7ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_linux_arm64.tar.gz"
      sha256 "a5130cba0fb1193dcd24a7bb1fbb56c4855ca0c9534ede30ed171b8e8c1fbe64"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_linux_amd64.tar.gz"
      sha256 "8228666b14bf4cede4cb9b195029d9b7e1af25070d8813d75fae8f28deeb0a6d"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
