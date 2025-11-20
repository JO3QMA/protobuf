# Protobuf Repository

Protobuf files and generated code management using [Buf](https://buf.build).

## Structure

- `proto/`: Source .proto files
- `gen/`: Generated code (Go, TypeScript, Ruby)
- `buf.yaml`: Buf module configuration
- `buf.gen.yaml`: Code generation configuration

## Usage

### Adding new protos

Add `.proto` files in `proto/` directory.

### Generation

Run `buf generate` locally.

### CI/CD

- **CI**: Runs `buf lint` and `buf breaking` on Pull Requests.
- **Generate**: Runs `buf generate` and commits changes on Main merge and PR creation.
