FROM ubuntu:latest

LABEL maintainer="your-email@example.com"

ENV DEBIAN_FRONTEND=non-interactive
ENV PATH="/usr/local/go/bin:${PATH}"
RUN apt-get update \
    && apt-get install -y \
       curl \
       jq \
       python3-pip \
       wget \
    && wget "https://go.dev/dl/go1.20.3.linux-amd64.tar.gz" \
    && tar -C /usr/local -xvf go1.20.3.linux-amd64.tar.gz \
    && rm go1.20.3.linux-amd64.tar.gz \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV GOPATH="/go"
ENV PATH="${GOPATH}/bin:${PATH}"

RUN go install github.com/ffuf/ffuf/v2@latest
RUN go install github.com/tomnomnom/unfurl@latest
WORKDIR /app
COPY . .


RUN chmod -R 777 .
RUN chmod +x /entrypoint.sh
RUN chmod +x -R scripts/

CMD ["/command.sh"]
