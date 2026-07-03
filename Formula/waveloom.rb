# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.10/waveloom_darwin_arm64.tar.gz"
      sha256 "a12a7b1a05ca1a1662ca0e559e312073743291d7e075ebf5919023fa0cb07c4e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.10/waveloom_darwin_amd64.tar.gz"
      sha256 "0a9c7b60dfd4f111d0d0d38cc6e0871a053434a3ab71c427af2354d61ef86345"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.10/waveloom_linux_arm64.tar.gz"
      sha256 "0c107ec24d25173424ccce5a29d908ff1521cf16fb1b3abd2e88901718a34eb5"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.10/waveloom_linux_amd64.tar.gz"
      sha256 "1e818fb6d86318cdaf53340968498cfd5c5b4e3d6c6569f53c9d4d0817c2ecd4"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
