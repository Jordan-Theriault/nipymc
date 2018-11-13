docker run --rm kaczmarj/neurodocker:master generate docker \
--base debian:stretch --pkg-manager apt \
--install gcc g++ graphviz tree bsdtar \
         git vim emacs-nox nano less ncdu \
         tig  \
--run "export tar='bsdtar'" \
--miniconda create_env=py35 \
conda_install="python=3.5 jupyter jupyterlab jupyter_contrib_nbextensions
               traits pandas matplotlib scikit-learn seaborn mkl mkl-service nose sphinx
               theano pygpu" \
pip_install="https://github.com/nipy/nipype/tarball/master
            https://github.com/INCF/pybids/tarball/master
            nltools nilearn datalad[full] nipy duecredit niwidgets
            mne deepdish hypertools ipywidgets pynv six nibabel joblib
            parameterized
            git+https://github.com/pymc-devs/pymc3" \
activate=True \
--copy nipymc /opt/miniconda-latest/envs/py35/lib/python3.5/site-packages/nipymc
