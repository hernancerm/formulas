class GitTimeline < Formula
  desc "Git log wrapper improving readability."
  homepage "https://github.com/hernancerm/git-timeline"
  version "2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hernancerm/git-timeline/releases/download/2.1/git-timeline-macos-arm64.tar.gz"
      sha256 "1077302c0e16d37ea2aaee22728b62aae7c4e2cbbf9c07bee09af0289444f9cd"
    elsif
      url "https://github.com/hernancerm/git-timeline/releases/download/2.1/git-timeline-macos-x86.tar.gz"
      sha256 "2b4953cabe544015d7c652c6b29ecae27258a6bed2166778fb09ecaf60fae23f"
    end
  end

  on_linux do
    odie "No pre-compiled binaries. Build on your own or use the uber JAR in the release: https://github.com/hernancerm/git-timeline"
  end

  def install
    bin.install "git-timeline"
  end

  test do
    system "git-timeline", "--version"
  end
end
