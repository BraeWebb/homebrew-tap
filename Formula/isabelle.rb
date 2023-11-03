class Isabelle < Formula
  desc "A generic proof assistant"
  homepage "https://isabelle.in.tum.de/"
  version "2023"

  on_macos do
    url "https://isabelle.in.tum.de/dist/Isabelle#{version}_macos.tar.gz"
    sha256 "d15496d92ac7348dff938702099ef6e2bb976aaed6d4d08fb0bad7159f65d7f4"
  end

  on_linux do
    url "https://isabelle.in.tum.de/dist/Isabelle#{version}_linux.tar.gz"
    sha256 "1a8e190ac0f3e6027bb961b954bacd24e75d30f5f5f06f7d14069da57e7746a8"
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "Isabelle#{version}", shell_output("#{bin}/isabelle version")
  end
end
