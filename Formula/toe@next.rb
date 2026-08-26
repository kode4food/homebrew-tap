class ToeATNext < Formula
  desc "Modal terminal editor for Go development (unstable channel)"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "4875c0a6640c382ff8e974d559d76c7bc9157422cfdfad23499112e6baed3f02"
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
