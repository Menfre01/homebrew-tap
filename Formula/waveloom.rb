# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.3/waveloom_darwin_arm64.tar.gz"
      sha256 "83472a8bef8bcf963fd9e2b7618a414ddf8c2917181e04d9f6501da8c3f95982"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.3/waveloom_darwin_amd64.tar.gz"
      sha256 "7808b9158957e7db6009b6a0f159def099a1e4d655fc4b42d2315fe83cf78dbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.3/waveloom_linux_arm64.tar.gz"
      sha256 "193dcc04aa02f2d9858097546fa46a4c912831a0cc5b4976bac5264a810c1da8"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.3/waveloom_linux_amd64.tar.gz"
      sha256 "78bf25d771ca9033060c36e13addf32fa514d60bf9ba807d7bedb8a376ac83f1"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
