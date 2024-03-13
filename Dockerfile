FROM pytorch/pytorch
LABEL developer="Sumin Yang <ysm0482@naver.com>"

RUN pwd
RUN ls -als .

ENV WORK_DIR=/home

RUN ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
COPY ./requirements.txt $WORK_DIR/requirements.txt
WORKDIR $WORK_DIR

RUN pip install -r ./requirements.txt

EXPOSE 5000
ENTRYPOINT jupyter lab --allow-root --ip 0.0.0.0 --port 5000
