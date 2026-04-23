# Image Quality Enhancement Pipeline 🖼️

This repository contains a MATLAB implementation for a digital image processing task. The primary objective is to restore and enhance the visual quality of systematically degraded images using foundational image processing techniques.

This was developed as a university assignment focusing on algorithmic image restoration and filtering.

## 🎯 Project Objectives
The input images provided for this task were specifically degraded using exactly two techniques:
1.  **Noise Injection:** (e.g., Salt & Pepper, Gaussian noise).
2.  **Structural Distortion:** (e.g., contrast degradation, poor illumination, or spatial transformations).

The goal of the script is to identify these degradations and apply the correct sequence of MATLAB image processing functions to restore the original visual quality.

## 📁 Repository Contents
* `a2.m`: The main MATLAB script containing the enhancement logic, filtering algorithms, and structural correction steps.
* `image_04.jpg`, `image_05.jpg`, `image_06.jpg`, `image_12.jpg`: The dataset of distorted images used to test and validate the enhancement pipeline.

## 🛠️ Methodology
The enhancement process generally follows a two-step pipeline:
1.  **Noise Reduction:** Applying spatial filters (such as median or Wiener filters) to smooth out the noise while preserving the critical edges and details of the image.
2.  **Structural Correction:** Adjusting the image properties (like applying histogram equalization for contrast issues or inverse transformations) to recover the structural integrity of the visual data.

## 🚀 How to Run
1. Clone this repository to your local machine.
2. Open MATLAB and set the repository folder as your working directory.
3. Open the `a2.m` script.
4. Ensure the image files (`image_*.jpg`) are in the same directory.
5. Run the script. The program will read the distorted images, apply the restoration algorithms, and display the enhanced results.

## ⚙️ Tech Stack
* **MATLAB** (Image Processing Toolbox)
