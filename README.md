
# E-Commerce Sales & Logistics Performance Analytics

An end-to-end data analytics and business intelligence project that transforms raw e-commerce retail data into actionable operational and financial insights. This project builds a complete analytical pipeline using Excel for initial data modeling, SQL for structured database querying, and Power BI for dynamic executive dashboarding.

---

## Project Overview & Business Value

In the modern e-commerce landscape, balancing sales growth with logistics efficiency is critical for sustaining profitability. Understanding regional demand, optimizing shipping partner performance, and monitoring product returns directly impact operational costs and customer retention.

This project solves a classic supply chain and sales challenge by analyzing transactional datasets, tracking key financial metrics (Revenue vs. Net Profit), evaluating shipping vendor cycle times, and isolating non-returned profitable segments to streamline multi-channel operations.

---

## Tech Stack & Architecture

* **Data Layer:** Microsoft Excel (`ECommerce_Logistics_Performance_Analysis_2.xlsx`) - Cleaned relational tables containing master transactional, product, and customer logs used for operational analysis and quick KPI prototyping.
* **Database & Query Layer:** SQL (`ecommerce_sales_analysis.sql`) - Structured query scripts utilizing multi-table relational joins, advanced aggregations, dynamic alias creation, and conditional filtering to isolate key corporate performance indicators.
* **BI & Visualization Layer:** Power BI (`ECommerce_Sales_&_Operations_Dashboard.pbix`) - A fully interactive executive dashboard featuring data modeling, cross-filtering, and strategic KPI tracking for C-level decision-making.

---

## Executive Dashboard Analytics (Power BI & Excel)

### Key Performance Indicators (KPIs) Captured:
* **Total Revenue (Ciro):** High-level aggregate tracking gross financial volume across global markets.
* **Total Net Profit (Net Kâr):** Realized net earnings calculated dynamically by evaluating `Quantity * (Unit_Price - Unit_Cost)` filtered by fulfillment health.
* **Logistics Efficiency:** Average shipping duration and order distribution metrics mapped across delivery networks.

### Visualizations & Insights Designed:
* **Regional & Country Revenue Analysis:** Evaluates geographic revenue generation to identify high-performing target markets.
* **Category Profitability & Return Tracking:** Isolates product categories (such as Furniture) against fulfillment return statuses (`Return_Status = 'Not Returned'`) to protect bottom-line margins.
* **Courier & Shipping Performance:** A comparative analytical view breaking down total order volumes across major carrier infrastructures (e.g., UPS, MNG) to measure supply chain reliability.

---

## Database Engineering & SQL Insights

The repository includes a production-ready SQL script (`ecommerce_sales_analysis.sql`) built to query relational schemas. Key structured operations include:

* **Multi-Table Relational Joins:** Implementing complex `INNER JOIN` operations to unify dimension tables (`Dim_Customers`, `Dim_Product`) with transactional fact tables (`Fact_Sales`).
* **Conditional Financial Aggregations:** Isolating specific categorical performance data using granular filtering clause structures (`WHERE Category = 'Furniture' AND Return_Status = 'Not Returned'`).
* **Operational Frequency Analysis:** Running record counting (`COUNT(Order_ID)`) grouped by logistic providers to evaluate supply chain resource utilization.
* **Advanced Output Ordering:** Utilizing `ORDER BY ... DESC` over calculated aliases to rank high-yield customer segments from maximum to minimum revenue contribution.

---

## Repository Structure

```text
├── ECommerce_Logistics_Performance_Analysis_2.xlsx   # Cleaned Source Dataset & Prototyping File
├── ecommerce_sales_analysis.sql                      # Production SQL Script with Documentation
└── ECommerce_Sales_&_Operations_Dashboard.pbix       # Interactive Power BI Executive Dashboard File