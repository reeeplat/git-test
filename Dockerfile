# 1. Node 공식 경량 이미지 사용 (Alpine 버전)
FROM node:16-alpine

# 2. 작업 디렉터리 설정
WORKDIR /usr/src/app

# 3. 패키지 정의 파일만 복사 (의존성 설치 최적화)
COPY package*.json ./

# 4. 패키지 설치
RUN npm install

# 5. 앱 소스 복사
COPY . .

# 6. 컨테이너가 외부에서 접근할 포트 열기
EXPOSE 3000

# 7. 앱 실행
CMD ["node", "index.js"]
