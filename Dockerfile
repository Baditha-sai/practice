FROM ubuntu:20.04

# Install packages without cleaning cache
RUN apt-get update && \
    apt-get install -y python3 python3-pip curl vim

WORKDIR /app

COPY . .

# Install dependencies as root
RUN pip3 install -r requirements.txt

# Runs as root (not recommended)
CMD ["python3", "app.py"]
