class GitTimeline < Formula
  desc "A small wrapper for git-log which improves readability."
  homepage "https://github.com/hernancerm/git-timeline"
  version "1.1"

  # Binaries are not provided in the GitHub release page for anything other than macOS arm64.
  # When binaries are provided there for other platforms, then this can be removed.
  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hernancerm/git-timeline/releases/download/1.1/git-timeline-macos-arm64.zip"
      sha256 "6ca2d8a9681e1dcb63a93c4b65eee00495ef343e3eac197342d9ba995ff8a4e4"
    end
  end

  def install
    bin.install "git-timeline"
  end

  test do
    system "git-timeline", "--version"
  end
end

