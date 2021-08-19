#base Image
FROM node:10

WORKDIR /usr/src/app

COPY package.json ./

#추가적으로 필요한 설정
RUN npm install

COPY ./ ./

CMD ["node","index.js"]