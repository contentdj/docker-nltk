FROM trackmaven/nltk
MAINTAINER Jerry Tian "jerry@contentdj.com"

RUN pip install -U numpy

ENV CORPORA brown punkt maxent_treebank_pos_tagger

RUN python -m nltk.downloader $CORPORA;

CMD python