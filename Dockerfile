FROM nginx:latest
WORKDIR /usr/src/app
RUN rm -rf /usr/share/nginx/html/*
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/sriram-R-krishnan/devops-build
RUN cp -r /usr/src/app/devops-build/build/* /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
