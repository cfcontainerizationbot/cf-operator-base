FROM opensuse/leap:15.1
RUN zypper -n in system-user-nobody ruby
RUN gem install bosh-template
