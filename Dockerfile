FROM openjdk@sha256:ea91f086afc0ba3ec6859c5bfc397dbc0278cba316255759be5e5e1a0ca9fdcd AS openjdk-11

ADD harden.sh ./harden.sh
RUN chmod o+x ./harden.sh \
    && sh ./harden.sh \
    && rm ./harden.sh
