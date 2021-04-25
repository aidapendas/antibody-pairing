FROM continuumio/miniconda3

WORKDIR /home/biolib

#RUN conda install -c bioconda --yes anarci scikit-learn pandas numpy \
#    && \
#    conda clean -afy

RUN pip install numpy pandas tensorflow scikit-learn --y

COPY . .

ENTRYPOINT [ "python", "src/predict.py" ]

