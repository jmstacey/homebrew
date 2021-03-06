class Screenbrightness < Formula
  desc "Change OS X display brightness from the command-line"
  homepage "https://github.com/jmstacey/screenbrightness"
  url "https://github.com/jmstacey/screenbrightness/archive/1.1.tar.gz"
  sha256 "05c6ec76f50a0d2c6dd9d3597311c97ff3c23b2da2501eed9950e89bf8f079fa"

  bottle do
    cellar :any
    sha1 "af2ab5c5ba668e9be32b95ed3ac581423e14b1b8" => :yosemite
    sha1 "c780916b31a50d6a599b1c6238548a8db3a008a1" => :mavericks
    sha1 "9cf03ce35a3cb24a25bd28b9a213963f64a3dfdd" => :mountain_lion
  end

  def install
    system "make"
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "#{bin}/screenbrightness", "-l"
  end
end
