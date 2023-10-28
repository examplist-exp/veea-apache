FROM ubuntu:20.04

EXPOSE 9650

RUN \
  # DEBIAN_FRONTEND=noninteractive를 붙여야 나중에 국가 물어보는 거 넘어갈 수 있다.
  # 속도도 더 빠른 것 같다.
  # && 붙여야 명령어들이 구분이 된다.
  DEBIAN_FRONTEND=noninteractive apt update -y && \
  DEBIAN_FRONTEND=noninteractive apt install apache2 -y && \
  DEBIAN_FRONTEND=noninteractive apt install vim -y

COPY ./ports.conf /etc/apache2/ports.conf
COPY ./exe.sh /my-app/exe.sh

CMD [ "/my-app/exe.sh" ]
