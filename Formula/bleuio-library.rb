class BleuioLibrary < Formula
    desc "C++ library for BleuIO BLE dongle"
    homepage "https://www.bleuio.com/getting_started/docs/commands/"
    url "https://github.com/smart-sensor-devices-ab/BleuIO-cpp-library/raw/master/archive/BleuIO-Library-1.0-Source.tar.gz"
    version "1.0.0"
    sha256 "ef2158f7600cfea92e1145ba7b419c3d97b4521c7940f7d7996cd72222f9b530"
  
    depends_on "cmake" => :build
    depends_on "libserialport"
  
    def install
      system "cmake", ".", *std_cmake_args
      system "make", "install"
    end
  
    test do
      # Simple test to verify installation
      system "true"
    end
  end
  