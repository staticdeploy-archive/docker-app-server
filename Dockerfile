FROM node:alpine
RUN yarn global add @staticdeploy/app-server@1.0.2 && yarn cache clean
ENV NODE_ENV production
ENV APP_SERVER_PORT 80
EXPOSE 80
CMD ["app-server"]
