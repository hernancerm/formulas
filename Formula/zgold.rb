class Zgold < Formula
  desc "Golden testing on stdout/stderr with Zsh."
  homepage "https://github.com/hernancerm/zgold"
  url "https://github.com/hernancerm/zgold.git", using: :git, tag: "0.5.1"
  version "0.5.1"

  depends_on "git-delta"

  def install
    system "zsh", "-c", "zcompile ./zgold"
    bin.install "zgold", "zgold.zwc"
  end

  test do
    system "zgold", "--version"
  end
end
