FROM node:17-alpine3.12 as build

RUN npm install -g pnpm

WORKDIR /app

COPY src .

RUN [ ! -f dist ] && pnpm install && pnpm build

# =============================================================================
FROM nginx:alpine as final

COPY --from=build /app/dist/ /usr/share/nginx/html

EXPOSE 80

STOPSIGNAL SIGQUIT

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD [ "nginx","-g","daemon off;" ]
