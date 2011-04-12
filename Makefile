vendor:
	mkdir vendor

vendor/ringojs: vendor
	git clone git://github.com/ringo/ringojs.git vendor/ringojs

vendor/ringojs/run.jar: vendor/ringojs
	cd vendor/ringojs && ant jar

build:
	mkdir build

build/jscat.jar: build vendor/ringojs/run.jar
	jar cvmf src/manifest.txt build/jscat.jar -C vendor/ringojs/build/classes org/ringojs/tools/launcher
	jar uvf build/jscat.jar -C vendor/ringojs lib

clean:
	-rm build/jscat.jar

clean-all:
	-rm -rf vendor
