build:
	./build-image.sh

run:
	docker run -d --rm --name some-jekyll --net host -v `pwd`:/src -w /src myjekyll bundle exec jekyll s

stop:
	docker kill some-jekyll
