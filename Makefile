all: zilliqa

zilliqa:
	mkdir -p build
	cd build && \
	cmake -D \
	STATIC=ON -D \
	BUILD_SHARED_LIBS=OFF -D CMAKE_BUILD_TYPE=Debug .. && make -j 6 VERBOSE=1

lookup:
	mkdir -p build
	cd build && \
	cmake -D \
	STATIC=ON -D \
	BUILD_SHARED_LIBS=OFF -D CMAKE_BUILD_TYPE=Debug -D IS_LOOKUP_NODE=1 .. && make -j 6 VERBOSE=1



