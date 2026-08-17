class ToeATNext < Formula
  desc "Modal terminal editor for Go development (unstable channel)"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "56fee792d252b98b6e2f6a9e9267383fb1cdf955d3d7800ddd5ec2063ea9d38b"
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
