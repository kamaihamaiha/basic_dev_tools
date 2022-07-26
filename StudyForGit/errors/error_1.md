### git clone 时 OpenSSL SSL_read: Connection was reset, errno 10054

**解除 SSL 验证**:

```shell
git config --global http.sslVerify "false"
```

