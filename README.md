# AIArk

**去中心化、AI 驅動的儲存與價值搜尋網絡(DePIN)。**

讓任何人都能貢獻儲存與算力、賺取獎勵,並以可驗證、抗審查、保護隱私的方式儲存與搜尋資料。原生代幣 **AIArk**(Solana SPL)用於支付、質押、挖礦獎勵與治理。

> 現處於 **測試網(testnet)** 階段。代幣與功能參數可能調整。本庫僅含公開資料;網絡內部技術實作不在此公開。

---

## 依你的角色開始

### 👤 一般使用者
把任何資料安全存上去、依「價值」而非關鍵字搜尋取用,資料始終由你掌控(私有資料屬主端加密)。
→ 先看 [公開白皮書](whitepaper/AIArk_Public_Whitepaper.md) §3 能力概覽;下載 [客戶端 App](#)(連結 TBD)。

### ⛏️ 礦工 / 節點營運者
貢獻閒置硬碟與算力,依貢獻與 AI 評分賺取 AIArk;誠實行為由信譽與經濟機制保障。
→ 參見白皮書 §3、§4;節點接入指南(TBD)。

### 🔒 質押者
質押 AIArk 以保障網絡安全、解鎖免費額度與更高服務層級,並獲得**非通膨**收益(來自既有發行曲線,目標年化約 5%)。
→ 參見白皮書 §5.3。

### 💼 投資人 / 社群
了解願景、能力與代幣經濟(固定 10 億上限、80/8/6/3/3 分配、10 年線性遞減釋放、燃燒—鑄造均衡)。
→ 直接讀 [公開白皮書](whitepaper/AIArk_Public_Whitepaper.md)。**注意:非投資建議,數位資產具高度風險。**

### 🏦 交易所 / 上架審查
- 代幣標準:Solana SPL,小數位 9,總量 **1,000,000,000 AIArk**(固定)
- Mint(testnet):`Ake9KTGSiJSPQgMCHyQKrCJ5d1jaRqFvvFrGqBLrQiMX`
- Token metadata / logo:見 [`token/`](token/)
- 白皮書:[公開白皮書](whitepaper/AIArk_Public_Whitepaper.md)
- 法律實體 / 審計報告 / KYC 聯絡窗口:TBD

### 🛠️ 開發者 / 整合者
透過開放介面與代幣與網絡互動。
→ 客戶端 App 原始碼與整合文件:TBD(視公開範圍提供)。

---

## 本庫內容
- `whitepaper/` — 公開白皮書(願景、能力、代幣經濟;不含內部架構)。
- `token/` — AIArk 代幣 metadata(`onchain.json`、`aiark-token.json`)、品牌 logo、testnet 鑄幣腳本。

## 代幣速覽(Solana testnet)
- 名稱 / 符號:**AIArk**
- Mint:`Ake9KTGSiJSPQgMCHyQKrCJ5d1jaRqFvvFrGqBLrQiMX`
- 總量:1,000,000,000(§15 白皮書,10 年線性遞減釋放挖礦儲備)

## 授權
[Apache License 2.0](LICENSE)。

## 連結
公開庫:https://github.com/longku0615/aiark-public

---
*本庫為公開資料;後端 / 共識實作、營運工具、部署腳本、資料集與模型維持私有。非投資建議。*
