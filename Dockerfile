FROM node:16.14.2  
# Seeting working directory 
WORKDIR  /home/akshay_virkhare/NodeProject/myapp

# Installing dependencies
COPY package*.json ./

RUN npm install

# COpying source filr
COPY . .

# Building the app
RUN npm run build

# 80 port exposed 
EXPOSE 80

# Staring the app
CMD ["npm", "start"]