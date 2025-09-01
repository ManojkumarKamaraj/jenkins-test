FROM nginx:alpine

WORKDIR /Docker_html
 
COPY index.html .

EXPOSE 5000

CMD ["echo","This is a HTML FILE"]
