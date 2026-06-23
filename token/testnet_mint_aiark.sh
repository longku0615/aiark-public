#!/usr/bin/env bash
# Testnet AIArk SPL-token mint — RUN THIS YOURSELF with your funded keypair.
# Prereqs: solana CLI + spl-token CLI installed; your keypair (the one with ~10 testnet SOL) is the active
# Solana config keypair. Nothing here is run for you; every step signs with YOUR private key.
set -euo pipefail

RECIPIENT="BJz31gLAJmioYAdjsMDc4s89TgaEpMxSmY85pm7oHwtd"   # your wallet (recipient)
DECIMALS=9
TOKEN_NAME="AIArk"
TOKEN_SYMBOL="AIArk"

# 0) testnet + sanity-check the funded wallet
solana config set --url https://api.testnet.solana.com
echo "active address : $(solana address)"   # should equal $RECIPIENT
echo "balance        : $(solana balance)"    # ~10 SOL (pays fees + rent)

# 1) create the AIArk mint (9 decimals). Capture the new MINT address.
MINT=$(spl-token create-token --decimals "$DECIMALS" | awk '/Creating token/{print $3}')
echo "AIArk MINT    : $MINT"

# 2) create the associated token account.
#    RECIPIENT here == the active signer wallet, so DO NOT pass --owner (that marks it a third-party
#    account and then demands an explicit --fee-payer). Plain create-account makes the ATA for the signer.
spl-token create-account "$MINT"
#    To mint to a DIFFERENT owner instead, use:
#      spl-token create-account "$MINT" --owner "$RECIPIENT" --fee-payer ~/.config/solana/id.json

# 3) MINT — pick ONE policy. (Mints to the signer's ATA created above.)

# 3a) TEST-ONLY: mint the full 1,000,000,000 AIArk to your wallet (quick flow test)
# spl-token mint "$MINT" 1000000000

# 3b) RECOMMENDED (whitepaper §15 aligned): do NOT pre-mint the 80% storage-mining reserve.
#     Mint only the non-mining buckets now = 200,000,000 AIArk (team 80M + treasury 60M + growth 30M
#     + initial 30M); KEEP mint authority so the emission program releases the 800,000,000 reserve
#     per-epoch over 10 years (Modules/TokenEmission: rigid linear-decreasing curve).
spl-token mint "$MINT" 200000000

# 4) (optional, ONLY for a hard-capped test token) lock further minting — do NOT do this for the real
#    design, the emission program needs mint authority:
# spl-token authorize "$MINT" mint --disable

# 5) verify
echo "supply         : $(spl-token supply "$MINT")"
spl-token accounts

# 6) (optional) on-chain metadata name="AIArk" symbol="AIArk" via Metaplex Token Metadata
#    (separate step): metaboss create metadata  OR  @metaplex-foundation/mpl-token-metadata SDK.

echo "DONE. AIArk mint = $MINT  (save this; we'll set it in the gateway/app token config)."
