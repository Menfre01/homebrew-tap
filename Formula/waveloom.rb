# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.2/waveloom_darwin_arm64.tar.gz"
      sha256 "5973917df854a94348de965eb82fb99c427b0cf796f693368830934528d8fe75"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.2/waveloom_darwin_amd64.tar.gz"
      sha256 "bfc0de98d6ea8f2b3eb711cc774f6e5fe9a832e7aedc431bc6b9248910c575f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.2/waveloom_linux_arm64.tar.gz"
      sha256 "d9e38a329600be2c60f3342cac3e17c447679a9211cb5d81fae64f4dea37c50c"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.2/waveloom_linux_amd64.tar.gz"
      sha256 "f5416af8dbe7c88c051777e45aa635ae36c763d929e72fbbfaa3a156ad98276e"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
