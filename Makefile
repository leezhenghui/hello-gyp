all: ./build ./helloworld

./build:
	gyp helloworld.gyp --depth=. -f make --generator-output=./build

./helloworld:
	make helloworld -C ./build V=1

./test:
	./build/out/Default/helloworld

./clean:
	rm -rf ./build
