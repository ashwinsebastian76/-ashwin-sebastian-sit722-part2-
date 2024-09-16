FROM python:3.9-slim

WORKDIR /app

COPY book_catalog/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY book_catalog/ /app

ENV DATABASE_URL="postgresql://ashwin_sit722_part2_user:Rd2jBI1w0K2t4A80gKH4MZF8lUYQfWPq@dpg-creohndsvqrc73fl8b90-a.oregon-postgres.render.com/ashwin_sit722_part2"

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
