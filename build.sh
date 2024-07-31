INSTALL_DIR=`pwd`/_install
mkdir -p _build
cd _build

cmake -S ../../zxing-cpp -B zxing-cpp.release -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF
cmake --build zxing-cpp.release -j8 --config Release

cd ..
