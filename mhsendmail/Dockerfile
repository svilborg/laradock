FROM golang:alpine

# Install dependencies
RUN apk --no-cache add git

# Build and install mhsendmail
RUN go get github.com/mailhog/mhsendmail

# Start MailHog server
# ENTRYPOINT ["mhsendmail"]

