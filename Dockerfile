FROM nginx:latest

COPY index.html.template /usr/share/nginx/html/index.html.template
COPY docker/40-render-index.envsh /docker-entrypoint.d/40-render-index.envsh
RUN chmod +x /docker-entrypoint.d/40-render-index.envsh

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
