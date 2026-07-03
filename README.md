# 🛒 E-Commerce Sales & Customer Health Analytics

[![Python](https://img.shields.io/badge/Python-3.12-blue.svg)](https://www.python.org/)
[![SQL](https://img.shields.io/badge/SQL-MySQL-orange.svg)](https://www.mysql.com/)
[![Git](https://img.shields.io/badge/Git-Enabled-brightgreen.svg)](https://git-scm.com/)

## 📌 Project Overview
Proyek ini bertujuan untuk mengevaluasi performa logistik dan kesehatan retensi pelanggan pada perusahaan ritel fiktif menggunakan **Brazilian E-Commerce Public Dataset by Olist**. Melalui pendekatan berbasis data, analisis ini berfokus pada efisiensi waktu pengiriman dan dampaknya terhadap operasional bisnis.

Sebagai seorang *Data Analyst*, fokus utama dalam proyek ini adalah melakukan proses *Data Engineering* sederhana, membersihkan anomali data, serta mentransformasikan data mentah menjadi metrik bisnis yang siap pakai.

---

## 🛠️ Tech Stack & Architecture
* **Language:** Python (Pandas, NumPy, Matplotlib, Seaborn)
* **Database:** MySQL (via XAMPP) & SQLAlchemy for Python-to-SQL pipeline
* **Version Control:** Git & GitHub for repository management

---

## 🏃‍♂️ Data Pipeline & Workflow
1.  **Data Ingestion:** Mengambil skema database relasional (9 tabel terpisah) dari Olist e-commerce.
2.  **Data Cleaning (Python):** * Mengubah tipe data string teks mentah menjadi format objek `datetime`.
    * Melakukan analisis hipotesis pada *missing values* untuk memastikan integritas data.
    * Mengidentifikasi dan mengeliminasi data anomali.
3.  **Data Storage:** Memindahkan data yang telah dibersihkan secara otomatis ke database MySQL lokal menggunakan *automated script* berbasis SQLAlchemy 2.0.
4.  **SQL Exploratory Analysis:** Menulis *structured queries* untuk membedah metrik performa logistik per wilayah.

---

## 📊 Key Insights & Business Findings

### 1. Efisiensi Logistik & Pengiriman Barang
Berdasarkan visualisasi distribusi waktu pengiriman (*KDE & Histogram Plot*), ditemukan bahwa **rata-rata waktu pengiriman barang ke konsumen adalah 12.1 hari**. 
<img width="1251" height="747" alt="image" src="https://github.com/user-attachments/assets/99d5e905-2b60-40e0-98b3-826bb7357f99" />

* **Analisis Kontras Wilayah:** Jika dibandingkan dengan standar e-commerce lokal di Indonesia yang rata-rata memakan waktu 1-5 hari, durasi logistik Olist Brazil tergolong sangat lambat. Hal ini dipengaruhi oleh faktor skala geografis wilayah Brazil yang sangat luas dan dinamika infrastruktur kurir lokal.
* **Zona Bahaya Operasional:** Ekor grafik distribusi menunjukkan adanya *outliers* pesanan yang memakan waktu hingga di atas 30 hari, yang berpotensi menurunkan tingkat kepuasan pelanggan secara drastis.

---
