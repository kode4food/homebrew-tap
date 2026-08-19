class ToeATNext < Formula
  desc "Modal terminal editor for Go development (unstable channel)"
  homepage "https://github.com/kode4food/toe"
  url "https://github.com/kode4food/toe/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "3bb118454dba36cde987d51f7b87d9b4a218b2860af25ff61d6a9b72fc492a91"
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
