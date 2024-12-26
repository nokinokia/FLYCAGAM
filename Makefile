run:
	docker build -t flappybird . && docker run -p 8080:80 -v ./:/usr/share/nginx/html flappybird
	
runn:
	docker build -t flappybird .; docker run -p 8080:80 -v ${PWD}:/usr/share/nginx/html flappybird

deploy:
	git add . && git commit -m "Auto commit" && git push

.PHONY: run deploy runn
