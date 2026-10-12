# AIArk — Token Profile for Exchange Listing Review

This is a one-page summary for exchange and listing reviewers. The binding text is the public whitepaper ([`whitepaper/AIArk_Public_Whitepaper.md`](whitepaper/AIArk_Public_Whitepaper.md)); if the two ever differ, the whitepaper wins.

**Stage: testnet. Mainnet has not launched, there is no token sale, and testnet tokens have no value.**

## Token

| Item | Value |
| :-- | :-- |
| Name / ticker | AIArk / AIArk |
| Chain | AIArkChain (own Cosmos SDK chain); native coin |
| Decimals | 9 |
| Ethereum representation | Wrapped AIArk (ERC-20) through an audited bridge standard (Axelar Interchain Token Service); no self-built bridge |
| Total supply | 1,000,000,000 (fixed cap) |
| Testnet mint | 200,000,000, for testing only |
| Token sale | None at launch |
| Reference price | None; the market sets the price |

## Allocation and release (mainnet intent)

| Bucket | Share | Release |
| :-- | :-- | :-- |
| Mining reserve | ~80% | Earned over 10 years on a rigid linear-declining curve |
| Genesis premint | 4% | Protocol-owned liquidity seed 2.5%, staking and airdrop for testnet contributors 1%, necessary fees (audits, legal, deployment gas) 0.5%; each sub-bucket under an on-chain group policy and timelock |
| Ecosystem, team, treasury, growth | ~14–16% | Streamed gradually from the curve (vesting, governance, timelock); not a genesis allocation. The team budget (8%) unlocks monthly over 80 months |

Inflation control: Burn-Mint Equilibrium (no verified demand, no minting above the durability floor) and a burn of about 4% of every paid download. A later centralized-exchange listing is funded by a governance vote from the treasury stream.

## Utility

Payments for downloads, storage, compute and `.aiark` domains; staking with validators; mining rewards for storage providers; on-chain governance. Details: whitepaper sections 2–4.

## Listing readiness

| Item | Status |
| :-- | :-- |
| Public whitepaper, tokenomics, risk disclosure | Available (this repository) |
| Brand logo | Available ([`token/`](token/)) |
| Mainnet launch, token contract addresses | Not yet; announced in this repository and official channels at launch |
| Security audits (CertiK / Hacken planned) | Not yet; reports will be published here |
| Legal opinion and legal entity | In preparation |
| Source code | Protocol core under BSL 1.1 (source auditable); each version converts to full open source no later than four years after release |
| Official website and community channels | To be announced |

Risks: see the whitepaper's risk and compliance section. Nothing here is investment advice; digital assets are high-risk.
