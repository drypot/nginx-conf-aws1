# Nginx Conf

라이브 서버 aws1에서 사용하는 nginx 설정.

## 설치

aws1 로그인.

    $ cd /data/nginx
    $ git clone git clone git@github.com:drypot/nginx-conf-aws1.git
    $ cd nginx-conf-aws1

## nginx 기동

    $ bin/d-nginx-run.sh

## 사이트 추가

어플리케이션별 `sites/***.conf` 를 생성.

필요한 웹사이트 public 디렉토리들을 생성.

사이트를 활성화하려면 `sites/enalbed` 폴더에 심볼릭 링크를 생성.

    $ ln -s ../abc.conf sites/enabled

nginx 설정을 리로딩.

    $ bin/d-nginx-reload.sh

웹사이트 접근해 보고 정상적으로 Bad Gateway 오류 뜨는지 확인한다.

## 인증서 생성

어플리케이션별 `bin/d-certbot-new-***.sh` 생성.

위 스크립트를 실행해서 인증서를 생성한다.

## cron 설정

cron 으로 정기적으로 인증서를 업데이트할 수 있다.

cron.md 참고.

## 기타

자세한 내용은 아래를 참고.

<https://github.com/drypot/web-memo>
