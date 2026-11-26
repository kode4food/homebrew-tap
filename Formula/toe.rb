class Toe < Formula
  desc "Modal terminal editor for Go development"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.4.18.tar.gz"
  sha256 "c3fdfd7ba5af793bc81be1ad8c2c27c7fc3d968ddd2926c6e5289d2d05f512d1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"toe"), "./cmd/toe"
  end

  test do
    assert_match "toe health: ok", shell_output("#{bin}/toe --health")
  end
end
