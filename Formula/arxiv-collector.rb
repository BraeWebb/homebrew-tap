class ArxivCollector < Formula
  include Language::Python::Virtualenv

  desc "A little Python script to collect LaTeX sources for upload to the arXiv."
  homepage "https://github.com/djsutherland/arxiv-collector"
  url "https://github.com/BraeWebb/arxiv-collector/archive/refs/tags/0.4.2.tar.gz"
  version "0.4.2"
  sha256 "14b1668fd9ff1a6115c73552acaf108d6974183dc897d1bf247b03424b71b826"

  def install
    virtualenv_install_with_resources :using => "python3"
  end

  test do
    assert_match "arxiv-collector #{version}", shell_output("#{bin}/arxiv-collector --version")
  end
end
