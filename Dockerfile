FROM node:alpine3.19
ENV NODE_ENV=production
RUN apk add --no-cache git
RUN git clone https://github.com/KING-DAVIDX/X-KING
WORKDIR /KING-DAVIDX
RUN yarn install --production
EXPOSE 8000
CMD ["npm", "start"]
