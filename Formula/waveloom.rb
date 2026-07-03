# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.11/waveloom_darwin_arm64.tar.gz"
      sha256 "681596726fb05bf34dd0d7170449b39156dbe36baf57192095c88ad8b1f96551"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.11/waveloom_darwin_amd64.tar.gz"
      sha256 "bc25dfa936b9ad399b0cfa220165b5c4627a6b54de7f22d7929f1b6c0f0c38ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.11/waveloom_linux_arm64.tar.gz"
      sha256 "f99c7596bb76216f948f7eaeac0b301342225a4f0417beeb6c77b2032c9b049f"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.11/waveloom_linux_amd64.tar.gz"
      sha256 "7948a818eb1fb433068d90af5efa9ad8c4800484ea74bb36825cc870fcc34f08"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
