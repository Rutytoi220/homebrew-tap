class Fetch3d < Formula
  desc "Animated 3D fetch tool that spins your distro logo"
  homepage "https://github.com/Rutytoi220/3dfetch"
  url "https://github.com/Rutytoi220/3dfetch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "071affef13506b5d62d597d09860b52d0a929e6703a42a3f1cc980fc2b0d4def"
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
