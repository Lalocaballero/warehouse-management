<div align="center">

# 📦 Pica Pica Pro

### Real-Time Multi-Location Inventory Management

*Track stock across multiple stores, move inventory between them, get low-stock alerts, and export full history — synced live across every device.*

<br/>

![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-06B6D4?style=flat-square&logo=tailwindcss&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=flat-square&logo=firebase&logoColor=black)
![Cloudinary](https://img.shields.io/badge/Cloudinary-3448C5?style=flat-square&logo=cloudinary&logoColor=white)

</div>

---

## ✨ Features

| | |
|---|---|
| 🏬 | **Multiple locations** — tabbed per-store view; each product tracks stock per location |
| 📝 | **Product management** — add/edit with photos and custom low-stock thresholds |
| 🔁 | **Stock in / out** — record incoming stock and sales, with validation |
| 🚚 | **Move stock** — transfer inventory store-to-store |
| 🚨 | **Low-stock alerts** — visual flag when a product hits its threshold |
| 🔍 | **Search, filter & sort** — by name, highest/lowest stock, or low-stock only |
| 📜 | **Movement history** — full audit log of every stock change |
| 📊 | **CSV export** — download history to Excel |
| ⚡ | **Real-time sync** — changes appear instantly on every open device |

## 🏗️ How it works

A single-page app built on **Firestore real-time listeners** (`onSnapshot`) to keep every client in sync. Product images upload to **Cloudinary**; stock changes are written as **atomic Firestore batches** alongside an append-only movement log that powers history and CSV export.

| Layer | Tech |
|-------|------|
| Frontend | Vanilla JavaScript, Tailwind CSS |
| Database | Firebase Firestore (real-time) |
| Auth | Firebase Authentication |
| Media | Cloudinary |

## 🚀 Run locally

Open `index.html` in a browser (or serve the folder). Requires your own Firebase project config and a Cloudinary upload preset.

> ⚠️ **Security:** configure your Firestore **security rules** before any public deployment. The client config is public by design — access control lives in the rules, not the code.

## 🎯 What this demonstrates

Designing a real inventory system end-to-end for a multi-store business — data model (products / locations / logs), real-time sync, and a full CRUD + reporting workflow.

<div align="center">
<br/>
<sub>Built by <a href="https://github.com/Lalocaballero">Eduardo Caballero</a></sub>
</div>
