# AIArk — Public Whitepaper

> **A decentralized, AI-driven storage & value-search network (DePIN).**
> This is the **minimal-disclosure public edition**: vision, capabilities, tokenomics, per-role usage and risk/compliance only. It **omits internal module architecture, consensus/security implementation, and operational secrets** (those remain private; the protocol core is BSL 1.1-licensed — auditable, each version converting to full open source no later than four years after its release). The authoritative, precise rules are the full whitepaper and on-chain governance.
>
> **Currently in testnet; token and parameters may change. This is not investment advice; digital assets are high-risk.** Features marked *(planned)* are specified but not yet live; the full whitepaper's Appendix I lists what has landed.

---

## 1. What is AIArk

AIArk is a **community-run network drive ＋ media/knowledge marketplace**. You can store files, find data, and buy/sell video, music, documents, games, and software. **No single company runs it** — people around the world ("miners") run it on their own disks and machines, so **no one can quietly delete your data, and censorship is hard.**

- **How search works:** built-in AI scores content by *value* — good content surfaces by merit, **not ads or keyword SEO**.
- **You control your data:** private data is encrypted on your device; miners only see ciphertext (encrypted, but not zero-knowledge secret; see section 7 below).
- **Free account, tokens only when paying:** browsing/searching/previewing is free but needs an account (created on your device in the app, or a wallet you connect), because every search uses the network's resources; no ID. You need a little token only to download or to earn by uploading.

The native token **AIArk** lives on AIArk's own chain, **AIArkChain**, and is used for payments, staking, mining rewards, and governance; wrapped copies can move to Ethereum for trading.

### Why take part — what each role gets you (in everyday words)

Think of AIArk as a **town library, a market and a court run by the townspeople themselves**. Nobody owns the building; everyone who helps keep it running gets something back. You start as a visitor and add roles when you want to.

| If you are… | You do | What you get | What it costs or risks |
| :-- | :-- | :-- | :-- |
| **A visitor** (Role 1) | Search, browse and preview | Results ranked by value, not by who paid for ads; a free daily quota; no ID | Nothing but a free account |
| **A buyer** (Role 2) | Pay to download a file | You pay the creator and the people who deliver it, not a middleman; a refund path if the file is a virus, pirated or not as described; purchases can move into your own encrypted vault | The price of the file; a small deposit when you file a refund claim, lost only if the claim is abusive |
| **A creator / uploader** (Role 3) | Publish your videos, music, documents or software | The largest share of every paid download, paid automatically on chain; free publishing within your allowance; AI previews and classification; subtitles in the original language and English made on your own devices, translated live into each reader's language on their device *(planned)*; protection against copycats, because deposits and juries stand between you and false accusations | Publishing can't be undone; earnings wait in escrow until you register as the copyright holder; cheating (malware, fakes, re-cuts) costs your earnings and your reputation |
| **A miner** (Role 4) | Lend spare disk space and bandwidth | Tokens for keeping files safe and online, plus a fee for every download you deliver; the delivery fee comes from real usage, not only from new coins | A disk and a connection that stay up; a stake that can be cut if you claim to store what you don't |
| **A compute / hosting provider** (Role 4b) *(planned)* | Rent out a GPU or run other people's containers | Pay drawn from the customer's escrow for every period you serve | A stake; repeated outages end the lease and burn part of it |
| **A staker / voter** (Role 5) | Lock tokens with a validator | A say in fees, rules and how the shared fund is spent; a floating yield (never a fixed, guaranteed rate) | Locked tokens; their price can fall; vote weight is capped so no single account rules |
| **A juror / reporter** (Role 6) | Judge disputes the AI can't settle, or report bad files | A reward for careful rulings and valid reports; a safer market for everyone, including you | A deposit that is lost for careless or malicious work |

**Why this is better than a normal platform:** there is no company in the middle that can delete your files, change the payout split overnight or sell your attention to advertisers. The rules are public, the money moves automatically, and anything that costs someone money or reputation is decided by fixed rules plus a human jury, never by an AI alone.

**Honest note:** nothing here promises a profit. Token prices move and can go to zero, rewards depend on how much the network is actually used, and several features are still *(planned)*. The full rules for each role are in §4, the penalties in §5 and the risks in §6–§7.

---

## 2. Capabilities (plain language)

AIArk's built-in AI assistant automatically:

- **Understands your files:** detects video/music/image/document/game; generates previews, classification, original-language and English subtitles, and **live translation into your language on your own device**.
- **Guards safety:** scans when you publish — **known viruses and trojans, disguised file types, duplicates and known illegal content are blocked by deterministic checks** and never get listed; brand-new malware can still slip through.
- **Protects buyers:** if you buy a virus/pirated/not-as-described item, you can dispute it: automatic checks are deterministic detectors, never an AI guess, and the rest goes to a **human jury**.
- **Protects honest uploaders:** obvious bad files are blocked before yours, so you're not lumped in with them; and to falsely accuse you, someone must post a deposit and risks a reputation penalty — so frivolous reports don't pay.

