FROM alpine:latest

RUN apk add \
  build-base \
  cmake \
  crystal \
  git \
  yasm

WORKDIR /libjpeg-turbo
RUN git clone --branch 2.0.x --depth 1 https://github.com/libjpeg-turbo/libjpeg-turbo .
RUN cmake \
  -B build \
  -DCMAKE_INSTALL_PREFIX=/usr \
  -DENABLE_SHARED=OFF \
  -DENABLE_STATIC=ON \
  .
RUN make -C build -j$(nproc) install

WORKDIR /libgd
RUN git clone --branch gd-2.3.3 --depth 1 https://github.com/libgd/libgd .
RUN cmake \
  -B build \
  -DBUILD_SHARED_LIBS=OFF \
  -DBUILD_STATIC_LIBS=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -DENABLE_JPEG=1 \
  -DJPEG_INCLUDE_DIR="/usr/lib" \
  .
RUN make -C build -j$(nproc) install

WORKDIR /gd.cr
COPY . .
RUN crystal build \
  --no-debug \
  --release \
  --static \
  examples/rgb_to_bgr.cr
