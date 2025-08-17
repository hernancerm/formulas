class GitTimeline < Formula
  desc "Git log wrapper improving readability."
  homepage "https://github.com/hernancerm/git-timeline"
  version "2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hernancerm/git-timeline/releases/download/2.0/git-timeline-macos-arm64.tar.gz"
      sha256 "28b561ce14a4b88043f3b350c707cf2990c80048ce625ad8ff353003e61b75d1"
    elsif
      url "https://github.com/hernancerm/git-timeline/releases/download/2.0/git-timeline-macos-x86.tar.gz"
      sha256 "f884a9da676c165f0dab024c53e9d9ef00ce59d6a1184c4f44c05cc7380f9a6a"
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
