FROM scratch
ADD al2022-container-2022.0.20220419.0-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-30a96c4f6cb306f42c34e07a80efcfbe6980633a9ac34327014a87423221b673.tar.gz" \
 && echo "eb2de792ff0fb280db260db9b6f4c55b40e52059337fc4c1a293f79f2b4e45bf  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
