# NAME: Twitter / X
# AUTHOR: fhf1231 (based on blackmatrix7, cleaned & optimized)
# UPDATED: 2026-04-05
# DESCRIPTION: Twitter / X / Grok AI 专用分流规则
# 已清理: IP-CIDR (触发DNS泄露), HOST-KEYWORD (范围太广)
# HOST: 4
# HOST-SUFFIX: 26
# TOTAL: 30

# === X / Twitter 核心域名 ===
HOST-SUFFIX,x.com,x
HOST-SUFFIX,twitter.com,x
HOST-SUFFIX,t.co,x
HOST-SUFFIX,twimg.com,x
HOST-SUFFIX,twimg.co,x
HOST-SUFFIX,twimg.org,x

# === Grok AI (X 内置 AI) ===
HOST,grok.x.ai,x
HOST,api.x.ai,x
HOST,console.x.ai,x
HOST-SUFFIX,x.ai,x
HOST-SUFFIX,grok.com,x

# === Twitter 相关服务 ===
HOST-SUFFIX,api.twitter.com,x
HOST-SUFFIX,upload.twitter.com,x
HOST-SUFFIX,ads-twitter.com,x
HOST-SUFFIX,cms-twdigitalassets.com,x
HOST-SUFFIX,periscope.tv,x
HOST-SUFFIX,pscp.tv,x
HOST-SUFFIX,tellapart.com,x
HOST-SUFFIX,tweetdeck.com,x
HOST-SUFFIX,twitpic.com,x
HOST-SUFFIX,twitter.biz,x
HOST-SUFFIX,twitter.jp,x
HOST-SUFFIX,twittercommunity.com,x
HOST-SUFFIX,twitterflightschool.com,x
HOST-SUFFIX,twitterinc.com,x
HOST-SUFFIX,twitteroauth.com,x
HOST-SUFFIX,twitterstat.us,x
HOST-SUFFIX,twtrdns.net,x
HOST-SUFFIX,twttr.com,x
HOST-SUFFIX,twttr.net,x
HOST-SUFFIX,twvid.com,x
HOST-SUFFIX,vine.co,x

# ============================================
# 已移除的规则及原因:
# ============================================
# HOST-KEYWORD,twitter → 匹配范围太广, 会误杀 berlintwitterwall.com 等
# IP-CIDR,192.133.76.0/22 → 触发本地 DNS 解析 → DNS 泄露!
# IP-CIDR,199.59.148.0/22 → 同上
# IP-CIDR,199.96.56.0/21 → 同上
# IP-CIDR,202.160.128.0/22 → 同上
# IP-CIDR,209.237.192.0/19 → 同上
# IP-CIDR,69.195.160.0/19 → 同上
