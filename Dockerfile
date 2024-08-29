# Gunakan base image resmi dari Coder
FROM codercom/code-server:latest

# Set working directory
WORKDIR /home/coder

# Copy file konfigurasi (opsional)
# COPY ./config.yaml ./.config/code-server/config.yaml

# Expose port default untuk code-server
EXPOSE 8080

# Menjalankan code-server tanpa password
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none"]
