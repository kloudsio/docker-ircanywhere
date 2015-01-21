FROM dockerfile/nodejs
# replace this with your application's default port

WORKDIR /data
RUN git clone https://github.com/ircanywhere/ircanywhere

WORKDIR ircanywhere
RUN git checkout development

RUN mkdir build
RUN wget http://downloads.mongodb.org/linux/mongodb-linux-x86_64-2.6.6.tgz --directory-prefix=./build
RUN tar -zxvf build/mongodb-linux-x86_64-2.6.6.tgz -C build/
RUN mv build/mongodb-linux-x86_64-2.6.6 build/mongodb

RUN npm install -g gulp
ADD config.js /data/ircanywhere/

EXPOSE 3000

