class GitTimeline < Formula
  desc "A small wrapper for git-log which improves readability."
  homepage "https://github.com/hernancerm/git-timeline"
  version "2.0"

  # Binaries are not provided in the GitHub release page for anything other than macOS arm64.
  # When binaries are provided there for other platforms, then this can be removed.
  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hernancerm/git-timeline/releases/download/2.0/git-timeline-macos-arm64.zip"
      sha256 "0766045dfd98f606bdb349bf79096d754ccce54c64471ab290edf75575652753"
    end
  end

  def install
    bin.install "git-timeline"
  end

  test do
    system "git-timeline", "--version"
  end
end

