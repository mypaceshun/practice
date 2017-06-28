# vi: set noexpandtab sw=4 :
CONTEINER_NAME = mongod
VENV = mongoenv

$(VENV):
	python3 -m venv $(VENV) && . ./$(VENV)/bin/activate && pip install --upgrade pip && pip install -U -r requirements.txt
	ln -s ./$(VENV)/bin/activate ./activate
	@echo "********************* Please execute '. activate' ****************************"

.PHONY: rebuild
rebuild:
	rm -rf ./$(VENV) ./activate
	make $(VENV)

.PHONY: run
run:
	docker run --name $(CONTEINER_NAME) -p 27017:27017 -d mongo

.PHONY: start
start:
	docker start $(CONTEINER_NAME)

.PHONY: stop
stop:
	docker stop $(CONTEINER_NAME)

.PHONY: rm
rm: stop
	docker rm $(CONTEINER_NAME)
