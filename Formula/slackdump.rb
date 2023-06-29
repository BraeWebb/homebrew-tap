class Slackdump < Formula
  desc "Command-line tool to export Slack messages"
  homepage "https://github.com/rusq/slackdump"
  version "2.4.0"

  on_macos do
    on_arm do
      url "https://github.com/rusq/slackdump/releases/download/v#{version}/slackdump_macOS_arm64.tar.gz"
      sha256 "9cff8a86d571028948a105519198e7e32291e8e2248371d06bf5c81d7c725acd"
    end
    on_intel do
      url "https://github.com/rusq/slackdump/releases/download/v#{version}/slackdump_macOS_x86_64.tar.gz"
      sha256 "017e6bb05454ad22ef1ea494585c125110aca18073c9a1ee5a9bd740eedec7e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rusq/slackdump/releases/download/v#{version}/slackdump_Linux_arm64.tar.gz"
      sha256 "c5021f13cf3fecb445e02d7dea4d109d2f7c6d832b0647b59fbb3e686c6e9189"
    end
    on_intel do
      url "https://github.com/rusq/slackdump/releases/download/v#{version}/slackdump_Linux_x86_64.tar.gz"
      sha256 "e6df6d728ce2b53eb8b7de400b62e223f3c93a51392c9b3079a16db12c08121c"
    end
  end

  def install
    # move binary to bin
    bin.install "slackdump"
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/slackdump -V")
  end
end
