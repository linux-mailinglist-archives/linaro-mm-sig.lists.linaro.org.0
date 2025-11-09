Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EP9NAhH54GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C086041005E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5A234050A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:58:23 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 63AAB3F719
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Nov 2025 21:38:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=iuSWbBXg;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of rogerq@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=rogerq@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E0E3D60008;
	Sun,  9 Nov 2025 21:38:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 598ACC4CEF8;
	Sun,  9 Nov 2025 21:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762724323;
	bh=mYeKBxdNWxr3l2Xd+2fxH5pR3XRM2UpwbXIymhRfXcA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iuSWbBXghof79JaI2GX0Ghhh5oDX1JVe6wF7V08+c4bGBKeD83MgJg0X+01WyJ2MM
	 24Zh5+WF4RaFmPSSMyM/BrE9Q+gibWipI0eQAz9t7TuE3r0DaC6DVZPYC7FjUjcn20
	 RRdYw5DZAbPT/9GAZ6pU6BhyJU+lSyXG8Gx5/iXbRcbhJmtEbGNwWn1TtQdzNe34fQ
	 SahDtkZ6jyWduwQJTBeBCK5m2FYjJlHYHE8aEEmni9/1MOwx8XxuCXBGb3GEJPHJ+c
	 2oRfu9FHeS8tiRWeiSQO4W43n1UDSyQzI/fyIYTQPPN9x987HYN+GCPWIDZECUly6/
	 SmxQx7sJUOmyQ==
From: Roger Quadros <rogerq@kernel.org>
Date: Sun, 09 Nov 2025 23:37:51 +0200
MIME-Version: 1.0
Message-Id: <20251109-am65-cpsw-xdp-zc-v2-1-858f60a09d12@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1689; i=rogerq@kernel.org;
 h=from:subject:message-id; bh=mYeKBxdNWxr3l2Xd+2fxH5pR3XRM2UpwbXIymhRfXcA=;
 b=owEBbQKS/ZANAwAIAdJaa9O+djCTAcsmYgBpEQnZcwLY0HMVPPZ/5ui9vfL2GAhL/5dDS3p3K
 kFMMOKF2SeJAjMEAAEIAB0WIQRBIWXUTJ9SeA+rEFjSWmvTvnYwkwUCaREJ2QAKCRDSWmvTvnYw
 k3maEACi9iTV7eypb48uXJC0Rh1cWcZbkK3adwV37dIK7x+5G8ZmM/4EsZB1KGbnghoKaBxmi8H
 nWYtXxAOi4IRXoFJ+Zwhm2BILJt0MXSQ4aFa6s09INzw4vzjQNkzuYKDkKPR8lGCGKJ+8d5CcMc
 gp5dyXlkAE9W4EM9YFGW3HxPR46uYbPW6+L0gNXZeumhjkqMIaXpcUt9ObiZJU4J0Cedyeh6/vt
 F1QSpFaN+1eDoc57RIlAdYh2ooHYq9vummsn9FHnSOHaXueeMDNdigkS/H+Z5lmUJyWLRM25XI4
 4W85nq3nSc2xlNnmas6hMg2nZo+LHZF+g0IAs4ewaUQ0ca4nAH0CJdJdLd2FY2bFVl1gUUJybdG
 TCoqq/9g44f/9FId7UrSLKFZnr39F5K9JoL4P7Kk1SqYlktqCMdF0VUSAg6H21iCI8dbLi8EzXr
 /iqn2Y0v259e6D8U7Ccd4+TljRflL1cGibPGO6XCjf/ZL5Q4iAmke6gbJpYbpwut9+8HnkEM07y
 yLhTM6W0fYiy7H2doBpa2WZtIm0dbjQth4NzbkOj6vAZpb+ZBoGcJVsSmrfoGcCPs+csaDjAcng
 pmgblzX2IvOkoaZgW9dkd2fE2JaXc0lwp8BUSZJ81/r+DiQcmTnNtJBjcFenlHDGV77gkuDpLL3
 Iqb9ctE7Y5SSCSA==
X-Developer-Key: i=rogerq@kernel.org; a=openpgp;
 fpr=412165D44C9F52780FAB1058D25A6BD3BE763093
X-Spamd-Bar: --
X-MailFrom: rogerq@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SXSWHITI7U5RTGECSCPHC7VYETHV4YKZ
X-Message-ID-Hash: SXSWHITI7U5RTGECSCPHC7VYETHV4YKZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:48 +0000
CC: srk@ti.com, Meghana Malladi <m-malladi@ti.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Roger Quadros <rogerq@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v2 1/7] net: ethernet: ti: am65-cpsw: fix BPF Program change on multi-port CPSW
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SXSWHITI7U5RTGECSCPHC7VYETHV4YKZ/>
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
	NEURAL_HAM(-0.00)[-0.429];
	FROM_NEQ_ENVFROM(0.00)[rogerq@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C086041005E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On a multi-port CPSW system, stopping and starting just one port (ndev)
will not restart the queues if other ports (ndevs) are open.

Instead, check the usage_count variable to know if CPSW is running
and if so restart all the queues.

Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 drivers/net/ethernet/ti/am65-cpsw-nuss.c | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index d5f358ec982050751a63039e73887bf6e7f684e7..f8beb1735fb9cb75577e60f5b22111cb3a66acb9 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -1919,18 +1919,33 @@ static int am65_cpsw_xdp_prog_setup(struct net_device *ndev,
 				    struct bpf_prog *prog)
 {
 	struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
-	bool running = netif_running(ndev);
+	struct am65_cpsw_common *common = port->common;
+	bool running = !!port->common->usage_count;
 	struct bpf_prog *old_prog;
+	int ret;
 
-	if (running)
-		am65_cpsw_nuss_ndo_slave_stop(ndev);
+	if (running) {
+		/* stop all queues */
+		am65_cpsw_destroy_txqs(common);
+		am65_cpsw_destroy_rxqs(common);
+	}
 
 	old_prog = xchg(&port->xdp_prog, prog);
 	if (old_prog)
 		bpf_prog_put(old_prog);
 
-	if (running)
-		return am65_cpsw_nuss_ndo_slave_open(ndev);
+	if (running) {
+		/* start all queues */
+		ret = am65_cpsw_create_rxqs(common);
+		if (ret)
+			return ret;
+
+		ret = am65_cpsw_create_txqs(common);
+		if (ret) {
+			am65_cpsw_destroy_rxqs(common);
+			return ret;
+		}
+	}
 
 	return 0;
 }

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
