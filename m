Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SO1zGjj54GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:59:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 251FB410090
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:59:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3327E404B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:59:03 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B9F893F719
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Nov 2025 21:39:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WEefhM+w;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of rogerq@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=rogerq@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1D9B742A66;
	Sun,  9 Nov 2025 21:39:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BECEAC19423;
	Sun,  9 Nov 2025 21:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762724352;
	bh=kVgnVQO18a916rVySKF1mV8rRyJyvwESYEk0lLLgQaY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WEefhM+wvXEy1rWWzumJC5RPb0gVAJSBqN7mRuhwxH8PvDdhBWgEqFwZStqMEMNF2
	 taGAZqeHs/RbkUh58PsASM2X92CWWgOBU29vC8wHuFqIVesO2YFSWtrDJ1g4pA9BWX
	 Ndwi6/JkinnfIsIFh+LYcbKrXszHMCzdV2Yb05W4D7wHhWEECCbELc8MHuaZoC9pbN
	 yG55Zlnv+nUJuyCyEbr40jdhms4NDQ30g/7UyhzZFAbnhtSqT3Rsd63NwqT37D79PD
	 J/AamRW5kFyj6MEW2UI68kpWObmACabj4HDf6WuqwSzA8XYRRMRJKoZqXpL+hqbqTG
	 JKvmi+4MlwgMg==
From: Roger Quadros <rogerq@kernel.org>
Date: Sun, 09 Nov 2025 23:37:57 +0200
MIME-Version: 1.0
Message-Id: <20251109-am65-cpsw-xdp-zc-v2-7-858f60a09d12@kernel.org>
References: <20251109-am65-cpsw-xdp-zc-v2-0-858f60a09d12@kernel.org>
In-Reply-To: <20251109-am65-cpsw-xdp-zc-v2-0-858f60a09d12@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Simon Horman <horms@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1531; i=rogerq@kernel.org;
 h=from:subject:message-id; bh=kVgnVQO18a916rVySKF1mV8rRyJyvwESYEk0lLLgQaY=;
 b=owEBbQKS/ZANAwAIAdJaa9O+djCTAcsmYgBpEQnaoZQaCDOcP2jKXsqaIb7Y4IAM39JiwAlpR
 whm4N5Vn1iJAjMEAAEIAB0WIQRBIWXUTJ9SeA+rEFjSWmvTvnYwkwUCaREJ2gAKCRDSWmvTvnYw
 k+n2D/4n3QLBvZL+Ug6lzBiQ3yEIJ54RMQhXfWtoHhcZT+Wor3emaGkM+iZ3o3j+ObQhNfLnaH9
 nqj5dWuuKVXWirrXjeIcgudnU6FcaO1DUY8SH6+H3jAtspFAI0Ne/eaRWCMNtEgdWw+tjR6Hki5
 K/HF/m38zK2UzGqBPhSr/wFUiT7E94Xgvn30dEZEYJ2GMF0F9bDmsQLWkP12bD0U9M0Tkku8r3w
 YZbH/h+iY986+tLVcgL9bV72urrYlAFGtzfkoUzGwTD0CN0Gk8qsiDwPEfwAb/wpJMR1NsOhDiX
 RCa3Errmmt2VRD/ViOAbkobEfNRFsSGke6jrDeQ7VOeNJn6kIzrBtCDWZISg1orpImNpZLht1qF
 mBW2x+s/+/nJLMMTyZA1eo72nRW0gu+ugSQ0JIwcuvdTFPn67sV+LRwgJusoBUUyeUbhdquF/Y5
 EGMIRdGhkkVp+y4wSeZhmrWjyThAbUPh/ECj7mqphqLz4Ecd+osPOwtHjeQfZnJ+rXLSb+PAjqw
 7+J6wPI83RIPktGVBgGr7kLkPqmSSRCTgs6NEEwDMp9x//wKe+AN1+X/PS48nmxQF2kYsJCzZsO
 NxWZ3LNtNVHwlyhZR7SEvxnM1T77zq0r9uYfJmHk1iqhaaOaUBNk+HA4ER1KeBvte0Fc7iehK80
 Dnd1EZKdXkopKeg==
X-Developer-Key: i=rogerq@kernel.org; a=openpgp;
 fpr=412165D44C9F52780FAB1058D25A6BD3BE763093
X-Spamd-Bar: --
X-MailFrom: rogerq@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4WNNLHBTSYLS6SXUQUL3ZTU3ISHCKEQL
X-Message-ID-Hash: 4WNNLHBTSYLS6SXUQUL3ZTU3ISHCKEQL
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:51 +0000
CC: srk@ti.com, Meghana Malladi <m-malladi@ti.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Roger Quadros <rogerq@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v2 7/7] net: ethernet: ti: am65-cpsw: Fix clearing of irq_disabled flag in rx_poll
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4WNNLHBTSYLS6SXUQUL3ZTU3ISHCKEQL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[3785];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[ti.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,linaro.org,amd.com,fomichev.me];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.458];
	FROM_NEQ_ENVFROM(0.00)[rogerq@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 251FB410090
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In am65_cpsw_nuss_rx_poll() there is a possibility that irq_disabled flag
is cleared but the IRQ is not enabled.

This patch fixes by that by clearing irq_disabled flag right when enabling
the irq.

Fixes: da70d184a8c3 ("net: ethernet: ti: am65-cpsw: Introduce multi queue Rx")
Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 drivers/net/ethernet/ti/am65-cpsw-nuss.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index 9d1048eea7e4734873676026906e07babf0345f5..c0f891a91d7471364bd4c8b7d82da9967f1753b8 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -1778,15 +1778,13 @@ static int am65_cpsw_nuss_rx_poll(struct napi_struct *napi_rx, int budget)
 	dev_dbg(common->dev, "%s num_rx:%d %d\n", __func__, num_rx, budget);
 
 	if (num_rx < budget && napi_complete_done(napi_rx, num_rx)) {
-		if (flow->irq_disabled) {
+		if (unlikely(flow->rx_pace_timeout)) {
+			hrtimer_start(&flow->rx_hrtimer,
+				      ns_to_ktime(flow->rx_pace_timeout),
+				      HRTIMER_MODE_REL_PINNED);
+		} else if (flow->irq_disabled) {
 			flow->irq_disabled = false;
-			if (unlikely(flow->rx_pace_timeout)) {
-				hrtimer_start(&flow->rx_hrtimer,
-					      ns_to_ktime(flow->rx_pace_timeout),
-					      HRTIMER_MODE_REL_PINNED);
-			} else {
-				enable_irq(flow->irq);
-			}
+			enable_irq(flow->irq);
 		}
 	}
 

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
