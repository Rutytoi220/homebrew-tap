class Threefetch < Formula
  desc "Animated 3D fetch tool that spins your distro logo"
  homepage "https://github.com/Rutytoi220/3dfetch"
  url "https://github.com/Rutytoi220/3dfetch/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "4bf34ee3c78776be03fb63d1b77bdfe2fe2ae99ba9e1c6071e351b50d6baad87"
  license "ISC"
  head "https://github.com/Rutytoi220/3dfetch.git", branch: "main"

  depends_on "fastfetch" => :recommended

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "3dfetch", shell_output("#{bin}/3dfetch --version")
  end
end
