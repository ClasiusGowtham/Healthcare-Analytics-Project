# 🏥 Healthcare Analytics Project

An end-to-end Healthcare Analytics project using **Python, SQL, and Power BI** to analyze patient demographics, medical conditions, hospital performance, billing, insurance, and admission trends.

---

## 📌 Project Overview

This project analyzes healthcare data containing **54,966 patient records**.

The goal is to transform raw healthcare data into meaningful business insights using data cleaning, exploratory analysis, SQL analytics, and interactive Power BI dashboards.

---

## 🛠️ Tools & Technologies

- 🐍 **Python** – Data Cleaning, EDA & Feature Engineering
- 🗄️ **MySQL** – SQL Analysis
- 📊 **Power BI** – Interactive Dashboard & Data Visualization
- 📝 **GitHub** – Project Documentation & Version Control

---

## 📂 Dataset

The dataset contains information about:

- Patient Name
- Age
- Gender
- Blood Type
- Medical Condition
- Date of Admission
- Doctor
- Hospital
- Insurance Provider
- Billing Amount
- Room Number
- Admission Type
- Discharge Date
- Medication
- Test Results

Additional features were created during the Python analysis:

- Length of Stay
- Admission Year
- Admission Month
- Age Group
- Billing Category

---

## 🐍 Python Analysis

Python was used to prepare and analyze the healthcare dataset.

### Key Tasks

- Data loading and inspection
- Missing value analysis
- Duplicate record checking
- Data type conversion
- Date processing
- Feature engineering
- Length of Stay calculation
- Age Group creation
- Billing Category creation
- Exploratory Data Analysis

---

## 🗄️ SQL Analysis

MySQL was used to perform business-oriented analysis.

### Key Analysis

- Patient count analysis
- Revenue analysis
- Medical condition analysis
- Insurance provider analysis
- Hospital performance
- Doctor performance
- Admission type analysis
- Year-wise revenue analysis
- Average length of stay
- CTEs and subqueries
- Window functions and ranking analysis

---

## 📊 Power BI Dashboard

The project contains a **3-page interactive Power BI dashboard**.

### Page 1 – Healthcare Analytics Dashboard

- Total Patients
- Total Revenue
- Average Billing
- Average Length of Stay
- Revenue by Medical Condition
- Revenue Trend by Year
- Admission Type Distribution
- Revenue by Insurance Provider

### Page 2 – Patient Analytics Dashboard

- Patients by Age Group
- Gender Distribution
- Blood Type Distribution
- Medication Usage
- Test Results Distribution
- Average Length of Stay by Medical Condition
- Interactive filters

### Page 3 – Hospital Performance Dashboard

- Total Hospitals
- Total Doctors
- Average Revenue per Patient
- Total Revenue
- Top 10 Hospitals by Revenue
- Top 10 Doctors by Revenue
- Revenue by Insurance Provider
- Revenue by Admission Type
- Revenue by Admission Year

---

## 🔍 Key Insights

- **Diabetes** generated the highest total billing among the analyzed medical conditions.
- Revenue remained relatively stable between **2020 and 2023**.
- **Elective, Urgent, and Emergency** admissions contributed significant revenue.
- The dashboard identifies the highest-revenue hospitals and doctors.
- Patient demographics and clinical characteristics can be explored interactively using slicers.

---

## 📁 Project Structure

```text
Healthcare-Analytics-Project/
│
├── data/
│   └── README.md
│
├── python/
│   └── README.md
│
├── sql/
│   └── README.md
│
├── powerbi/
│   └── README.md
│
└── README.md
