# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.0/waveloom_darwin_arm64.tar.gz"
      sha256 "12495b54e4c82221993ff0a38aa738726ef6b496813edb69f33d588b984ff300"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.0/waveloom_darwin_amd64.tar.gz"
      sha256 "813214671e257ef9978e047adfe9ca18d09699fc13deb289fb1a1d7054a2a1d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.0/waveloom_linux_arm64.tar.gz"
      sha256 "5cbf3d2dcd54eef25d0b7ef7e938fd42874d4213bf4c3214ed351b3b86e61a79"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.0/waveloom_linux_amd64.tar.gz"
      sha256 "a2976ec150bead80edb6c17b08d65bc56e08f8800b812bac983fd75c4a3d7df9"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
