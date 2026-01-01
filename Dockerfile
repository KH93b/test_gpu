# Используем базовый образ
FROM runpod/pytorch:2.0.1-py3.10-cuda11.8.0-devel

# Устанавливаем библиотеку runpod
RUN pip install runpod

# ВАЖНО: Копируем файл явно в корень системы (/handler.py)
ADD handler.py /handler.py

# Запускаем файл по тому же абсолютному пути
CMD [ "python", "-u", "/handler.py" ]
