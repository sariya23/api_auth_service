gen_auth:
	mkdir -p gen/auth && \
	protoc -I ./proto proto/auth/auth.proto \
		--go_out ./gen \
		--go_opt paths=source_relative \
		--go-grpc_out ./gen \
		--go-grpc_opt paths=source_relative \
		--grpc-gateway_out ./gen \
		--grpc-gateway_opt paths=source_relative \
		--openapiv2_out ./swagger
.PHONY: gen_auth

gen_user:
	mkdir -p gen/user && \
	protoc -I ./proto proto/user/user.proto \
		--go_out ./gen \
		--go_opt paths=source_relative \
		--go-grpc_out ./gen \
		--go-grpc_opt paths=source_relative \
		--grpc-gateway_out ./gen \
		--grpc-gateway_opt paths=source_relative \
		--openapiv2_out ./swagger
.PHONY: gen_user

clean:
	rm -rf gen/*
