# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.9/waveloom_darwin_arm64.tar.gz"
      sha256 "9e297591b58685465ddfe40ea12add18b16e8d8daf8aa564cb548d5518e9c8f0"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.9/waveloom_darwin_amd64.tar.gz"
      sha256 "d7d400b9440433adbec1751a6eaf1e19df0c44054eccfe24e8eadfaf1f0819dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.9/waveloom_linux_arm64.tar.gz"
      sha256 "9ad71f605bef5fb4ab8ac98279cc5a8c6180c17544424931e0ffb330048aef64"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.9/waveloom_linux_amd64.tar.gz"
      sha256 "87b2b09d1a42f441135e20bef872b12e91f2818499c5478e2bf2304475373a95"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
