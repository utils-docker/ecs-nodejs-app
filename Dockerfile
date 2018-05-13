FROM nginx:1.13.3-alpine

COPY default.conf /etc/nginx/conf.d/
RUN rm -rf /usr/share/nginx/html/*
COPY dist /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
