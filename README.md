# starter-jupyternotebook

Customized Jupyter Notebook Server derived from [these Docker images](https://github.com/jupyter/docker-stacks), plus some tooling to use it as a command-line tool.

## Makefile

`make build`

does as told, using `build/Dockerfile` and `build/requirements.txt`. The image name is set in `config.makefile`. 

## jupyter.sh

Command Line utility to use the image from the command line.


`jupyter.sh start`


Starts an instance of the configured image,  named after the current directory. The current directory is conveniently mounted read/write at `~/work` inside the container. Echos the URL so you can access the server in your local browser.


`jupyter.sh open this.ipynb` 

Starts the instance (if not already started) and opens the ipynb file in the browser.


`jupyter.sh exec this.ipynb` 

Executes the ipynb in a new kernel. 

