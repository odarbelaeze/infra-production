docker run -v $(pwd):/export frapsoft/openssl version

docker run \
    -v $(pwd):/export \
    frapsoft/openssl aes-256-cbc \
        -K $BUILD_SECRETS_KEY \
        -iv $BUILD_SECRETS_IV \
        -in /export/ci/keys/id_rsa.enc \
        -out /export/ci/keys/id_rsa \
        -d

chmod 600 ci/keys/id_rsa
