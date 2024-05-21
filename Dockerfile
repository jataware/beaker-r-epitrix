FROM python:3.10-bookworm
RUN useradd -m jupyter
EXPOSE 8888

RUN apt update && apt install -y lsof sqlite3

# Install Python requirements
RUN pip install --upgrade --no-cache-dir hatch pip

# Install project requirements
RUN apt install -y r-base r-cran-irkernel \
        graphviz libgraphviz-dev \
        libevent-core-2.1-7 libevent-pthreads-2.1-7

# Install epitrix from cran
RUN R -e "install.packages(c('epitrix'), repos='http://cran.rstudio.com/')"

COPY --chown=1000:1000 . /jupyter/
RUN chown -R 1000:1000 /jupyter
RUN pip install -e /jupyter

# Switch to non-root user. It is crucial for security reasons to not run jupyter as root user!
USER jupyter
WORKDIR /jupyter

# Service
CMD ["python", "-m", "beaker_kernel.server.main", "--ip", "0.0.0.0"]
