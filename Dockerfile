FROM g3org3/node

# Set working directory
WORKDIR /app

# First copy pck json
COPY ./package.json /app
RUN source /usr/local/nvm/nvm.sh && npm install --production

# Copy source files to container
COPY . /app

# Copy superviosr conf file
COPY app.conf /etc/supervisor/conf.d/app.conf

CMD supervisord -c /etc/supervisor/supervisord.conf -n
