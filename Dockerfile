FROM pytorch/pytorch
LABEL developer="Sumin Yang <ysm0482@naver.com>"

WORKDIR /home

COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT jupyter lab --allow-root 
