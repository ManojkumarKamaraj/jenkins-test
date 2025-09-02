FROM nginx:alpine

WORKDIR /
 
COPY index.html .

EXPOSE 5000

CMD ["echo","This is a HTML FILE"]
