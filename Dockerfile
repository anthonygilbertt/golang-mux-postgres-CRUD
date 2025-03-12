# Use an official Golang image as a parent image
FROM golang:1.16
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . .

# Download and Install the dependencies
RUN go get -d -v ./...

# Build the Go app
RUN go build -o api .
# Expose port 8080 to the outside world
EXPOSE 8000
# Run the executable
CMD ["./api"]
