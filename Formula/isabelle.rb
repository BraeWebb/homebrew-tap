class Isabelle < Formula
  desc "A generic proof assistant"
  homepage "https://isabelle.in.tum.de/"
  version "2022"

  on_macos do
    url "https://isabelle.in.tum.de/dist/Isabelle#{version}_macos.tar.gz"
    sha256 "28444505089e1e88da5c659b3e9b68cf7a234fb8ad9fa74345beacb352cf042d"
  end

  on_linux do
    url "https://isabelle.in.tum.de/dist/Isabelle#{version}_linux.tar.gz"
    sha256 "e7fa6e9d9675d7a56751c00fa81ad0d081e1b6ffbdb0d7f02056853ba77f04c6"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Isabelle#{version}", shell_output("#{bin}/isabelle version")
  end
end
