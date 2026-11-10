class Toe < Formula
  desc "Modal terminal editor for Go development"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.4.16.tar.gz"
  sha256 "b80739d1b584ee0ee4ed3160421eb5942b68f8aa9b848c55b17ceaf6b2709e73"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"toe"), "./cmd/toe"
  end

  test do
    assert_match "toe health: ok", shell_output("#{bin}/toe --health")
  end
end
