FROM scratch
ADD amzn2-container-raw-2.0.20220426.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-27e5885b1b2e681d27e9e8c451079b8f7f6444b820900db76e8e1f583d454a37.tar.gz" \
 && echo "fae8bd9cc002cf6ab3af9d777f1bc2646993e0340f2ffac4ddc984a5821a77c2  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
