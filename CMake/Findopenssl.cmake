find_path(OPENSSL_INCLUDE_DIRS openssl/ssl.h openssl/crypto.h)

find_library(OPENSSL_SSL_LIBRARIES ssl)
find_library(OPENSSL_CRYPTO_LIBRARIES crypto)

set(OPENSSL_LIBRARIES ${OPENSSL_SSL_LIBRARIES} ${OPENSSL_CRYPTO_LIBRARIES})

find_package_handle_standard_args(openssl DEFAULT_MSG OPENSSL_LIBRARIES OPENSSL_INCLUDE_DIRS)

mark_as_advanced(OPENSSL_INCLUDE_DIRS OPENSSL_LIBRARIES)