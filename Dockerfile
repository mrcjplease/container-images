FROM scratch
ADD amzn-container-minimal-2018.03.0.20220419.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-3218b580f105e26d79916fd58a49937f9ae8cd25196a762d6e47d1d6c891e437.tar.gz" \
 && echo "c2cc764bbb63b9eaba23de4bd298faf993093ba4d8098eed411753d88dc9cde6  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
