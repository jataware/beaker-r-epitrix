FROM python:3.10-bookworm
RUN useradd -m jupyter
EXPOSE 8888

RUN apt update && apt install -y lsof sqlite3

# Install Python requirements
RUN pip install --upgrade --no-cache-dir hatch pip

# Install project requirements
# HACK: Special order of adding requiremetns that prevents having to rebuild everything during development
# RUN pip install beaker-kernel~=1.5.0 archytas==1.1.6
# RUN pip install mira@git+https://github.com/gyorilab/mira.git#egg=v0.6.0 bioregistry

# COPY --chown=1000:1000 ./dist/beaker_mira-0.0.1-py3-none-any.whl /jupyter/
# RUN pip install /jupyter/beaker_mira-0.0.1-py3-none-any.whl
RUN apt install -y r-base r-cran-irkernel \
        graphviz libgraphviz-dev \
        libevent-core-2.1-7 libevent-pthreads-2.1-7

RUN R -e "install.packages(c('epitrix'), repos='http://cran.rstudio.com/')"

COPY --chown=1000:1000 beaker_bunsen-0.0.4-py3-none-any.whl /jupyter/beaker_bunsen-0.0.4-py3-none-any.whl
RUN pip install /jupyter/beaker_bunsen-0.0.4-py3-none-any.whl
COPY --chown=1000:1000 dist/beaker_r_epitrix-0.0.1-py3-none-any.whl /jupyter/beaker_r_epitrix-0.0.1-py3-none-any.whl
RUN pip install /jupyter/beaker_r_epitrix-0.0.1-py3-none-any.whl

# COPY --chown=1000:1000 . /jupyter/
# RUN chown -R 1000:1000 /jupyter
# RUN pip install -e /jupyter

# Switch to non-root user. It is crucial for security reasons to not run jupyter as root user!
USER jupyter
WORKDIR /jupyter

# Service
CMD ["python", "-m", "beaker_kernel.server.main", "--ip", "0.0.0.0"]
