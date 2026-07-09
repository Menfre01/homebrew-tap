# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.3/waveloom_darwin_arm64.tar.gz"
      sha256 "af78e6e60a0af6a6aa71cb0308d7f11a6cafadbda13040b80c4796da5a2551cd"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.3/waveloom_darwin_amd64.tar.gz"
      sha256 "f05e9a1bbf4e2b8d60f9350d2a71b2fad0b6f20e9a3a20cac6e7fe0f0338fc68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.3/waveloom_linux_arm64.tar.gz"
      sha256 "6be75ee38c7be63e499a19bed218eb471357ba86b6ea79e7eae901bb4f688322"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.3/waveloom_linux_amd64.tar.gz"
      sha256 "c4dd39cc6441234b09469247c1f3aece0065313da0c1997118c0aed1f98c6e21"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
