Penulis: [Naufal](https://x.com/0xfal)

> [!NOTE]
> **WHAT IS Nexus?**\
> .

# Tutorial Nexus Prover CLI

## 1. Requirement

Kamu bisa gunakan VPS atau PC pribadi dengan kebutuhan:

| ✅ Linux | ✅ macOS | ✅ Windows (Native / WSL) |
| ------------- | ------------- | ------------- |

| Part | Minimum | Recommended |
| ------------- | ------------- | ------------- |
| CPU | - | - |
| RAM | 4 GB | 8 GB |
| SSD | - | - |

Tutorial ini dibuat menggunakan Linux (Ubuntu), untuk sistem operasi lainnya mungkin akan sedikit berbeda.

## 2. Dependency

### 2.1 Install `curl`

```
sudo apt install curl
```

### 2.2 Install `gcc`

```
sudo apt install gcc
```

### 2.3 Install `libssl-dev`

```
sudo apt install libssl-dev
```

### 2.4 Install `pkg-config`

```
sudo apt install pkg-config
```

## 3. Execution

### 3.1 Run Prover

```
curl https://cli.nexus.xyz/install.sh | sh
```

Kalo kalian belum instal `Rust`, nanti akan otomatis diminta instal, cukup tekan `enter` aja. Kalo instal udah siap, jalankan perintah di bawah ini.

```
. "$HOME/.cargo/env"
```

### 3.2 Back up `prover-id`

Setelah berhasil run prover, akan muncul `prover identifier`, simpan itu.

# Tutorial Nexus Prover Web

Klik [`Connect`](https://beta.nexus.xyz) and you good.

![image](https://github.com/user-attachments/assets/de1810ee-b7ff-4345-84e0-8b221b1245f3)

---

Reach us if you have any question:\
ZuperHunt's [Discord server](https://discord.gg/ZuperHunt) | [X(Twitter)](https://twitter.com/ZuperHunt)

# Acknowledgements

* [Nexus Docs](https://github.com/nexus-xyz/network-api/blob/main/clients/cli/README.md)