**Honest limits of AI:** AI is good at catching *known* bad things and *obvious* impersonation/duplication; **brand-new malware or sophisticated re-cuts (re-editing, speed-changing, inserting ads to resell)** may slip past → those go to a **human jury**. **Any final decision involving money or penalties is made by "rules ＋ human jury", never AI alone** — to prevent a fooled AI from punishing you.

Capability areas (without disclosing internals): decentralized storage & delivery, GPU compute and container hosting, value-oriented search & discovery, multilingual subtitles/translation, content safety & dispute arbitration, an optional decentralized compute market, and decentralized naming.

---

## 3. Tokenomics

| Item | Detail |
| :-- | :-- |
| Token / standard | **AIArk**, native to AIArkChain (wrapped on Ethereum through an audited bridge), decimals **9** |
| Total supply (fixed cap) | **1,000,000,000 AIArk (1B)** |
| Price | No reference or target price; the market sets it. $0.20 is only the cold-start settlement price used until the liquidity pool is deep enough (**not a price promise**); mainnet launches with no token sale |
| Allocation (mainnet intent) | **~80% mining reserve** (earned over the curve) / **genesis premint 4%** — protocol-owned liquidity seed 2.5%, staking·airdrop for testnet contributors 1%, necessary fees 0.5%; nothing sold at launch / **remainder ~14–16% (ecosystem·team·treasury·growth) streamed gradually from the curve — vesting·governance·timelock, NOT a genesis bag** |
| Release | 80% mining reserve released over **10 years on a rigid linear-declining curve**; **non-mining buckets are all vesting ＋ governance control ＋ timelock**, milestone-bound, no early dumping |
| Inflation control | **Burn-Mint Equilibrium (BME):** above the durability floor, zero verified demand → zero minting; adaptation can only reduce issuance, never over-issue → net issuance bound never broken |
| Staking yield (stake bonded to a validator only: own bond or delegation) | **Floating, not a fixed guaranteed rate** (target range set by governance); paid from the existing emission curve, **no out-of-curve issuance → non-inflationary** |
| Network revenue | Public download fees, prepaid Private storage, decentralized compute and container hosting, `.aiark` domain registration/renewal |

**200,000,000 was minted on testnet for testing only.** Mainnet uses a **genesis premint of 4%** earmarked solely for the protocol-owned liquidity seed (2.5%), staking·airdrop for testnet contributors (1%) and necessary fees (0.5%); a later CEX listing is funded by a governance vote from the treasury stream; team/treasury/growth are **streamed from the curve (vesting·governance·timelock), not a genesis bag**; the ~80% mining reserve releases over the curve.

**In plain language — what the genesis premint is for.** When the network goes live, almost no coins exist yet — miners earn them slowly over 10 years. But a few things need coins on day one, or the network can't run or be traded, so a **small starting batch (4%)** is pre-made and used **only** for three launch needs:

1. **Liquidity (2.5%, the biggest slice).** To trade AIArk there must be a pool holding coins on *both* sides (AIArk + USDC). Without it, one buy spikes the price and you can't sell back. This batch seeds that pool and is **locked in** so it can't be pulled (anti-rug).
2. **Staking & airdrop for testnet contributors (1%).** Rewards for the people who tested and hardened the network — **you lock/stake to earn; it is not free money handed out** (no Sybil-farming payoff).
3. **Necessary fees (0.5%).** Security audits (CertiK/Hacken), the legal opinion, the legal entities, and on-chain deployment gas.

There is no exchange-listing batch: a later CEX listing is funded from the treasury stream by a governance vote. The team, treasury and growth budgets get **no big bag at launch** — see next.

**In plain language — what "streamed from the curve (vesting)" means, with an example.** *Vesting* = coins unlock a little at a time on a fixed schedule, not all at once. *Streamed from the curve* = the team/treasury/growth share is minted **gradually over years (like a salary drip)**, never pre-printed into a wallet that could be dumped on you.

> **Example.** The team share is 8% (80,000,000). Instead of getting 80M on launch day, it **vests linearly over 347 weekly epochs (about 80 months) from launch, with no cliff** — about **1M per month**. If they leave or the project stalls, the un-released remainder stays locked. So insiders **cannot dump a giant bag at listing** — their payout is tied to building the project for years. The mining reserve works the same way: ~80% is released to miners **slowly over 10 years** (more early, tapering toward zero), not minted up front.

