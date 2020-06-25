FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html

FROM nginx:alpine
COPY index2.html /usr/share/nginx/html/index2.html




