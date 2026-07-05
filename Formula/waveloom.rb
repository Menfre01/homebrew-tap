# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.14/waveloom_darwin_arm64.tar.gz"
      sha256 "8e27f725cb0dbb70adb10a958bc02a072749fe5994472e6c69aacbc3867460b6"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.14/waveloom_darwin_amd64.tar.gz"
      sha256 "3d331ca1cda3ff695056f295e635cc016569a9d25ffb2eddc443b5689a8fe25f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.14/waveloom_linux_arm64.tar.gz"
      sha256 "7b99f145c6105e5725e899fac5e6c5006f23cccabf2ec3e8f40bf96a404b6f4c"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.14/waveloom_linux_amd64.tar.gz"
      sha256 "fd06ab47a0929233cfb2e30a5aefbbfb7325b4a090c8f3342142995c353bc964"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
