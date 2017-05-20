FROM ubuntu:14.04

MAINTAINER Viliam Rockai <viliam.rockai@gmail.com>

RUN echo 'ls ${1} > $(pwd)/listing.txt' > /usr/bin/dockstore_ls
RUN chmod +x /usr/bin/dockstore_ls

CMD ["/bin/bash"]
