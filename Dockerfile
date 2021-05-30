FROM python:3.9
RUN pip install --no-cache-dir tensorflow deepspeech
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/MainRo/deepspeech-server.git deepspeech-server
RUN cd /deepspeech-server && python3 setup.py install
ENTRYPOINT deepspeech-server --config /opt/deepspeech/config.json
