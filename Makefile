clear_env_cache:
	cargo clean

install:
	cargo fetch

run:
	cargo run

test:
	cargo test --all

lint:
	cargo clippy --all-targets --all-features -- -D warnings

format:
	cargo fmt

git_init:
	git init
	git add --all
	git commit -m "init project"
	git checkout -b develop

clean:
	cargo clean
	rm -rf target

build:
	cargo build --release

publish:
	cargo publish
