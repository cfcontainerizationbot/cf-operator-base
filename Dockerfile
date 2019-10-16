FROM opensuse/leap:15.1
RUN zypper -n addrepo -G http://download.opensuse.org/repositories/Virtualization:/containers/openSUSE_Leap_15.1/Virtualization:containers.repo
RUN zypper -n ref && \
    zypper -n install \
      patch \
      ruby \
      system-user-nobody \
      inotify-tools \
      tini \
      ruby && \
    zypper clean
RUN gem install bosh-template
