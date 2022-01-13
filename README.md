# django-blog
djangoで作ったブログ

# Docker環境構築

- プロジェクト生成

```
docker-compose run web django-admin startproject django_blog .
```

プロジェクト名にハイフンが使えない模様

- DBへの接続設定

`django_blog/settings.py`

```py
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': 'db',
        'PORT': 5432,
    }
}
```

docker-compose.ymlの設定内容と合わせる

- コンテナを作成して起動

```
docker-compose up -d
```

`-d`でバックグラウンド実行

- ブラウザで確認

`localhost:8000`にアクセス

- 対象のimage情報表示

```
docker-compose images
```

- コンテナの一覧を表示

```
docker-compose ps
```

- コンテナの停止、およびそのコンテナとネットワークの削除

```
docker-compose down
```

# 参考

> [クィックスタート: Compose と Django](https://docs.docker.jp/compose/django.html)

※これだけだと環境変数の設定が足りずエラーになるらしい

> [DockerでDjangoローカル開発環境を爆速構築](https://michinoku-se.org/docker-django/)

> [docker-compose コマンドまとめ](https://qiita.com/wasanx25/items/d47caf37b79e855af95f)