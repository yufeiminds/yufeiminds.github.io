#
# Copyright 2016 Yufei Li <yufeiminds@163.com
#

help:
	@echo "watch       Run stylus watcher"
	@echo "sync        Publish to git pages"

watch:
	stylus src/stylus --out dev --watch

public:
	cp -rf dev/assets dist/
	cp src/index.html dist/
	cp dev/main.css dist/
	ghp-import dist -p -n -b master
