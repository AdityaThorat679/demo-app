FROM node
WORKDIR app
COPY . .
RUN npm init
RUN npm install express --save
EXPOSE 3000
CMD ["node", "app.js"]