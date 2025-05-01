# syntax=docker/dockerfile:1

FROM quay.io/jupyter/base-notebook
RUN pip uninstall -y ipython prompt_toolkit
RUN pip install --no-cache-dir scikit-learn \
	pandas \
	ipython \
	prompt_toolkit \
	matplotlib \
	xgboost \
	seaborn \
	tensorflow \
	ipywidgets
RUN conda install -y -q -c conda-forge nodejs
