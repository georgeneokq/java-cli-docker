# Java CLI Docker

Just because I don't want to install Java on my machine.

## Usage

1. Build

```bash
docker build -t java-app .
```

2. Run

Volume the src/ directory so you never have to build again.
Run with `-it` flag for interactive CLI apps.
Run with `-e MAIN_CLASS` explicitly so you can easily change the app's entrypoint.

Powershell:
```bash
docker run --rm -it -v "${PWD}/src/:/app/src" -e MAIN_CLASS=com.example.Main java-app
```

Bash:
```bash
docker run --rm -it -v "$(pwd)/src:/app/src" -e MAIN_CLASS=com.example.Main java-app
```
