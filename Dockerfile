FROM openmicroscopy/ome-files-py:0.1.0

RUN pip install matplotlib jupyter

EXPOSE 8888

COPY run_jupyter /bin/
RUN chmod +x /bin/run_jupyter

RUN useradd -m jupyter
USER jupyter
ENV HOME /home/jupyter
RUN mkdir -p -m 700 ${HOME}/.jupyter/ && \
  echo "c.NotebookApp.ip = '*'" >> ${HOME}/.jupyter/jupyter_notebook_config.py

WORKDIR ${HOME}/notebooks

CMD ["run_jupyter"]
