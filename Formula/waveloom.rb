# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.15/waveloom_darwin_arm64.tar.gz"
      sha256 "b1bf5469ee6919dcbce582a34600210e4616b62cb4bec5fa7b10517d22949603"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.15/waveloom_darwin_amd64.tar.gz"
      sha256 "c764d5f27eb84efe041b6cc92ffe60a31b4f488691fe95bd9e4421a4b173c8ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.15/waveloom_linux_arm64.tar.gz"
      sha256 "6addd9451afe5e5b80629eb97c7846a10920339758a5c17a1aeb7e9db9af730f"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.15/waveloom_linux_amd64.tar.gz"
      sha256 "b0f7c7aaa0d820341b7378e5acdbd9912638a9336ba170aa1afd30a51f57061c"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
