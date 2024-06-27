# Basisimage für unprivilegiertes NGINX
FROM nginxinc/nginx-unprivileged

# Kopiere die statischen Dateien in das NGINX-Standardverzeichnis
COPY ./index.html /usr/share/nginx/html/
COPY ./assets /usr/share/nginx/html/assets/

# EXPOSE Anweisung ist optional und dient nur zur Dokumentation, da NGINX
# standardmäßig auf Port 8080 hört im unprivilegierten Image
EXPOSE 8080
