FROM n8nio/n8n
USER root
RUN apk add --update python3 py3-pip nvim git lazygit 

RUN git clone https://github.com/LazyVim/starter ~/.config/nvim
# Download the latest installer
ADD https://astral.sh/uv/install.sh /uv-installer.sh

# Run the installer then remove it
RUN sh /uv-installer.sh && rm /uv-installer.sh
# installs requests library
ENV PATH="/root/.cargo/bin/:$PATH"

# RUN uv venv
# RUN uv pip install requests g4f openai
# upgrades pip (not necessary)
# RUN python3 -m pip install --upgrade pip

