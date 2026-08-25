class ToeATNext < Formula
  desc "Modal terminal editor for Go development (unstable channel)"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "c6d621cd7119fc1d75b3b25b6603043bf1adadd54f02416caceada1908ebe558"
  license "MIT"

  keg_only :versioned_formula

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"toe"), "./cmd/toe"
  end

  test do
    assert_match "toe health: ok", shell_output("#{bin}/toe --health")
  end
end
