FROM centos:7
#install common tools
RUN yum update -y && yum install -y wget git telnet vim curl iproute cron gettext gcc gcc-c++ automake zlib zlib-devel openssl openssl-devel pcre pcre-devel net-tools bzip2-devel libffi-devel && yum clean all
#install python3.9
RUN wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz && tar xzf Python-3.9.6.tgz && cd Python-3.9.6 && ./configure --enable-optimizations && make altinstall
#git clone chatgpt-on-wechat and complie
RUN git clone https://github.com/zhayujie/chatgpt-on-wechat
RUN python3.9 -m pip install pandas==1.5.3 itchat-uos==1.5.0.dev0 openai==0.26
RUN cd chatgpt-on-wechat
#start it
WORKDIR chatgpt-on-wechat
ENTRYPOINT ["python3.9","app.py"]
