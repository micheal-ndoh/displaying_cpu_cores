FROM rust:latest as builder

# Set the working directory
WORKDIR /usr/src/cpu

# Copy the current directory contents into the container
COPY . .

RUN cargo build --release

FROM ubuntu:22.04

# Set the working directory
WORKDIR /usr/src/cpu

# Copy the built binary from the builder stage
COPY --from=builder /usr/src/cpu/target/release/cpu .

CMD ["./cpu"]