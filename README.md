# Weather-Prediction


![Python](https://img.shields.io/badge/Python-3.8%2B-blue)
![TensorFlow](https://img.shields.io/badge/TensorFlow-2.9-orange)
![Flask](https://img.shields.io/badge/Flask-2.0-lightgrey)

A deep learning system that classifies weather conditions from images using CNN and Flask web interface.

## Table of Contents
1. Features
2. Dataset
3. Model Architecture
4. Installation (Windows)
5. Usage
6. Training
7. Deployment
8. License

## Features
- CNN model trained on 5 weather classes
- Simple Flask web interface
- Image preprocessing pipeline
- Both local and IBM Cloud deployment options


## Dataset
Download the dataset from:  
[Google Drive Link](https://drive.google.com/drive/folders/1-9mR3XPZnXOxXcAyccblcOtDuX3FUt4L?usp=sharing)  
*(Will be provided in final version)*

Contains:
- Cloudy (350 images)
- Foggy (350 images) 
- Rainy (350 images)
- Shine (350 images)
- Sunrise (350 images)

## Model Architecture
3-layer CNN with:
- Conv2D (32, 64, 128 filters)
- MaxPooling2D
- Dense (128 neurons)
- Dropout (0.5)
- Output (5 classes)

## Installation (Windows)

1. Clone the repository:
```cmd
git clone https://github.com/Akilan13kr/Weather-Prediction.git
cd Weather-Prediction
```

2. Create and activate virtual environment:
```cmd
python -m venv venv
venv\Scripts\activate
```

3. Install dependencies:
```cmd
pip install -r requirements.txt
```

4. Download model file:
- [weather_model.h5](https://drive.google.com/file/d/1pCDi1jkeIliMAbCG7RcoOAcWD544pQuL/view?usp=sharing)
- Place in project root folder

## Usage

1. Run the Flask app:
```cmd
python app.py
```

2. Open browser and go to:
```
http://localhost:8000
```

3. Upload an image to get weather prediction

## Training

To retrain the model:

1. Download dataset
2. Run Jupyter notebook:
```cmd
jupyter notebook model_and_deployment.ipynb
```

3. Execute all cells to:
   - Preprocess images
   - Train model
   - Save as weather_model.h5

## Deployment

### Local Production
```cmd
waitress-serve --port=8000 app:app
```

### IBM Cloud
1. Install IBM WML client:
```cmd
pip install ibm_watson_machine_learning
```

2. Configure credentials in notebook
3. Run deployment cells in model_and_deployment.ipynb

## License
MIT License


