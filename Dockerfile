# Basis-Image
FROM fedora:42

# Pakete installieren
RUN dnf install -y \
	bash \
	curl \
	wget \
	git \
	postgresql \
	traceroute \
	&& dnf clean all

# Nicht-root User "debugger" mit UID > 1000 anlegen
RUN useradd -u 1500 -m debugger

# Kleines Bash-Skript, das den Container am Leben hält
RUN printf '#!/usr/bin/env bash\nwhile true; do sleep 3600; done' > /usr/local/bin/keepalive.sh \
	&& chmod +x /usr/local/bin/keepalive.sh \
	&& chown debugger:debugger /usr/local/bin/keepalive.sh

# Auf nicht-root User wechseln
USER debugger

# Standard-Command
CMD ["/usr/local/bin/keepalive.sh"]

