#!/bin/bash

docker run -it -v /vagrant/code-server:/home/coder/.local/share/code-server codercom/code-server:latest code-server --install-extension James-Yu.latex-workshop

