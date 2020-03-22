# Rails5.2.3のDocker環境

# Usage

```bash
git clone https://github.com/piyoraik/rails-docker.git
cd rails-docker
mkdir app
docker-compose build
docker-compose up -d
```
NeoBundleを導入している為、.vimrcに記載するとプラグインを導入できます。 
現在はThe NERD Treeのみ導入しておりますが今後色々追加予定です。 
また、作業ディレクトリ内のsshフォルダに暗号鍵がなければDockerfileの最後の2行は消して頂いて構いません。

# Note

Ruby : 2.5
Rails: 5.2.3

