# Agents.md

## 概要

本リポジトリは **GitHub Actions** で `.proto` の品質チェックと、必要な **スタブ（生成コード）** の生成を自動化しています。
基本的には **`.proto` を記述して PR を作成するだけ** で、CI が走り、生成（`buf generate`）まで行われる想定です。

## 何をすればよいか（開発フロー）

- **`.proto` を追加/変更**: `proto/` 配下に `.proto` を追加・更新します
- **PR を作成**: PR を作ると GitHub Actions の CI が実行されます
  - **CI**: `buf lint` / `buf breaking` を実行します
  - **Generate**: `buf generate` を実行し、生成物（スタブ）を最新化します（運用により自動コミット、または差分をPR側で反映）

## 生成物について

- **生成先ディレクトリ**:
  - Go: `gen/go`
  - TypeScript: `gen/ts`
  - Ruby: `gen/ruby`
  - OpenAPI: `gen/openapi`
  - Doc: `gen/doc`
- **注意**: `gen/` 配下は生成物です。手で直接編集せず、`.proto` を修正して生成結果を更新してください。

## ローカルで確認したい場合

必要に応じてローカルでも実行できます。

- `buf lint`
- `buf breaking`
- `buf generate`


