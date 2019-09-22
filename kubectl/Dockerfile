FROM woahbase/alpine-python3

# NOTE: Adapted for GitHub Actions, inspired by and derived from https://github.com/lachie83/k8s-kubectl 
# ARG VCS_REF
# ARG BUILD_DATE
LABEL name="kubectl"
LABEL version="1.15.3"
LABEL maintainer="Ramene Anthony <keybase.io/ramene>"

LABEL org.label-schema.vcs-ref=$GITHUB_SHA \ 
      org.label-schema.vcs-url="https://github.com/ramene/actions/kubectl" \
      # org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"
# TODO: Find out why this isn't show up under GitHub Actions itself, is it by design or not yet released?
LABEL "com.github.actions.name"="Pulumi GitHub Action for Kubernetes"
LABEL "com.github.actions.description"="Deploy Kubeflow ML to Kubernetes on your favorite cloud using Pulumi"
LABEL "com.github.actions.icon"="unlock"
LABEL "com.github.actions.color"="black"
LABEL "repository"="https://github.com/ramene/actions/kubectl"
LABEL "homepage"="https://hackmd.io/@ramene/SyZeCixLr"
LABEL "maintainer"="Ramene Anthony <keybase.io/ramene>"

COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

ENV KUBE_LATEST_VERSION="v1.15.3"

# TODO: Move NOTES and other TODO items to versioned HACKMD, before RELEASES
# NOTE: Adapted for GitHub Actions, inspired by and derived from https://hub.docker.com/r/woahbase/alpine-awscli/ and https://hub.docker.com/r/woahbase/alpine-python3
# NOTE: Credit: https://github.com/woahbase/alpine-awscli/blob/master/Dockerfile_x86_64 and https://github.com/woahbase/alpine-python3/blob/master/Dockerfile_x86_64
RUN set -xe \
    && apk add --no-cache --purge -uU curl ca-certificates openssh-client groff git less \
    && apk --update add --virtual .build-dependencies python3-dev libffi-dev openssl-dev build-base \
    && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/bin/kubectl \
    && pip install --no-cache --upgrade awscli \
    && chmod +x /usr/bin/kubectl \
	&& apk del --purge .build-dependencies \
    && rm -rf /var/cache/apk/* /tmp/*

COPY entrypoint.sh /usr/local/bin/join-cluster

ENTRYPOINT ["/usr/local/bin/join-cluster"]
CMD ["help"]