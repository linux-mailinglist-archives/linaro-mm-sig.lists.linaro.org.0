Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKKSJjL54GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 727CF410089
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8687D40503
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:58:57 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id EE7773F719
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Nov 2025 21:39:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="AE/QsBKe";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of rogerq@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=rogerq@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6C31E44230;
	Sun,  9 Nov 2025 21:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDBEBC4CEF7;
	Sun,  9 Nov 2025 21:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762724347;
	bh=CN1oEXUSojkUBmaZlWlvuSVJlA/WWlAbJVlcXldCc2I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AE/QsBKeL4COZDbWNKyPSb/Yeb4U/0zyaGDjqv6fz7Yf7CZDZasUkJDL9fz2jvP1A
	 guxGCe+ViOhnrhhSbMo4ARJjAB+LGMNHwSNoCASXHrfHftFfwDOYyMV2rffepGqX2J
	 m7jLtHkNq9h6MYUTUl69gmK4j9+mGkgMkaCOoehqY30OB9SDoWRZxrgJQVw0+oB4dI
	 RphQ7zt0ZYEtu9OfwHOQb7mg+M/1ZD57U2qYKkvWDkJHM4JUmU4GYhonLk3LF87t16
	 4EjtEkee052stjebv+wipougewFrKDaIRwEKHF/Otk1APFTM/YBsZwyIEKYz+bgoS2
	 KTVvo0R0iTAFQ==
From: Roger Quadros <rogerq@kernel.org>
Date: Sun, 09 Nov 2025 23:37:56 +0200
MIME-Version: 1.0
Message-Id: <20251109-am65-cpsw-xdp-zc-v2-6-858f60a09d12@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1060; i=rogerq@kernel.org;
 h=from:subject:message-id; bh=CN1oEXUSojkUBmaZlWlvuSVJlA/WWlAbJVlcXldCc2I=;
 b=owEBbQKS/ZANAwAIAdJaa9O+djCTAcsmYgBpEQna96yZlfyKuLZK25llM6B9VnnOag/jnGh9D
 91Dvo+PqVeJAjMEAAEIAB0WIQRBIWXUTJ9SeA+rEFjSWmvTvnYwkwUCaREJ2gAKCRDSWmvTvnYw
 k+LtEADUgCFmF6aZIvEYu7sabE8u6Bp5lcZDbwYqnRBpvb8Vj4koNaounoTMuRmXWpOpUPIX/Xm
 TWvBAML53q3C79zHyatbDkcp0TymeiAQybxky5gS61YJLI3Ti947kKm/590u+tUsSFcKUeYe/Ny
 Fz3LFHW0Bm/YcGuR7xytB4DAvhra8VO5LhQXVwmIbewxf0OG8R1k8i8jzfY3CUQbRTVeuuUY+j2
 F+GcdAD3WqM9CIKrM1uhBJ9gAhstsl7XB4pVKUMosjJ5NnSwyTrUiDEkrUmx0hgQWtryXu6Yhjd
 bWW2+mYQmPPPssI6C3UROAD9j9sLnufwsY9mDzgQy/ko0jx2kH9KlQ2cp7p7dkIrukRVTXMTGiy
 lp1EgHGhUdjJszxldCwV08sx5O+IecOKlahvuU5GfGDrex0vRiTWe5AP7djJBCqAEySr0hHaG6F
 MtdyUDcfH8vbZau0Jgvaez5btY1MziZwQ0WTxZd2VROvdthaDeFR4pJGI9+ZnfmpJ8yjUCFyp7O
 mgFnof9Vp9f9TJSQhnFYPTQWOqUFsquvYoKvU1pszELddV2Uh9ncX3g9g1xZIECcJOH8suiIUVs
 nJ2cnfLqBvJkF+M4sGBcXkPT1DJ8yZcI2ODkZs5Pmb6RWfxOWysx3rveW7VM7+V77rq8TskBHQq
 ms57HQrnSzz98xQ==
X-Developer-Key: i=rogerq@kernel.org; a=openpgp;
 fpr=412165D44C9F52780FAB1058D25A6BD3BE763093
X-Spamd-Bar: --
X-MailFrom: rogerq@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: E62TZRU6QIEJMW4K5WDYY6R55Y3PDXLO
X-Message-ID-Hash: E62TZRU6QIEJMW4K5WDYY6R55Y3PDXLO
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:50 +0000
CC: srk@ti.com, Meghana Malladi <m-malladi@ti.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Roger Quadros <rogerq@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v2 6/7] net: ethernet: ti: am65-cpsw: enable zero copy in XDP features
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E62TZRU6QIEJMW4K5WDYY6R55Y3PDXLO/>
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
	NEURAL_HAM(-0.00)[-0.493];
	FROM_NEQ_ENVFROM(0.00)[rogerq@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 727CF410089
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that we have the plumbing in for XDP zero copy RX and TX, enable
the zero copy feature flag.

Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 drivers/net/ethernet/ti/am65-cpsw-nuss.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index 2e06e7df23ad5249786d081e51434f87dd2a76b5..9d1048eea7e4734873676026906e07babf0345f5 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -3210,7 +3210,8 @@ am65_cpsw_nuss_init_port_ndev(struct am65_cpsw_common *common, u32 port_idx)
 			       NETIF_F_HW_VLAN_CTAG_FILTER;
 	port->ndev->xdp_features = NETDEV_XDP_ACT_BASIC |
 				   NETDEV_XDP_ACT_REDIRECT |
-				   NETDEV_XDP_ACT_NDO_XMIT;
+				   NETDEV_XDP_ACT_NDO_XMIT |
+				   NETDEV_XDP_ACT_XSK_ZEROCOPY;
 	port->ndev->vlan_features |=  NETIF_F_SG;
 	port->ndev->netdev_ops = &am65_cpsw_nuss_netdev_ops;
 	port->ndev->ethtool_ops = &am65_cpsw_ethtool_ops_slave;

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
