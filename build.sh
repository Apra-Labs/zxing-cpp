INSTALL_DIR=`pwd`/_install
mkdir -p _build
cd _build

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=$INSTALL_DIR -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DBUILD_WRITERS=OFF -DBUILD_EXAMPLES=OFF -DBUILD_BLACKBOX_TESTS=OFF ../
cmake --build . -- -j "$(($(nproc) - 2))"

make install

cd ..