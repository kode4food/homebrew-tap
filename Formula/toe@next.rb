class ToeATNext < Formula
  desc "Modal terminal editor for Go development (unstable channel)"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "c1bd679466ad56ffd9dd077c604d1d2abe0d70ec5f2b46841e23312e492d0f17"
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
