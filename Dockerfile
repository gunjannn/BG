FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
Expose 80


FROM nginx:alpine
COPY index2.html /usr/share/nginx/html/index2.html
Expose 80

