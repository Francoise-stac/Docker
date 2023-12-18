# Utilisez une image de base qui prend en charge Python
FROM python:3.8-slim

# Définition du répertoire de travail
WORKDIR /app

# Créez un environnement virtuel
RUN python -m venv venv

# Activez l'environnement virtuel
ENV PATH="/app/venv/bin:$PATH"

# Installez les bibliothèques requises
RUN pip install numpy pandas matplotlib

# Copiez le script Python dans l'image
COPY script.py .

# Exécutez le script Python
CMD ["python", "script.py"]
