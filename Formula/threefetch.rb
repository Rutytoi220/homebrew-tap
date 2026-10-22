class Threefetch < Formula
  desc "Animated 3D fetch tool that spins your distro logo"
  homepage "https://github.com/Rutytoi220/3dfetch"
  url "https://github.com/Rutytoi220/3dfetch/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "8c30ee7d1c93727fbd2b105dd5e097cf81551432105fa14abecbecb9a25bac6b"
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
