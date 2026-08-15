# typed: false
# frozen_string_literal: true

class DshTui < Formula
  desc "Terminal client for deepseek-harness (pure client, connects to a dsh host)"
  homepage "https://github.com/Menfre01/dsh-tui"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/dsh-tui/releases/download/v0.0.2/dsh-tui_darwin_arm64.tar.gz"
      sha256 "9020e5f744011f4d5d4d110987dc5b631ce98a4860c26c28d7d445c0bc408a2e"
    else
      url "https://github.com/Menfre01/dsh-tui/releases/download/v0.0.2/dsh-tui_darwin_amd64.tar.gz"
      sha256 "4e7d436f0f99db9d3677e83c5163b10f0b3ed0bf8b0a025cfd258b0e08d86595"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/dsh-tui/releases/download/v0.0.2/dsh-tui_linux_arm64.tar.gz"
      sha256 "f9fb326131f174632d2a8016e02a8b70627714a86acdcae86dd5100526eac8a0"
    else
      url "https://github.com/Menfre01/dsh-tui/releases/download/v0.0.2/dsh-tui_linux_amd64.tar.gz"
      sha256 "28dc9295abb42beb18de5075b795255a35a32f7ccc14e2b4498e86c067090109"
    end
  end

  def install
    bin.install "dsh-tui"
  end

  test do
    assert_match "dsh-tui v#{version}", shell_output("#{bin}/dsh-tui --version")
  end
end
