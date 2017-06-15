all: ./build ./helloworld

./build:
	gyp hello-world.gyp --depth=. -f make --generator-output=./build

./helloworld:
	make helloworld -C ./build V=1

./test:
	./build/out/Default/helloworld
