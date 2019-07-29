FROM warcforceone/grab-base
ARG repo=https://github.com/ArchiveTeam/angelfire-grab
ARG commit=master
ENV LC_ALL=C
RUN git clone "${repo}" /grab \
 && cd /grab \
 && git checkout "${commit}" \
 && ln -fs /usr/local/bin/wget-lua /grab/wget-lua
