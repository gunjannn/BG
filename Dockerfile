FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
Expose 8080


FROM nginx:alpine
COPY index2.html /usr/share/nginx/html/index2.html
Expose 8080

