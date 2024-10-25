# Використовуйте базовий образ Python
FROM python:3.9-slim

# Встановіть робочу директорію
WORKDIR /app

# Скопіюйте файли вимог
COPY requirements.txt .

# Встановіть залежності
RUN pip install --no-cache-dir -r requirements.txt

# Скопіюйте весь код додатку
COPY . .

# Вкажіть порт, на якому буде працювати ваш додаток
EXPOSE 5000

# Запустіть ваш додаток
CMD ["flask", "run", "--host=0.0.0.0"]
