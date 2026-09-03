class Toe < Formula
  desc "Modal terminal editor for Go development"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "b61ec4320b5f5694d006b01248935afc96e8c143f03b8e9f10bfb81dcfdd8b38"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"toe"), "./cmd/toe"
  end

  test do
    assert_match "toe health: ok", shell_output("#{bin}/toe --health")
  end
end
