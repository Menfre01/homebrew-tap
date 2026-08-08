# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.2/waveloom_darwin_arm64.tar.gz"
      sha256 "370c573780593482bb63c7fdb74db094a41c373522882b9cae510e704db76b13"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.2/waveloom_darwin_amd64.tar.gz"
      sha256 "05d13c4c95f9b3d1a1a79db9597a43e8fe424129542b257a171713c6b43e9a86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.2/waveloom_linux_arm64.tar.gz"
      sha256 "ab2b7e0b4026b81083c40c78537f8a8e6d5ccc11df5a179de7475b0572e57974"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.6.2/waveloom_linux_amd64.tar.gz"
      sha256 "84069704aec131874889b3b0c621e1c14d856fa8009e217ec753da53ce6d2452"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
