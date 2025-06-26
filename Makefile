REGISTORY=asia-northeast1-docker.pkg.dev
IMAGE=mleg-283307/mizuki-test-app/test-app

.PHONY: auth
auth:
	gcloud auth login

.PHONY: configure
configure:
	gcloud auth configure-docker $(REGISTORY)

.PHONY: build
build:
	docker build --no-cache -t $(REGISTORY)/$(IMAGE) .

.PHONY: push
push:
	docker push $(REGISTORY)/$(IMAGE)