FROM java:8u77-jre-alpine

ENV version 5.5.1
ENV root /lib
ENV home ${root}/xl-deploy-${version}-server 

ADD xl-deploy-${version}-server-trial-edition.zip /tmp/xld.zip

RUN unzip -q /tmp/xld.zip -d ${root} && \
    rm -R \
      /tmp/xld.zip \
      ${home}/serviceWrapper \
      ${home}/samples \
      ${home}/importablePackages/*

ADD xldeploy.answers ${home}/bin/xldeploy.answers

WORKDIR ${home}/bin
RUN ["./run.sh", "-setup", "-reinitialize", "-force", "-setup-defaults", "./bin/xldeploy.answers"]

VOLUME ["${home}/conf", \ 
	"${home}/ext", \
	"${home}/hotfix", \ 
	"${home}/importablePackages", \
	"${home}/log", \
	"${home}/plugins", \ 
	"${home}/repository"]

EXPOSE 4516

CMD ["./run.sh"]
