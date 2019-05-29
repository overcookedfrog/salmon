FROM ubuntu:18.04
RUN apt-get update && apt-get install -y libtbb2 libgomp1 && apt-get clean
COPY --from=combinelab/salmon:0.13.1 /usr/local/bin/salmon /usr/local/bin/salmon
