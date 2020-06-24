FROM ubuntu:20.04 as build

RUN apt-get update && apt-get install -y make gcc git

WORKDIR /stress

RUN git clone  https://github.com/ColinIanKing/stress-ng.git

RUN cd stress-ng/ && STATIC=1 make

FROM scratch

COPY --from=build /stress/stress-ng /

ENTRYPOINT ["/stress-ng"]