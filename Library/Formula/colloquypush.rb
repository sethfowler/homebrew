require 'formula'

class Colloquypush < Formula
  homepage 'https://github.com/wired/colloquypush'
  url 'https://github.com/wired/colloquypush/tarball/colloquy-znc-1.1'
  sha1 '6e17212680332e9a1975a68a118d0fd4e8883fc2'

  head 'https://github.com/wired/colloquypush.git'

  depends_on 'znc'

  def install
    cd "znc" do
      system "znc-buildmod", "colloquy.cpp"
      system "install", "-m", "0755", "colloquy.so", %x[znc-config --moddir].strip()
    end
  end
end
