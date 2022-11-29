require "language/node"

class BibtexTidy < Formula
  desc "Cleaner and Formatter for BibTeX files"
  homepage "https://github.com/FlamingTempura/bibtex-tidy"
  url "https://github.com/BraeWebb/bibtex-tidy/archive/refs/tags/v1.8.5.tar.gz"
  version "v1.8.5"
  sha256 "94a96fd5ec5a2e8e9fde4c33e6576fb7c94aecca900428a0fe7e755d1c16a3bc"

  depends_on "node"

  def install
    system "npm", "install"
    system "npm", "run", "build"
    bin.install "./bin/bibtex-tidy"
  end

  test do
    assert_equal "v1.8.5", shell_output("bibtex-tidy -v").strip
  end
end
