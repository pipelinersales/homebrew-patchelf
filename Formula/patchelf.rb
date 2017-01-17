class Patchelf < Formula
    desc "PatchELF is a small utility to modify the dynamic linker and RPATH of ELF executables."
    homepage "http://nixos.org/patchelf.html"
    url "https://nixos.org/releases/patchelf/patchelf-0.9/patchelf-0.9.tar.gz"
    sha256 "f2aa40a6148cb3b0ca807a1bf836b081793e55ec9e5540a5356d800132be7e0a"

    def install
        system "clang++", 
               "-DPACKAGE_STRING=\\\"0.9\\\"",
               "-DPAGESIZE=4096",
               "-std=c++14",
               "-O3",
               "-o",
               "patchelf",
               "src/patchelf.cc"
        bin.install "patchelf"
    end
end
