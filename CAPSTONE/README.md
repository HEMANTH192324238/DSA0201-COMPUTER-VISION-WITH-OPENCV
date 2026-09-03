# Intelligent Traffic Congestion Prediction and Smart Route Recommendation

## Full Stack Project

### Frontend
HTML5 + CSS3 + JavaScript

### Backend
Python + Flask + Flask-CORS

### AI / Algorithms
- Random Forest classification
- A* heuristic search
- Median missing-value imputation
- Congestion-aware route penalties

### Dataset
`data/Traffic_Congestion_Dataset.csv` is intentionally separate from the algorithms.

### Project Structure
```text
Traffic_AI_FullStack/
├── backend/
│   ├── app.py
│   └── requirements.txt
├── frontend/
│   ├── index.html
│   ├── style.css
│   └── app.js
├── data/
│   └── Traffic_Congestion_Dataset.csv
├── outputs/
├── .gitignore
├── README.md
└── run_app.bat
```

## Run

### Windows — easiest
Double-click `run_app.bat`.

### Manual
```bash
python -m pip install -r backend/requirements.txt
python backend/app.py
```
Then open `frontend/index.html`.

Keep the backend terminal open while using the website.

## API
- GET `/api/health`
- GET `/api/metrics`
- GET `/api/dataset-summary`
- POST `/api/predict`
- POST `/api/route`

The application uses a synthetic academic dataset and is intended for demonstration.
