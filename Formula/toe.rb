class Toe < Formula
  desc "Modal terminal editor for Go development"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "353a7023bd3e7a3ff853a93e4cffb03aed4bb629554eb8be7a47ca9f447a1bec"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"toe"), "./cmd/toe"
  end

  test do
    assert_match "toe health: ok", shell_output("#{bin}/toe --health")
  end
end
