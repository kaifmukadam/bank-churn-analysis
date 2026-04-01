# 🏦 Bank Customer Churn Analysis

## 📌 Project Overview
This project analyzes customer churn behavior for a bank using SQL for data analysis and Power BI for interactive dashboard visualization. The goal is to identify key factors that drive customers to leave the bank and provide actionable business insights.

---

## 📂 Dataset
- **Source:** [Kaggle — Churn Modelling Dataset](https://www.kaggle.com/datasets/shubh0799/churn-modelling)
- **Records:** 10,000 customers
- **Columns:** 14 features including Geography, Gender, Age, Balance, Credit Score, and Churn Status

---

## 🛠️ Tools & Technologies
| Tool | Purpose |
|------|---------|
| MySQL Workbench | Data storage & SQL analysis |
| Power BI Desktop | Interactive dashboard |
| GitHub | Version control & portfolio |

---

## 📊 Key Findings

| # | Insight |
|---|---------|
| 1 | Overall churn rate is **20.37%** — 1 in 5 customers left the bank |
| 2 | **Germany** has the highest churn rate at **32.44%** — double that of France & Spain |
| 3 | **Female customers** churn more than male customers (55.92% vs 44.08%) |
| 4 | **Age group 46-60** has the highest churn rate at **51.12%** |
| 5 | **Inactive members** churn at almost double the rate of active members (26.85% vs 14.27%) |
| 6 | Customers with **2 products** are the most loyal (7.58% churn), while customers with **4 products churn at 100%** |

---

## 📁 Project Structure
```
bank-churn-analysis/
│
├── Churn_Modelling.csv       # Raw dataset from Kaggle
├── churn_analysis.sql        # SQL queries for analysis
├── Churn_Analysis.pbix       # Power BI dashboard file
└── README.md                 # Project documentation
```

---

## 💡 Business Recommendations
- **Focus on Germany** — Investigate why churn is significantly higher than other regions
- **Re-engage inactive members** — Launch targeted campaigns for inactive customers before they churn
- **Retain the 46-60 age group** — This high-value segment needs personalized retention strategies
- **Review multi-product strategy** — Customers with 3-4 products show extremely high churn; review product bundling approach

---

## 🖥️ Dashboard Preview
The Power BI dashboard includes:
- Overall Churn Rate (Donut Chart)
- Churn by Geography (Bar Chart)
- Churn by Gender (Pie Chart)
- Churn by Age Group (Bar Chart)
- Churn by Active Membership (Donut Chart)
- Churn by Number of Products (Bar Chart)
- Interactive slicers for Geography & Gender filtering

---

## 👤 Author
**Kaif Mukadam**
- 📊 Data Analytics | Finance | SQL | Power BI | Python
- 🎥 YouTube: [@empirestats.official](https://www.youtube.com/@empirestats.official)
- 💼 GitHub: [github.com/kaifmukadam](https://github.com/kaifmukadam)
