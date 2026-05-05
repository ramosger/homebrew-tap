class LightitAi < Formula
  desc "Light-it AI Stack TUI installer — bootstrap your AI coding environment"
  homepage "https://github.com/ramosger/lightit-ai"
  url "https://github.com/ramosger/lightit-ai/releases/download/v0.1.1/lightit-ai"
  version "0.1.1"
  sha256 "2fd9425220cfae055cd3a1b015a15eb8b522ce1315e65995d07f74e319461b2a"
  license "MIT"

  depends_on "php"

  def install
    bin.install "lightit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightit-ai --version 2>&1")
  end
end
