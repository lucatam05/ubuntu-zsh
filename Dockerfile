FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    zsh \
    git \
    curl \
    nano \
    vim \
    htop \
    psmisc \
    procps \
    man \
    less \
    tree \
    bash-completion \
    ca-certificates \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install plugins
RUN git clone https://github.com/zsh-users/zsh-autosuggestions \
    /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions

RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting \
    /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# install theme
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k \
    /root/.oh-my-zsh/custom/themes/powerlevel10k

# enable plugins
RUN sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' /root/.zshrc

# enable theme
RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' /root/.zshrc

CMD ["zsh"]