**After the 10 years — does the ecosystem keep going? Yes.** The declining emission is a **bootstrap subsidy, not the long-term engine.** Miner income stands on two legs: (1) **delivery miners are paid by real usage fees from day one** — every download pays a bandwidth fee, which has nothing to do with emission and lasts as long as people use the network; (2) **storage miners** keeping the durability floor are paid by floor minting within the 10-year curve; **whenever that falls short (a price drop, or the curve running out), the winter reserve and treasury top it up — funded by fees, treasury yield, orphan-file shares and issuance set aside in good years, not by printing new tokens.** As real demand grows, fee revenue replaces the shrinking emission; once emission tapers toward zero the network runs on **download fees, Private-storage rental, compute usage and `.aiark` domain fees**. **BME** keeps it non-inflationary: above the durability floor, minting needs matching burns, and burned tokens never reopen minting capacity under the fixed 1B cap. This is the same "block-subsidy → transaction-fees" handoff mature networks use. **Honest caveat:** this only holds if real usage actually grows by then — if demand never shows up, fees won't replace the subsidy and miners leave. That adoption risk is the project's core bet (see §7). If both reserve legs run dry, the miner floor becomes a published target rather than a guarantee: the protocol never prints above the curve to pay it, and it protects existing files by pausing new Public admissions and evicting extra cache copies first (§15.1).

### Who actually earns money (in plain words)

Every time someone pays to download a file, that **single payment is split four ways** — like a music-streaming payout, but on-chain and automatic:

1. **The creator (copyright owner)** gets the largest share — whatever is left after the others.
2. **The "delivery" host** who actually sent you the bytes gets a **bandwidth fee** — paid per download, like a courier paid per delivery.
3. **A small platform fund (the "treasury")** takes a fixed cut — this pays for **ongoing development, the search index, and ecosystem grants.**
4. **A small slice (about 4%) is burned** — removed from supply for good. This is what stops anyone from earning rewards by downloading their own files: a self-buyer loses money, about 7% of the price at the default settings.

Separately, the **"storage" hosts** — the people who keep your file safe and online even when nobody is downloading it — are paid by the network's **floor minting** for every file until it is removed from the trash, popular or not. That is **not** taken out of your download fee.

**So where do the developers/operators get paid?** Two ways — and *not* by secretly skimming your downloads:

