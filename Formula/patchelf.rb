class Patchelf < Formula
    desc "PatchELF is a small utility to modify the dynamic linker and RPATH of ELF executables."
    homepage "http://nixos.org/patchelf.html"
    url "https://nixos.org/releases/patchelf/patchelf-0.9/patchelf-0.9.tar.gz"
    sha256 "b0a96997382ec3597aee1376a9f6dfed04053c83f2b3d1062cc7b7cec4c6c95b"

    def install
        system "clang++", 
               "-DPACKAGE_STIRNG=\\\"0.9\\\"",
               "-DPAGESIZE=4096",
               "-std=c++14",
               "-O3",
               "-o",
               "patchelf",
               "src/patchelf.cc"
        bin.install "patchelf"
    end
end
