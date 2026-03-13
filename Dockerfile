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
    ca-certificates \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# install Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install plugins and theme
RUN git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions \
      /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
    && git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting \
      /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
    && git clone --depth=1 https://github.com/romkatv/powerlevel10k \
      /root/.oh-my-zsh/custom/themes/powerlevel10k

# enable plugins and theme
RUN sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' /root/.zshrc \
    && sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' /root/.zshrc

# persist powerlevel10k config in volume
RUN mkdir -p /root/.config/zsh \
    && echo 'export POWERLEVEL9K_CONFIG_FILE=/root/.config/zsh/.p10k.zsh' >> /root/.zshrc

RUN mkdir /workspace
WORKDIR /workspace
CMD ["zsh"]
