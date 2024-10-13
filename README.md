# sanbercode-tugasAkhir
Program ini dibuat  untuk menyelesaikan tugas Akhir yang diberikan pada program Bootcamp QA Automation di Sanbercode

# How to Setup
1. Open terminal
2. run Npm init -y
3. Npm init wdio

# How to run
Untuk running automation code ini, anda bisa masuk ke wdio.conf.js, lalu ke bagian tags, silahkan ubah tags sesuai keinginan, berikut keterangan masing-masing tags :
- @regression : untuk menjalankan semua skenario
- @loginScenario : untuk menjalankan skenario login
- @penggunaScenario : untuk menjalankan skenario pengguna
- @kategoriScenario : untuk menjalankan skenario kategori

atau anda bisa mengosong tags agar menjalankan semua skenario baik yang diberi tags maupun bukan

lalu untuk menjalankannya anda bisa menggunakan perintah berikut di terminal:
"npx wdio .\wdio.conf.js"