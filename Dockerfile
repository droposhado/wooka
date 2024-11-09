FROM python:3.10-alpine3.17 as builder

ENV APP="/app/wooka"
ENV VENV="/venv/wooka"

WORKDIR $APP

COPY . .

RUN apk add --no-cache alpine-sdk libffi-dev && \
    python -m venv $VENV && \
    $VENV/bin/pip install --no-cache-dir -r requirements.txt && \
    git clone https://github.com/droposhado/err-maya-plugin.git extra_plugins/err-maya-plugin && \
    $VENV/bin/pip install --no-cache-dir -r extra_plugins/err-maya-plugin/requirements.txt && \
    $APP/extra_plugins/err-wooka-version/generate-version.sh > $APP/extra_plugins/err-wooka-version/version.json


FROM python:3.10-alpine3.17

ARG USERNAME=wooka
ENV VENV="/venv/wooka"
ENV APP="/app/wooka"
ENV PATH="${VENV}/bin:${PATH}"

RUN adduser -DH $USERNAME

USER $USERNAME

WORKDIR $APP

COPY --from=builder --chown=$USERNAME:$USERNAME $VENV $VENV
COPY --from=builder --chown=$USERNAME:$USERNAME $APP $APP

CMD ["/app/wooka/run.sh"]
