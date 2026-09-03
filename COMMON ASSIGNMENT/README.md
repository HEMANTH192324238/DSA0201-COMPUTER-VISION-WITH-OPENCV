# Automatic Number Plate Detection and Recognition using OpenCV

## 1. Project Overview
This project detects a vehicle number plate from an uploaded image and recognizes the registration characters using OpenCV-based computer vision and Tesseract OCR.

## 2. Features
- Upload vehicle image
- Image preprocessing
- Canny edge detection
- Contour-based rectangular plate localization
- Number plate cropping
- Image enhancement and thresholding
- OCR-based character recognition
- OCR confidence display
- Web interface using HTML/CSS/JavaScript
- Flask backend REST API
- Stores annotated and cropped plate outputs

## 3. Technology Stack
- Python 3.10+
- OpenCV
- NumPy
- Flask
- Flask-CORS
- Tesseract OCR
- Pytesseract
- HTML, CSS, JavaScript
- VS Code
- Git/GitHub

## 4. System Architecture
Input Image -> Preprocessing -> Edge Detection -> Contour Detection ->
Plate Localization -> Plate Extraction -> OCR Preprocessing -> Tesseract OCR ->
Registration Number -> Web Result

## 5. Algorithms
### Canny Edge Detection
Identifies strong intensity changes that are useful for locating plate boundaries.

### Contour Detection
Finds connected boundaries in the edge image. Four-sided, wide rectangular regions are treated as candidate plates.

### Adaptive/Otsu Thresholding
Converts the cropped plate into a high-contrast binary representation for OCR.

### Tesseract OCR
Recognizes alphanumeric characters from the processed plate image.

## 6. Installation

### Windows
1. Install Python 3.10 or later.
2. Install Tesseract OCR. The Windows installer can be obtained from the official UB Mannheim Tesseract builds.
3. Ensure `tesseract.exe` is in PATH, or set:
   `pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"`
4. Open this project in VS Code.
5. Create a virtual environment:
   `python -m venv .venv`
6. Activate it:
   `.venv\Scripts\activate`
7. Install dependencies:
   `pip install -r requirements.txt`

### Linux
Install Tesseract through the system package manager, then:
`pip install -r requirements.txt`

## 7. Run
From the project root:
`python backend/app.py`

Open:
`http://127.0.0.1:5000`

Upload a clear vehicle image and click **Detect & Recognize**.

## 8. Dataset
Place vehicle/number-plate images in:
`dataset/sample_images/`

Recommended dataset diversity:
- Indian registration plates
- Different states and formats
- Different viewing angles
- Day and night images
- Different distances
- Mild blur and illumination variation

For academic experimentation, split images into train/test folders if you later replace contour detection with a trained object detector.

## 9. Expected Output
The application displays:
- Input image
- Vehicle image with detected plate rectangle
- Recognized registration number
- OCR confidence

Example:
`TN12AB3456`

## 10. Limitations
- Contour-based detection may fail on highly tilted, blurred, dirty, or partially hidden plates.
- OCR accuracy depends strongly on image quality.
- Indian plate formats vary, so post-processing rules may be needed.
- This implementation is intended for academic demonstration rather than production traffic enforcement.

## 11. Future Enhancements
- YOLO-based number plate detector
- EasyOCR/PaddleOCR comparison
- Indian plate format validation
- Live webcam recognition
- Multiple vehicle detection
- Database storage
- CSV export
- Authentication and admin dashboard
- Cloud deployment

## 12. Suggested Report Sections
1. Title
2. Abstract
3. Introduction
4. Problem Statement
5. Objectives
6. Dataset
7. Tools and Technologies
8. Algorithms
9. Proposed Methodology
10. System Architecture
11. Flowchart
12. Implementation
13. Results and Discussion
14. Advantages
15. Limitations
16. Future Scope
17. Conclusion
18. References
