FROM continuumio/miniconda3

WORKDIR /home/biolib

#RUN conda install -c bioconda --yes anarci scikit-learn pandas numpy \
#    && \
#    conda clean -afy

RUN conda install numpy pandas tensorflow scikit-learn --yes

COPY . .

ENTRYPOINT [ "python", "src/predict.py" ]

