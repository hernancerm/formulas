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
      sha256 "1b76836be3f3c0050ffa299ea1f4cef64bef4270779fb6e6571ac2355b328fa3"
    end
  end

  def install
    bin.install "git-timeline"
  end

  test do
    system "git-timeline", "--version"
  end
end

