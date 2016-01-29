FROM g3org3/node

COPY . /app
COPY app.conf /etc/supervisor/conf.d/app.conf

# Install app dependencies
WORKDIR /app
RUN source /usr/local/nvm/nvm.sh && npm install --production
