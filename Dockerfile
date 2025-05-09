# Step 1: Use an official Node.js image as the base image
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /app
# Step 3: Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install
# Step 5: Copy the rest of the application code to the container
COPY . .

# Step 6: Expose the port your app is listening on
EXPOSE 3000

# Step 7: Define the command to run the app
CMD ["npm", "start"]
