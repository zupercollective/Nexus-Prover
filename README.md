Penulis: 
- [Naufal](https://x.com/0xfal)
- [d04_1bu as Ikram](https://x.com/d04_1bu)

> [!NOTE]
> **WHAT IS Nexus?**\
> [Nexus](https://nexus.xyz) is the supercomputer for everyone, powering the world’s most complex computation to build the Verifiable Internet.

# Tutorial Nexus Prover CLI

# Docker
> [!NOTE]
> Requirement bisa merujuk pada section di bawah.

> [!NOTE]
> Instalasi docker dapat merujuk pada tutorial pada link berikut:
> 
> https://github.com/ZuperHunt/Installing-Docker

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

## 1. Requirement

Kamu bisa gunakan VPS atau PC pribadi dengan kebutuhan:

| ✅ Linux | ✅ macOS | ✅ Windows (Native / WSL) |
| ------------- | ------------- | ------------- |

| Part | Minimum | Recommended |
| ------------- | ------------- | ------------- |
| CPU | 1 Core | 2 Core |
| RAM | 1 GB | - |
| SSD | - | - |

Tutorial ini dibuat menggunakan Linux (Ubuntu), untuk sistem operasi lainnya mungkin akan sedikit berbeda.

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

### 3.2 Create `.nexus` Directory (Optional)

Cek terlebih dahulu apakah folder `.nexus` sudah ada atau belum menggunakan: `cd .nexus`.\
Kalo tidak ditemukan, kamu bisa membuatnya dengan perintah berikut:

```
mkdir .nexus
```

### 3.3 Replace Prover Id

Gunakan **Prover Id** web prover mu, dengan cara tekan **F12** di browser trus cari **Application** dan copy value dari `flutter.proverId`.

![image](https://github.com/user-attachments/assets/82523934-7d78-4b9c-b651-cc3c4060252f)

Balik ke CLI, jalankan perintah berikut dan isi hanya dengan Prover Id yang barusan dicopy.

```
nano $HOME/.nexus/prover-id
```

### 3.4 Run Prover

```
curl https://cli.nexus.xyz/ | sh
```

# Web

Klik [`Connect`](https://beta.nexus.xyz) and you good.

![image](https://github.com/user-attachments/assets/c794ed79-920f-4bec-9b0b-42c53cfd5119)

---

Reach us if you have any question:\
ZuperHunt's [Discord server](https://discord.gg/ZuperHunt) | [X(Twitter)](https://twitter.com/ZuperHunt)

# Acknowledgements

* [Nexus Docs](https://github.com/nexus-xyz/network-api/blob/main/clients/cli/README.md)
