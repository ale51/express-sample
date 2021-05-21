FROM node:12

WORKDIR /user/src/app

COPY package*.json ./

RUN npm install
# 本番用にコードを作成している場合
# RUN npm install --only=production

COPY . .

EXPOSE 8080

CMD bash -c "npm run dev"