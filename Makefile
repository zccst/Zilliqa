all: static

static:
	mkdir -p build
	cd build && \
	cmake -D \
	STATIC=ON -D \
	BUILD_SHARED_LIBS=OFF -D CMAKE_BUILD_TYPE=Debug .. && make -j 6 VERBOSE=1

dynamic:
	mkdir -p dynamic
	cd dynamic && \
	cmake -D \
	STATIC=OFF -D \
	BUILD_SHARED_LIBS=OFF -D CMAKE_BUILD_TYPE=Debug .. && make -j 6 VERBOSE=1

zilliqa:
	cd build && make -j 6 VERBOSE=1

