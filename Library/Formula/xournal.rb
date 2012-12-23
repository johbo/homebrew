require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Xournal < Formula
  homepage 'http://xournal.sourceforge.net'
  url 'http://downloads.sourceforge.net/xournal/xournal-0.4.7.tar.gz'
  version '0.4.7'
  sha1 'd2556bf21bef2df99bef0a6d1cb251d5e0f12d3f'

  depends_on 'pkg-config' => :build
  depends_on 'libgnomecanvas'
  depends_on 'poppler' # TODO: with glib ?? how?
  depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test xournal`.
    system "false"
  end
end
