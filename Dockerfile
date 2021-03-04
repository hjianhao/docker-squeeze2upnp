FROM alpine

RUN mkdir /squeeze2upnp
ADD https://nchc.dl.sourceforge.net/project/lms-plugins-philippe44/UPnPBridge-1.49.8.zip /squeeze2upnp
RUN unzip /squeeze2upnp/UPnPBridge-1.49.8.zip -d /squeeze2upnp
RUN chmod a+x /squeeze2upnp/Bin/*-static
RUN rm /squeeze2upnp/UPnPBridge-1.49.8.zip
COPY start.sh /squeeze2upnp
COPY find.sh /squeeze2upnp
RUN chmod a+x /squeeze2upnp/start.sh
RUN chmod a+x /squeeze2upnp/find.sh

ENTRYPOINT [ "/squeeze2upnp/start.sh" ]

