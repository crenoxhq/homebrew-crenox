class Crenox < Formula
  desc "Zero-dependency Git pre-commit secret scanner and credentials detector in Go"
  homepage "https://crenoxhq.github.io/crenox/"
  version "2.1.10"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/crenoxhq/crenox/releases/download/v2.1.10/crenox-v2.1.10-darwin-arm64"
      sha256 "d28c7284898d3d665b4d3d7720eea47617f6dc96603a335c8f4ed3516f6cf8ef"

      def install
        bin.install "crenox-v2.1.10-darwin-arm64" => "crenox"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/crenoxhq/crenox/releases/download/v2.1.10/crenox-v2.1.10-darwin-amd64"
      sha256 "97ed7c52d5fb6358c244ec62c27ac2347bce2fe0f1e3bdd1621e5fb9c9cbd2d7"

      def install
        bin.install "crenox-v2.1.10-darwin-amd64" => "crenox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/crenoxhq/crenox/releases/download/v2.1.10/crenox-v2.1.10-linux-amd64"
      sha256 "143805c9ef1152e434108397f53c0e9f69207abebb94eff5a6019b8218829860"

      def install
        bin.install "crenox-v2.1.10-linux-amd64" => "crenox"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/crenoxhq/crenox/releases/download/v2.1.10/crenox-v2.1.10-linux-arm64"
      sha256 "65fe99f580221e26c45eaf693c1b7cc8abe4d28e77ec869b63eb719addb22903"

      def install
        bin.install "crenox-v2.1.10-linux-arm64" => "crenox"
      end
    end
  end

  test do
    system "#{bin}/crenox", "version"
  end
end
