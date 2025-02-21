Penulis: [Naufal](https://x.com/0xfal), [d04_1bu as Ikram](https://x.com/d04_1bu)

> [!NOTE]
> **WHAT IS Nexus?**\
> [Nexus](https://nexus.xyz) is a Layer 3 built on Arbitrum.

# Tutorial Nexus Prover CLI

Sebelum ke tutorialnya, kalo kamu belum ngerti gimana cara terhubung ke VPS mu, bisa lihat tutorial yang sudah kami buat [di sini](https://github.com/ZuperHunt/Connect-to-VPS).\
Tutorial testnet Nexus akan dibagi menjadi 3 bagian:
1. [CLI dengan Docker Compose](#Docker)
2. [CLI dengan setup manual](#Manual)
3. [Web based](#Web)

# Docker
> [!NOTE]
> Requirement bisa merujuk pada section di bawah.

> [!NOTE]
> Instalasi docker dapat merujuk pada tutorial pada link berikut:
> 
> https://github.com/ZuperCollective/Installing-Docker

Cukup clone repository ini, install Docker dengan Docker Compose dan lakukan command di bawah ini:
```bash
# Clone aplikasinya dulu
git clone https://github.com/ZuperHunt/Nexus-Prover

# Masuk ke foldernya
cd Nexus-Prover

# Copy file secretnya
cp .env.example .env

# Isi secret dan atur konfigurasinya
nano .env

# Jalankan server
docker compose up -d
```

# Manual
Langkah-langkah di bawah bisa kamu eksekusi apabila ingin menjalankan aplikasi ini secara manual.

## Requirement

Kamu bisa gunakan VPS atau PC pribadi dengan kebutuhan:

| ✅ Linux | ✅ macOS | ✅ Windows (Native / WSL) |
| ------------- | ------------- | ------------- |

| Part | Minimum | Recommended |
| ------------- | ------------- | ------------- |
| CPU | 2 Core | 4 Cores |
| RAM | 8GB GB | 16GB++ |
| SSD | - | - |

Tutorial ini dibuat menggunakan Linux (Ubuntu), untuk sistem operasi lainnya mungkin akan sedikit berbeda. Untuk native Windows hanya bisa yang versi web saja, gunakan WSL untuk yang versi CLI.

## 1 Optional

Langkah ini hanya berlaku jika kamu, menggunakan spek VPS minimum. Jika kamu menggunakan spek yang bagus silahkan skip step ini.

### Buat file Swapfile
`sudo fallocate -l 8G /swapfile`

### Set Perm
`sudo chmod 600 /swapfile`

### Format
`sudo mkswap /swapfile`

### Enable
`sudo swapon /swapfile`

### Enable on boot
`echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab`

### Cek
`free`

### Reboot
`sudo reboot`

## 2. Dependency

### 2.1 Install Rust

Copy-paste, trus tinggal tekan enter aja.

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"
```

### 2.2 Install Miscellaneous

```
sudo apt update && sudo apt upgrade
sudo apt install build-essential pkg-config libssl-dev git-all
```

### 2.3 Update Protoc

```
sudo apt install unzip
curl -LO https://github.com/protocolbuffers/protobuf/releases/download/v29.1/protoc-29.1-linux-x86_64.zip
unzip protoc-29.1-linux-x86_64.zip -d $HOME/.local
export PATH="${HOME}/.local/bin":${PATH}
```

## 3. Execution

### 3.1 Create a Session

Ubah `<SESSION_NAME>` menjadi terserahmu.

```
tmux new -s <SESSION_NAME>
```

### 3.2 Run Prover

```
curl https://cli.nexus.xyz/ | sh
```

Akan diminta memasukkan `node ID`, kunjungi https://app.nexus.xyz/nodes untuk mendapatkan punyamu.

![image](https://github.com/user-attachments/assets/8236246c-3adc-4528-a8b0-638bde8a8615)

# Web

Klik [`tombol power`](https://app.nexus.xyz/) and you good.

![image](https://github.com/user-attachments/assets/289fa802-deeb-4972-b05a-d8aa7e55b332)

---

Reach us if you have any question:\
ZuperCollective's [Discord server](https://discord.gg/ZuperCollective) | [X(Twitter)](https://twitter.com/ZuperCollective)

# Acknowledgements

* [Nexus Docs](https://docs.nexus.xyz/home)
