require 'formula'

class Bogofilter < Formula
  homepage 'http://bogofilter.sourceforge.net'
  url 'http://sourceforge.net/projects/bogofilter/files/bogofilter-current/bogofilter-1.2.2/bogofilter-1.2.2.tar.bz2'
  sha1 '6d2860c1d919fe47a8efcfc7fd6de9433872f21d'

  depends_on 'berkeley-db'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
