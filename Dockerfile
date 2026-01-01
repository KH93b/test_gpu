# Используем базовый образ с PyTorch (чтобы работали драйверы GPU)
FROM runpod/pytorch:2.0.1-py3.10-cuda11.8.0-devel

# [...](asc_slot://start-slot-11)Устанавливаем библиотеку runpod
RUN pip install runpod

# Копируем наш скрипт внутрь контейнера
ADD handler.py .

# Команда запуска
CMD [ "python", "-u", "/handler.py" ]
