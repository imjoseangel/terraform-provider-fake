default: build plan

clean:
	go clean -modcache

deps:
	go get github.com/hashicorp/terraform
	go install github.com/hashicorp/terraform

build:
	go build -o terraform-provider-fake .

test:
	go test -v .

fmtcheck:
	echo "Placeholder"

plan:
	@terraform plan
