```sh
docker build . -t fir-ubu-apa
```

```sh
# -d를 안 하면 터미널에 컨테이너 안의 로그가 뜬다.
# 그냥 끄면 되기는 하는데 그렇게 되면 해당 터미널을 바로 사용하지 못하는 문제가 발생한다.
docker run -P -d fir-ubu-apa
```
