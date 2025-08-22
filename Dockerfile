FROM nginx:alpine

WORKDIR /Docker_html
 
COPY index.html .

EXPOSE 8080

CMD ["echo","This is a HTML FILE"]
