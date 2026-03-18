# DND5e Classpack 正體中文版 - 更新日誌

## 翻譯說明

**2026/03/18** 本專案基於 [HJSmile/classpack](https://github.com/HJSmile/classpack) 簡體中文版本，使用 [ConvertZZ](https://github.com/zouhuidong/ConvertZZ) 進行簡體中文至正體中文的轉換。ConvertZZ 支援 OpenCC 轉換引擎，可選擇臺灣用字（`s2tw.json`）等配置以獲得更符合正體中文習慣的翻譯結果。

### 開發工具：Foundry VTT CLI

本專案合集包（compendium packs）為 LevelDB 格式（`.ldb`），可使用官方 [foundryvtt-cli](https://github.com/foundryvtt/foundryvtt-cli) 進行解包與打包：

```bash
# 安裝
npm install -g @foundryvtt/foundryvtt-cli

# 設定工作目錄（指向模組資料夾）
fvtt configure
fvtt package workon "dnd5e_classpack-zh-tw" --type "Module"

# 解包：將 LevelDB 合集包解出為個別 JSON 檔
fvtt package unpack "compendiumName"

# 打包：將 JSON 檔寫回 LevelDB 合集包
fvtt package pack "compendiumName"
```

子目錄結構的合集包需使用完整路徑，例如：`fvtt package unpack "items/sfrpg"`。

---

## 版本更新摘要（4.0.2 至 v4.3.4）

### v4.3.4（2025/09/17）— 最新版

**重點更新：**

- **物品與熟練**：移除物品消耗次數、恢復武器與護甲的自動熟練
- **職業升級**：職業升級時可選擇子職
- **法術表檢查與修復**：法師、德魯伊、牧師、奇械師、聖武士、術士、邪術師、游俠、詩人 — 新增儀式標記、增刪法術、學派標記
- **升級自動加入法術**：德魯伊、牧師、聖武士、奇械師 — 升級至對應環位時自動取得該環位法術
- **游俠修復**：1 級宿敵／夙敵、自然探索者／熟練探險家失效修復
- **4.X 行動組合修復**：PHB 1–9 環、TCE、XGE、SCC、GGR、FTD、EGW、BMT、AI 等法術；聖武士、游蕩者、游俠、戰士職業特性
- **種族補全**：AAG、EGW、ERLW、GGR、MOT、MTF、WGE 等來源
- **專長與子職**：ERLW 專長、FTD 龍怒武器與魔法物品、吟遊交易學院、牧師月亮領域
- **其他**：套裝物品檢查與去重、職業特性名稱後加英文原文、無常書魔法物品漢化、MM14 怪物漢化、warlock 統一譯為魔契師

### v4.3.3（2025/09/08）

- 新增多個技能圖示與怪物圖鑑 token 至 Nicons 目錄
- 更新 `module.json`：版本號、描述、macro pack、`dnd5e` 的 `sourceBooks` 與 `spellLists` 標記
- 更新各合集包 manifest 與 log 檔

### v4.3.2（2025/08/14）

- 一般更新與修復（詳細變更未於釋出頁面列出）

### v4.3.1（2025/08/10）

**車卡相關重大改動：**

- **職業**：全職業 SRD 標識符修正、自動消耗資源、自動化配置、多功能特性拆分；新增野蠻人巨人道途、武僧神龍宗
- **子職**：各子職自動消耗、自動化配置、特性拆分
- **種族、法術、背景**：法術成分與傷害骰訂正、背景熟練與物品配置
- **專長**：依來源分資料夾、多項專長自動化配置
- **物品**：套組修正、新增多種背景用物品
- **模組結構**：新增主資料夾、車卡專用、DM 專用、MISC 資料夾；新增 BPGG、BMT 資料
- **推薦模組**：新增 Midi QOL

### v4.0.2（2025/04/08）

- 套用官方遷移器 4.x 升級
- 移除錯誤與多餘的物品使用次數
- 大部分物品實作使用次數自動化（休息恢復、物品充能恢復）
- 部分物品預設擲骰已移除，需手動設定擲骰公式（如予命之手、休憩曲、夙敵、奪命之手、星我之臂、靈能天賦等）

---

## 參考連結

- [HJSmile/classpack 釋出頁](https://github.com/HJSmile/classpack/releases/)
- [ConvertZZ 簡繁轉換工具](https://github.com/zouhuidong/ConvertZZ)
- [Foundry VTT CLI](https://github.com/foundryvtt/foundryvtt-cli)（unpack / pack LevelDB 合集包）
