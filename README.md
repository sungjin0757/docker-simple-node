# Simple-Node-App For Docker Test

<a href="https://velog.io/@sungjin0757/DOCKER-%EA%B8%B0%EB%B3%B8-Dockerfile-%EC%9E%91%EC%84%B1-%EB%B0%8F-%EC%9D%B4%EB%AF%B8%EC%A7%80-%EB%B9%8C%EB%93%9C-%ED%9B%84-%EC%BB%A8%ED%85%8C%EC%9D%B4%EB%84%88-%EC%8B%A4%ED%96%89%ED%95%B4%EB%B3%B4%EA%B8%B0">블로그 참조</a>

## 🚀 STUDY

- Dockerfile 

```
#base Image
FROM node:10

# working directory 명시
WORKDIR /usr/src/app

# 컨테이너 밖의 dependency 및 애플리케이션 파일들을 컨테이너 안(스냅샷)으로 복사
COPY package.json ./

#추가적으로 필요한 설정
RUN npm install

COPY ./ ./

# 컨테이너 실행 시 시작될 명령어
CMD ["node","server.js"]
```

1. `docker build -t`
   -t 태그는 이미지에 유용한 이름을 주는 태그.
   
2. `docker run `
	1. `docker run -p` 
    docker 컨테이너의 포트와 로컬 포트를 매핑 시켜줌.

	2. `docker -p run -v`
	docker volume을 사용하는 것을 의미.
	코드 수정 시 마다 
	도커 이미지를 다시 build해야한다는 번거로움 해결
	copy대신 local file들을 매핑 시켜주는 방식.