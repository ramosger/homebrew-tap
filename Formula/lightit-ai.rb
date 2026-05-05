class LightitAi < Formula
  desc "Light-it AI Stack TUI installer — bootstrap your AI coding environment"
  homepage "https://github.com/ramosger/lightit-ai"
  url "https://github.com/ramosger/lightit-ai/releases/download/v0.1.1/lightit-ai"
  version "0.1.1"
  sha256 "d80e76d93b4b01ea0d4893539f574c5a5f45b3ae3385936076bfe0efb0fa1c04"
  license "MIT"

  depends_on "php"

  def install
    bin.install "lightit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightit-ai --version 2>&1")
  end
end
