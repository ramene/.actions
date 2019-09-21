#!/bin/sh -l

set -exou

if [ ! -z "${GITHUB_WORKFLOW}" ]; then

    OUTPUT_FILE=$(mktemp)
    KUBECTL_CMD="kubectl $*"
    PULUMI_SHARED="$GITHUB_WORKSPACE/.pulumi"

    if [ ! -e ${PULUMI_SHARED}/aws-auth.yml ]; then

        aws configure set default.region us-east-1

        if [ ! -z "$PULUMI_SHARED" ]; then
            cd $PULUMI_SHARED
            
            wget -qO- -O aws-auth.yml \
                https://amazon-eks.s3-us-west-2.amazonaws.com/1.10.3/2018-06-05/aws-auth-cm.yaml

            export KUBECONFIG=kubeconfig
            export EKS_WORKER_ROLE=$(cat output)

            sed -i -e "s#<ARN of instance role (not instance profile)>#${EKS_WORKER_ROLE}#g" aws-auth.yml
        
            kubectl apply -f aws-auth.yml
        fi
    fi
fi

sh -c "$KUBECTL_CMD" | tee $OUTPUT_FILE