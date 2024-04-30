FROM mcr.microsoft.com/devcontainers/base:alpine
# Install packages required to build elm
RUN apk --no-cache --update add ghc cabal wget musl-dev zlib-dev zlib-static yarn
RUN apk --no-cache add git git-lfs gpg less openssh patch ncurses-dev ncurses-static

WORKDIR /workspaces

RUN curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz \
    && gunzip elm.gz \
    && chmod +x elm \
    && mv elm /usr/local/bin/ \
    && export PATH=$PATH:/usr/local/bin

# Install pandoc
RUN cabal update && cabal install pandoc citeproc

# Install bun
# RUN curl -fsSL https://bun.sh/install | bash \
#    && export export BUN_INSTALL="$HOME/.bun" \
#    && export PATH=$BUN_INSTALL/bin:$PATH

# Install elm
# RUN yarn global add elm-test elm-format elm-live elm-land
