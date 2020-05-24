FROM kalilinux/kali-rolling:latest

RUN apt update -y \
  && apt install -y metasploit \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

CMD ["msfconsole"]
