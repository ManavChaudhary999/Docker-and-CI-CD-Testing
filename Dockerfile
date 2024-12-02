# Step 1: Use a lightweight Node.js base image
FROM node:18-alpine

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the entire application code
COPY . .

# Step 6: Set the environment variable for Prisma ORM
# ENV DATABASE_URL="postgresql://<project_name>:<password>@ep-billowing-boat-a55dr7pi.us-east-2.aws.neon.tech/assignment?sslmode=require"

# Step 7: Run Prisma generate to prepare Prisma Client
RUN npx prisma generate

# Step 8: Expose the app's port
EXPOSE 3000

# Step 9: Define the startup command
CMD ["npm", "run", "dev"]
