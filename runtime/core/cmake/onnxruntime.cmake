set(ONNX_VERSION "1.18.0")
if(CMAKE_SYSTEM_PROCESSOR MATCHES "aarch64")
  set(ONNX_URL "https://github.com/microsoft/onnxruntime/releases/download/v${ONNX_VERSION}/onnxruntime-linux-aarch64-${ONNX_VERSION}.tgz")
  set(URL_HASH "SHA256=12d189f78235216b22591e1d0032b85e090f70f63b46955d5d34193566779e56")
else()
  set(ONNX_URL "https://github.com/microsoft/onnxruntime/releases/download/v${ONNX_VERSION}/onnxruntime-linux-x64-${ONNX_VERSION}.tgz")
  set(URL_HASH "SHA256=fa4d11b3fa1b2bf1c3b2efa8f958634bc34edc95e351ac2a0408c6ad5c5504f0")
endif()

FetchContent_Declare(onnxruntime
  URL ${ONNX_URL}
  URL_HASH ${URL_HASH}
)
FetchContent_MakeAvailable(onnxruntime)
include_directories(${onnxruntime_SOURCE_DIR}/include)
link_directories(${onnxruntime_SOURCE_DIR}/lib)
