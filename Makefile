all: ./build ./helloworld

./build:
	@./tools/gyp/gyp helloworld.gyp --depth=. -f make --generator-output=./build

./helloworld:
	@make helloworld -C ./build V=1

./test:
	@./build/out/Default/helloworld

./clean:
	@rm -rf ./build
