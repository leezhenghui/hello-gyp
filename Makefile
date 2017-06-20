all: ./build ./helloworld

./build:
	@echo "[Generate Make File]"
	@./tools/gyp/gyp helloworld.gyp --depth=. -f make --generator-output=./build

./helloworld:
	@echo "[Build]"
	@make helloworld -C ./build V=1

./test:
	@echo "[Run Test Cases]"
	@./build/out/Default/helloworld

./clean:
	@echo "[Cleanup]"
	@rm -rf ./build
