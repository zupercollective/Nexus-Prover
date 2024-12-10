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
| CPU | 1 Core | 2 Core |
| RAM | 4 GB | 8 GB |
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

### 3.2 Replace Prover Id

Gunakan **Prover Id** web prover mu, dengan cara tekan **F12** di browser trus cari **Application** dan copy value dari `flutter.proverId`. Balik ke CLI, dan isi hanya dengan Prover Id yang barusan dicopy.

```
nano $HOME/.nexus/prover-id
```

![image](https://github.com/user-attachments/assets/82523934-7d78-4b9c-b651-cc3c4060252f)


### 3.3 Run Prover

```
curl https://cli.nexus.xyz/ | sh
```

# Tutorial Nexus Prover Web

Klik [`Connect`](https://beta.nexus.xyz) and you good.

![image](https://github.com/user-attachments/assets/c794ed79-920f-4bec-9b0b-42c53cfd5119)

---

Reach us if you have any question:\
ZuperHunt's [Discord server](https://discord.gg/ZuperHunt) | [X(Twitter)](https://twitter.com/ZuperHunt)

# Acknowledgements

* [Nexus Docs](https://github.com/nexus-xyz/network-api/blob/main/clients/cli/README.md)
