class Toe < Formula
  desc "Modal terminal editor for Go development"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.4.6.tar.gz"
  sha256 "5b2823fa55937d9b2c3b48e8c224732ccf4c30b5024943fa128aaeeb90e2a450"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"toe"), "./cmd/toe"
  end

  test do
    assert_match "toe health: ok", shell_output("#{bin}/toe --health")
  end
end
