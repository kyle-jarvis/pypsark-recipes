FROM python:3

RUN apt update && apt install -y --allow-unauthenticated --no-install-recommends \
ca-certificates wget file vim openjdk-11-jdk

RUN useradd --create-home user
WORKDIR /home/user
USER user

RUN python3 -m venv ./sparkenv && \
source /home/user/sparkenv/bin/activate && \
pip install pyspark

CMD ["bash"]