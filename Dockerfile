# Build the Rust application
FROM rust:latest as builder

# Set the working directory
WORKDIR /usr/src/cpu

# Copy the current directory contents into the container
COPY . .

# Build the Rust program
RUN cargo build --release

#  Create a smaller image with the built binary
FROM ubuntu:22.04

# Set the working directory
WORKDIR /usr/src/cpu

# Copy the built binary from the builder stage
COPY --from=builder /usr/src/cpu/target/release/cpu .

# Run the executable
CMD ["./cpu"]