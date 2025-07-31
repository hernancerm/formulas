class GitTimeline < Formula
  desc "A small wrapper for git-log which improves readability."
  homepage "https://github.com/hernancerm/git-timeline"
  version "1.0"

  # Binaries are not provided in the GitHub release page for anything other than macOS arm64.
  # When binaries are provided there for other platforms, then this can be removed.
  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hernancerm/git-timeline/releases/download/1.0/git-timeline-macos-arm64.zip"
      sha256 "8a56bf2fc738a8fb97f5b68b3fedcd9dbf95a4a8fe429eadfe443b11a4b848c1"
    end
  end

  def install
    bin.install "git-timeline"
  end

  test do
    system "git-timeline", "--version"
  end
end

