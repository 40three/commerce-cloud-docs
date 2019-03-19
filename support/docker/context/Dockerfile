# copy this to /dist (after ng build) and build image
FROM nginx:alpine

COPY ./html/ /app/html
COPY ./entrypoint.sh /app/
COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN chmod 0755 /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]