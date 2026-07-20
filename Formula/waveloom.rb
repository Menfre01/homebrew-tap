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
      sha256 "fc5099239d2f8a6ec9f01d95f9bb0ceaaa27d008085125c7fc489c996899749d"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_darwin_amd64.tar.gz"
      sha256 "d51e459ffe9834434a36ff03ce70e1421adcb1c0d2102e61594b425db0c55bfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_linux_arm64.tar.gz"
      sha256 "0fde782179745aee779d287b9a2a188e788cf388d7ffd48986e5889fbdfdc629"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.2.0-beta.2/waveloom_linux_amd64.tar.gz"
      sha256 "2078334c08b6f7d64aa1abb15794a6a246dd223f296d340d3411af1a6009adda"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