- A **dedicated team budget (8% of all tokens)** that unlocks slowly, month by month, over 80 months (the vesting drip described above) — so the team is paid to **keep building**, not to dump tokens.
- The **platform-fund cut (#3 above):** because the treasury takes a small slice of *every* download fee, development keeps being funded by **real usage** — even long after the initial team budget is gone.

**What is "POL" (protocol-owned liquidity)?** To buy or sell AIArk, there has to be an **"exchange pool"** holding coins on both sides. Most projects *rent* this pool from outsiders who can **yank it out at any moment** — and when they do, the price collapses and you can't sell (a "rug pull"). AIArk instead **owns and locks** its own pool: it **can't be pulled**, so there is always somewhere to buy and sell, and the trading fees flow back to the protocol. That is why a slice of the launch batch (the **"POL"** portion) is set aside as **permanent, locked trading liquidity**, topped up over time from half of the platform-fund cut.

> **Not investment advice.** Token prices are highly volatile and may go to zero. Assess for yourself and follow your local laws before participating.

---

## 4. Per-role manual

### Role 1 — Just browsing / searching (free, account needed)
- **Can do:** free browse/search/preview and see AI scores. (Full content/download needs token.)
- **Rules:** get an account first (searching uses network resources): create one on your device or connect a wallet you already have; free, anonymous, no ID.
- **Penalties:** virtually none; the only case is **frantic query-spamming** gets the account temporarily rate-limited (a daily free quota per kind: 200 searches, 500 browses, 10 previews, ten times that when staked; then growing delays). Normal use is unaffected.

### Role 2 — Buyer / downloader
- **Can do:** download Public content with token, move purchases into your private vault (Private), prepay your own storage for a period you choose (renew before it ends, or the files are dropped after a short grace window) *(planned)*.
- **Rules:** **virus/piracy/not-as-described/fake-HD/missing-parts** → refund claim **while the purchase is open** (claims gather for one week from the first claim), which counts toward a threshold (default 5% of the file's qualifying downloads and at least 20 buyers) before a jury decides; "previewed it and changed my mind" is **not** refundable; claims require a **small deposit** to deter abuse.
- **Outcomes:** valid claim → ✅ no penalty, refunded first; malicious/freeloading claim → 💰 deposit slashed ＋ 📉 reputation cut; repeat abuse → reputation drops, claim rights restricted.

### Role 3 — Uploader / creator (earn by uploading)
- **Can do:** upload media/docs/software, earn royalties on downloads, register as copyright holder; if someone else published your work, file a claim with your proof from its page ("This is my work") — a human jury decides contested cases, and if you win you choose to keep it up and collect, or take it down *(planned)*.
- **AI helps you:** auto classification/preview, plus subtitles and live on-device translation *(planned)*; only deterministic checks block a file, never an AI guess → if you're honest you're rarely mis-accused.
- **Key rules:** uploads land in your private vault; **publishing is one switch, off by default, and can't be undone**; publishing is free within the allowance (beyond it, a deposit; a choice of a small refundable bond or a device puzzle is *(planned)*); a published file nobody else downloads in full for a year, scored low or never scored, is removed after a 7-day notice; anyone can rescue it at any time by paying about a year of its storage cost; **until you register as the copyright holder, you get 1% of your file's earnings once your publication is opened and 99% waits in escrow** (26 weeks without a dispute, so pirates can't cash in; the registered holder or a winning claimant then receives it weekly); **payouts stop while an ownership claim or a report freeze is open**, and an upheld buyer refund case is paid from the escrowed share first; **no malware, no impersonating originals by re-format/re-cut, no not-as-described** (fake HD, fake full version, missing DLC).
- **Outcomes:** honest original/legal → ✅ normal royalties + AI value-add; low-value/borderline (first, minor) → ⚠️ warning; repeat → 📉 reputation cut; **impersonation/not-as-described** → 🚫 takedown + buyer refund + slash that file's reward + reputation cut (money flows to the true original creator); **bundled malware** → 💰 forfeit that file's reward and any publishing bond + 🚫 takedown + a strike + heavy reputation cut; **serious illegal** (weapons/explosives/bio) → the same + heavy penalty; **three strikes within a year** → publishing ends for good (ADR-205); **CSAM & zero-tolerance** → ⛔ instant ban + max slash + **permanent ban** (no "first warning").
- **Tip:** changing format/filename to dodge dedup is useless — AI looks at the **content itself**.

### Role 4 — Miner (provide disk, earn tokens)
- **Can do:** store files for the network on your disk and deliver reliably on download → earn tokens; storage collateral earns no staking yield (yield goes only to stake bonded to a validator).
- **Rules:** you **must actually store and be able to deliver**; each round a public random draw picks pieces of the copies you hold, and you must prove on chain, within a short window, that you still have them *(planned)*.
- **Outcomes:** reliable → ✅ mining rewards; occasional dropout → ⚠️ lower score, less reward; missed or failed proof → 💰 the pay since your last proven round is forfeited and all your floor columns stop counting until you prove a later round; a signed, provably false statement → 💰 stake slashed + heavy reputation cut.

### Role 4b — Compute / hosting customer and provider *(planned)*
- **Customer:** rent GPU jobs or run your own containers on community machines; you fund an escrow up front, it is drawn per period, and what is not drawn comes back when you close. Keep your program's secrets in a small, capped **lease wallet**, so a leak costs at most the cap.
- **Provider:** offer your machine's containers or GPU, win leases by bidding, and earn from the escrow; you post a stake, and repeated outages end the lease and burn part of that stake.

### Role 5 — Staker / voter (governance)
- **Can do:** delegate stake to a validator to **vote** on rules, fees, and treasury use (above ~$100 equivalent); that stake also earns the staking yield. **Yield (floating, governance-set range) goes only to stake bonded to a validator**; juror, storage and hosting collateral earn their role pay.
- **How capital is bounded:** voting requires staking to a threshold (~$100 equiv., adjusts with price); **vote weight = stake × an age multiplier, capped per account** (stake counts linearly, so splitting across accounts never adds weight beyond the stake's own); **per-account vote cap**, so a single account cannot meet a vote's turnout bar alone, except in a small pool or right after a large drop in total stake; **the dev team caps at 20% combined, stepping to 10% and then 5% as on-chain handover conditions are met**, and **cannot use that weight to change the most core rules**.
- **Outcomes:** normal stake/vote → ✅ voting weight + decision-making (yield only on stake bonded to a validator); proposal spam → 💰 proposal deposit slashed; sock-puppet vote farming → 💰 slash + 📉 reputation cut (farming accounts is slow and expensive — not worth it).

### Role 6 — Juror / reporter (disputes)
- **Can do:** be **randomly drawn** as a juror to decide what AI can't (e.g., is this an impersonation); or **report** bad files. Correct rulings earn rewards; valid reports raise reputation.
- **Rules:** ruling **with the majority** earns; bad/outlier rulings are penalized; reports require a deposit, and **false reports forfeit it**.
- **Outcomes:** diligent & aligned → ✅ reward + reputation up; bad/outlier/committed but not revealed → 💰 juror deposit slashed + 📉 reputation cut (declining a seat by not committing costs nothing); valid report → 📈 reputation up; malicious report → 💰 report deposit slashed + 📉 reputation cut.

---

## 5. Penalties & "behavior → consequence"

| Penalty | Plain meaning | Impact |
| :-- | :-- | :-- |
| ⚠️ Warning | A reminder, **nothing deducted** | Chance to fix; only repeats get real penalties |
| 📉 Reputation cut | Your "credit score" drops | Smaller vote weight, slower payouts, restricted features if severe |
| 💰 Slash bond/reward | Your posted bond or deposit, or your earned reward, is taken | Real money loss |
| 🚫 Takedown + refund | File removed network-wide, buyer refunded | Wasted upload + reputation loss |
| ⛔ Permanent ban | Account permanently expelled | Most severe; for CSAM & zero-tolerance illegal |

| Behavior | ⚠️ | 📉 | 💰 | 🚫 | ⛔ |
| :-- | :--: | :--: | :--: | :--: | :--: |
| Low-value/borderline upload (first) | ✅ | | | | |
| Same issue, repeated | | ✅ | | | |
| Impersonating the original | | ✅ | ✅ | ✅ | |
| Not as described (fake HD/missing) | | ✅ | ✅ | ✅ | |
| Bundled malware/adware | | ✅ | ✅ | ✅ | |
| Serious illegal (weapons/bio) | | ✅ | ✅ | ✅ | |
| CSAM & zero-tolerance | | | ✅(max) | ✅ | ✅ |
| Miner missing a storage proof (pay for that period forfeited) | | | ✅ | | |
| Miner signing a provably false statement | | ✅ | ✅ | | |
| Buyer malicious refund abuse | | ✅ | ✅(deposit) | | |
| Juror bad ruling / false report | | ✅ | ✅(deposit) | | |
| Vote farming / sock-puppets | | ✅ | ✅ | | |

> **In one line:** honest work isn't penalized; mistakes get a chance to fix (warning); deliberate abuse costs reputation and deposits; serious illegality is taken down and banned. **Reputation can't be bought or transferred — cheating only hurts yourself.**

---

## 6. Registration & per-role risk

Two methods, **same account identity, same reputation/assets**, both anonymous:
- **(A) Create an account on this device** (default) — the key is made on your device, a 12/24-word seed backup is offered, and a passkey unlocks the app on that device only (it is not a backup).
- **(B) Connect a wallet you already have** — one signature lets the app hold a short-lived session key (at most one epoch, ended by rotating your key) that signs free reads; payments always go through a confirmation you approve.

There is no social login and no key splitting (MPC). Recovery is only through **on-chain guardians** you choose, who can rotate your key but never spend *(planned)*.

| Role | Suggested | Risk |
| :-- | :-- | :-- |
| Browse/search | Either method | Skipping the seed backup = a lost device loses the account |
| Buyer | Either method; keep the seed backup offline | Lost seed and device = lost purchases |
| Uploader | Either method; **back up the seed before you earn** | Lost key = lost income |
| Miner | **Hardware wallet, or a device account with an offline seed backup** | Lost access = lost stake + income |
| Staker/voter | **Hardware wallet** | Lost access = lost stake |

**Rule of thumb:** **back up your seed offline; nobody, including AIArk, can recover a lost key.** **KYC is a separate matter** (voluntary boost, zero-knowledge proof, **no document disclosure**) — not required for an account.

---

## 7. Compliance & risk disclosure (honest)

**Legal posture:** AIArk is **content-neutral decentralized infrastructure**, like IPFS/BitTorrent; its economic layer **deliberately favors rightsholders** (opt-in attestation payouts, zero windfall for pirate uploads), paired with tiered takedown governance and a personal-data removal path. It **does not advocate, design, or encourage** circumventing DRM or unauthorized distribution. Per-jurisdiction applicability is subject to **qualified legal counsel**; operators choose parameters and policy per their jurisdiction.

**KYC / privacy:** AIArk **never collects or stores any identity documents** and does not run its own KYC; where compliance is needed, it uses **externally issued verifiable credentials ＋ zero-knowledge proof** (the network only learns ✅/❌, never the document). Wallet↔real-identity binding data **never go on-chain and are never stored in plaintext by nodes**.

**License:** the protocol core is **BSL 1.1** (source auditable, restricted from commercial competition; each version's Change Date, when it converts to full open source, is no later than four years after release, the maximum BSL 1.1 allows), with an **emergency dead-man switch** (if `bslDeadManEpochs` pass without an executed governance proposal, the code converts early so the community can fully take over; no multisig holds this switch). This public repo is Apache-2.0 minimal material.

**Honest residual risks (cannot be fully eliminated; disclosed):**
- Private files are **encrypted, but not zero-knowledge secret**: the key is derived from the file, so anyone holding the same file can confirm it is stored, and low-entropy files can be guessed. **For true secrecy, encrypt a sensitive file yourself before uploading it.**
- On an anonymous network, **metadata size/frequency fingerprints** may enable de-anonymization by advanced analysis; sophisticated heavy re-edits may evade fingerprints and human review.
- Key (seed) **loss is unrecoverable** unless on-chain guardians *(planned)* rotate it; losing the device today also loses your Private data, because its data key stays on that device.
- Auto-update vs decentralization is inherently tense: updates use reproducible builds ＋ signatures ＋ on-chain pinned hashes ＋ verify-before-run, and **never silently push** code.

**Investment risk:** this document is **not investment advice**. AIArk is a utility token; price can be highly volatile or go to zero; testnet parameters may change. DYOR, follow local laws, and never invest more than you can afford to lose.

**Platform & regulatory posture:** Native clients are **Desktop (Windows/macOS/Linux)** — full features (mining, sync, creation) — and **Android** (consumer client). **iOS is a limited web/PWA app, not on the App Store** in v1 (the consumer side plus Private upload and download, with no background sync and no native wallet), which avoids Apple's rule against using crypto to unlock content (Guideline 3.1.1) and its exchange-licensing rule (3.1.5). Android ships two ways: a **side-loadable full APK** (self-distributed, self-updating) as the canonical client, plus an optional **Play 'lite' build**; the wallet is **non-custodial** (exempt from Google Play crypto-wallet licensing) and buying and selling open the official Uniswap interface, an **external DEX** (we do not operate an exchange). AIArk is positioned as a **utility / digital-commodity token, not a security**, and is **not offered as an investment**. Listing starts with **permissionless DEXs**; any **centralized-exchange** listing is a later step requiring a legal opinion, contract audits and a disclosed market maker. EU (MiCA) and per-country obligations are subject to qualified local counsel.

---

## 8. Miner onboarding guide (testnet stage)

> **Now in testnet — install bundles and signing are still being released**; the following is the **intended flow**, with official download links announced in the public repo later. Testnet tokens have no value.

**Get the install bundle (after release):**
1. Download the official release for your OS (Windows / macOS / Linux) from the public repo's **GitHub Releases** (link announced after release).
2. **Verify authenticity (important):** check that the bundle's **hash** matches the **on-chain pinned release hash** and that the **governance signature** is valid; advanced users can recompute the hash from public source via **reproducible build**. **Any "AIArk install bundle" not verified this way is to be treated as counterfeit.**

**Set up the node (conceptual):**
- Pick a **storage root** (more space, more uptime → better rewards) and a **bandwidth cap**.
- Join the network via **public seed nodes** (config ships with the bundle).
- Set a **miner wallet** (seed/hardware wallet, back up offline) to receive mining rewards.
- Desktop runs as a **background daemon**: closing the window keeps serving blocks and earning.

**Rewards & duties:** reliable store + delivery → mining rewards; a public random draw picks pieces you must prove on chain *(planned)*, and **a missed proof forfeits the pay since your last proven round** (see §4 Role 4).

> Desktop is the full node (mining/sync/creation). Android is a consumer client (side-load full APK + optional Play lite). iOS is a limited PWA, not on the App Store (v1).

### Help us attack it (testnet)

**It's testnet — tokens have no value — so this is the time to hit it hard.** We openly invite miners and users to **try to attack, find bugs, and cheat**, especially around **deposits/withdrawals/settlement (ramps)**:
- **Test tokens:** once per account, at the fund step after your seed backup, the testnet faucet sends test tokens on chain (no value); the app shows the amount granted or the wait. *(The faucet does not exist on mainnet.)*
- **Fair game:** over/abnormal withdrawals, fake-download reward farming, miners faking storage, sock-puppet farming, refund-gaming, oracle price manipulation, ramp-spread arbitrage, **filing false reports on fake *or real* files, spamming governance proposals/votes or raising genuinely contested votes** — deliberately triggering the **deterministic-detector ＋ human-jury / governance-vote flow** to see if it can be fooled or flooded. **The harder, the better.**
- **The deterrents are part of the test:** false reports and spam proposals **forfeit their deposit ＋ cut reputation** by design — testnet proves whether that actually holds (if it doesn't, that's a bug — report it).
- **Governance really can change the rules (explicit disclosure):** fees, revenue splits, thresholds and parameters are **decided by community vote** — **no one (including the team) can change them unilaterally**. **On testnet you're welcome to launch genuine *or* malicious proposals/votes** and try to break the governance defenses: vote weight = **stake × age multiplier** (linear in stake), **per-identity vote cap**, **team aggregate cap (20% → 10% → 5% at handover gates, excluded from core-clause votes)**, **immutable core clauses (supermajority + timelock)**, proposal deposits. **Can money / sock-puppets / vote-flooding buy governance? Show us.**
- **Report via** the bug-bounty flow (Critical/High/…; paid in real value on testnet and mainnet, with a whitehat record).
- **Why it helps you too:** WARNING-and-above events (especially ramps) are summarized into a **CSV** for AI/team analysis and parameter calibration. **The harder you hit it, the safer launch is.**
- **Rules:** attack within testnet only; **no real PII, no real-world harm outside testnet** (that's illegal and out of scope).

---

## 9. For investors (read the risks first)

> **This section is not investment advice and not an offer.** AIArk is a **utility token** (payments/staking/mining/governance), **not a security**. **It is testnet now — testnet tokens have no value (test swaps use test USDC only) and do not represent mainnet terms.** Digital assets can be highly volatile or go to zero. DYOR, follow local laws, never invest more than you can afford to lose.

### 9.1 How to buy (intended path after mainnet)
- On testnet, swaps *(planned)* use **test USDC only** and the tokens have no value; after mainnet, liquidity is intended on DEXs for **wrapped AIArk** (e.g., **Uniswap** on Ethereum, reached through aggregators), with deposits and withdrawals to AIArkChain through the app.
- Intended flow: get a **self-custody Ethereum wallet** → hold a little ETH for gas and USDC → swap for AIArk at the **correct mainnet token contract address** on a DEX.
- ⚠️ **The mainnet wrapped-AIArk contract address will be announced via the official public repo and multiple channels; the testnet token on AIArkChain testnet and its Ethereum Sepolia test pool are for testing only — never treat them as buyable assets.** Any "AIArk" of unknown origin is counterfeit/scam.

### 9.2 DEX trading advice
- **Use a self-custody wallet** (seed/hardware); don't keep long-term holdings on exchanges.
- **Verify the contract address:** trust only the officially announced one — same-name fake tokens are rampant on DEXs.
- **Mind slippage/liquidity:** large orders into small pools slip hard → split orders, set sane slippage.
- **Anti-scam:** don't click unknown airdrops/links, don't approve suspicious contracts; the team never DMs you to "send tokens first".
- **Gas:** Ethereum transactions need a little ETH; withdrawing from AIArkChain needs none, because the bridge charges the Ethereum gas in AIArk.

### 9.3 Risk of funding via a KYC wallet/exchange
- Withdrawing from a **KYC'd centralized exchange** to chain links **your real identity ↔ your on-chain address and subsequent activity** (**de-anonymization**); the exchange may also **freeze withdrawals**.
- For privacy: use a **DEX + self-custody wallet**; use a **separate, non-KYC address** for sensitive use.
- AIArk itself **never collects identity documents**; but your **funding source** (a KYC exchange) is your own de-anonymization risk point, unrelated to the protocol.

### 9.4 FDV vs circulating market cap (don't be fooled by FDV)
- **FDV (fully-diluted valuation) = total supply × market price** (1B × whatever the market pays); AIArk has no reference or target price.
- **But FDV is not market cap:** 80% is the mining reserve **locked and released over 10 years**, and non-mining buckets also vest → **early circulating is only ~10–20%**, so **circulating market cap is far below FDV**.
- Judge a project by **circulating supply / circulating market cap + unlock schedule**; **high FDV + low float = ongoing future sell pressure** — make sure you understand this.

### 9.5 Emission simulation curve (illustrative only; subject to governance & BME; not a promise)
The 800M mining reserve uses a **rigid linear-declining** release over 10 years (more early, declining to near-zero). **Illustrative upper bound** (actual can be lower: above the durability floor, BME mints only against burns):

| Year | Annual emission (≈) | Cumulative mining (≈) | % of total |
| :-- | --: | --: | --: |
| 1 | ~152M | ~152M | ~15% |
| 2 | ~136M | ~288M | ~29% |
| 3 | ~120M | ~408M | ~41% |
| 5 | ~88M | ~600M | ~60% |
| 7 | ~56M | ~728M | ~73% |
| 10 | ~8M | ~800M | ~80% |

- Non-mining is **not a genesis bag**: a **4% genesis premint** covers the protocol-owned liquidity seed, staking·airdrop for testnet contributors and fees (each sub-bucket an on-chain group policy + timelock + labeled; unused returns to treasury/burn; POL locked); team/treasury/growth are **streamed gradually from the curve** (vesting + governance control + timelock; the treasury is keyless).
- **BME:** above the durability floor, no verified demand → no minting; adaptation can only reduce, never over-issue → the table is an **upper bound**, real circulating can be lower.
- **Exact schedule/parameters are governed on-chain.**

> Reminder: **not investment advice. Everything may change in the testnet stage.**

---

## 10. How AIArk compares — honest pros & cons

AIArk is **not "another Filecoin."** Most decentralized networks do *one* thing — store blobs (Filecoin / Arweave / Storj / Sia), move files (IPFS / BitTorrent), or rent GPUs (Akash / io.net / Render). AIArk combines **decentralized storage ＋ AI value-search ＋ a creator marketplace (royalties & anti-piracy) ＋ optional compute** — which is its differentiator *and* its biggest execution risk.

### Positioning (2026)

| | **AIArk** | Filecoin | Arweave | Storj | IPFS / BitTorrent | Akash / io.net / Render |
| :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| Core | Storage ＋ **AI value-search ＋ content market** | Storage marketplace | **Permanent** storage | S3-style object storage | Addressing / transport | GPU compute |
| Storage proof | **PoFD (delivery-speed) ＋ on-chain proof of random targets** (ADR-224); sealing ＋ PoSt on floor columns only (ADR-172, pending) | **PoRep / PoSt** (heavy, formal) | Endowment ＋ proofs | Erasure ＋ reputation (Satellites) | none native | n/a |
| Retention | **Demand/value-driven** (cold low-value may be GC'd) | Contract-term | **Pay-once, forever** | Contract | best-effort | n/a |
| Confidentiality | **Not ZK** (dedup tradeoff; self-encrypt option) | opaque encrypted blobs | public permaweb | client-side encrypted | public | n/a |
| Search / discovery | **AI value scoring, multilingual** | none (blob CID) | gateway | none | DHT / keyword | n/a |
| Creator economy / anti-piracy | **Built-in** (royalties, attestation, jury) | no | no | no | no | (Render: creator focus) |
| Maturity | **Testnet, pre-launch** | Mainnet, ~2.1 EiB stored | Mainnet, years (permaweb) | Mainnet, S3 live | Mature | Live (io.net 300K+ GPUs) |

### Advantages
- **Value-search ＋ marketplace:** content surfaces by AI-judged value (not ads/SEO), with creator royalties and anti-piracy economics — storage-only networks don't do this.
- **Lower miner barrier:** PoFD ＋ audit avoids Filecoin-style SDR sealing and zk proofs (only floor columns carry a light sequential seal) → cheaper and faster to join.
- **Space efficient:** network-wide convergent dedup ＋ erasure coding (~1.4× for large files) instead of N× replication.
- **Built-in AI value-add:** multilingual subtitles/translation, content classification, safety scanning, deterministic detectors plus human-jury arbitration (AI summaries advise, never decide).
- **Non-inflationary tokenomics (BME)** ＋ reputation-based Sybil resistance.

### Honest disadvantages
- **No track record — testnet, pre-launch.** Filecoin stores exbibytes, Arweave has years of permaweb, Storj/io.net are live. **AIArk is unproven at scale — the single biggest risk.**
- **Early centralization:** one team runs most seed nodes and holds the ADR-184 duty seats and a capped team vote that steps down at on-chain conditions; governance itself runs on-chain from genesis.
- **Not permanent like Arweave:** cold, low-value, zero-download content can be garbage-collected by design — if you want pay-once-forever permanence, Arweave fits better.
- **Lighter storage proof than Filecoin:** PoFD is delivery-driven; only the durability-floor columns carry sealing and PoSt (ADR-172, pending engineering), with no full SDR PoRep — weaker formal durability assurance than Filecoin.
- **Content is not zero-knowledge confidential** (price of dedup): self-encrypt for true secrecy.
- **Broad scope = execution risk:** storage ＋ search ＋ marketplace ＋ compute ＋ naming is far more than a focused competitor (Storj = storage, Render = rendering).
- **Compute layer is nascent** vs live io.net / Akash / Render.
- **Bridge and wrapped-asset dependency** (audited bridge standards only, never a self-built bridge) and **regulatory exposure** (media/marketplace adjacency) — mitigated by content-neutrality ＋ BSL ＋ takedown governance, not eliminated.

> **Bottom line:** AIArk's bet is "**AI value-search ＋ a creator marketplace on top of decentralized storage**", which no incumbent offers as one unit — but it must still prove it runs at scale, which the incumbents have done and AIArk has not. Judge it as an **early-stage, high-upside, high-risk** project, not a drop-in replacement for a live network.

---

*Minimal-disclosure public edition. The full design/implementation/UI whitepaper, backend & consensus implementation, ops tooling, deployment scripts, datasets and models remain private. Version tracked by public-repo git history.*
