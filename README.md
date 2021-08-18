# Simple-Node-App For Docker Test

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

	1. docker built -t
	2. docker run
		1. docker run
		2. docker -v run
		docker volume을 사용하는 것을 의미.
		코드 수정 시 마다 
		도커 이미지를 다시 build해야한다는 번거로움 해결
		copy대신 local file들을 매핑 시켜주는 방식