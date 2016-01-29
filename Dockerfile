FROM g3org3/node
MANTAINER George <7jagjag@gmail.com>

# Set working directory
WORKDIR /app

# First copy pck json
COPY ./package.json /app
RUN source /usr/local/nvm/nvm.sh && npm install --production

# Copy source files to container
COPY . /app

CMD source /usr/local/nvm/nvm.sh && npm start
