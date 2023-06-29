
# col-kubernetes-k8s-resources


## Utils

### Convert file content to Base64 format in one line

```shell
# Linux
cat file | base64 -w 0

# macOS
cat file | base64 -b 0
```

### Generate a random string for password(or token) with fixed length

```shell
cat /dev/urandom | tr -dc A-Za-z0-9 | head -c 24
```
