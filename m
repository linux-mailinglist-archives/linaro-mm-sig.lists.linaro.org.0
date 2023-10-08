Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F767CF78B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:54:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56B9E40C58
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:54:40 +0000 (UTC)
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
	by lists.linaro.org (Postfix) with ESMTPS id F19F53ED8E
	for <linaro-mm-sig@lists.linaro.org>; Sun,  8 Oct 2023 14:36:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ispras.ru header.s=default header.b=Q8eNVony;
	spf=pass (lists.linaro.org: domain of p.sakharov@ispras.ru designates 83.149.199.84 as permitted sender) smtp.mailfrom=p.sakharov@ispras.ru;
	dmarc=pass (policy=none) header.from=ispras.ru
Received: from localhost.localdomain (unknown [85.89.126.105])
	by mail.ispras.ru (Postfix) with ESMTPSA id 4C4ED40F1DEB;
	Sun,  8 Oct 2023 14:36:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 4C4ED40F1DEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
	s=default; t=1696775817;
	bh=RoI0NzZPsRKEzf3D3JCemfXog6bSvCczYoK0HGBz6tk=;
	h=From:To:Cc:Subject:Date:From;
	b=Q8eNVonyqxFLuwSGdRKO3poe5TFCrbHZorXms5AfSGQK/RYBvjDy5T6lJiNKTtKEM
	 hisIozg7H45+6TZ4xM8DJF6FYvAC9qaMwpwZqpNpB2BIEmZfmAvjT3znNBXzTMpn4m
	 y6DKkfx+IMycG/5rg0CdUm8BDz8h7RMB1UfPG9cQ=
From: Pavel Sakharov <p.sakharov@ispras.ru>
To: Sumit Semwal <sumit.semwal@linaro.org>
Date: Sun,  8 Oct 2023 17:36:36 +0300
Message-ID: <20231008143637.113957-1-p.sakharov@ispras.ru>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ispras.ru,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[ispras.ru:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:83.149.199.84];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3058, ipnet:83.149.192.0/18, country:RU];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[ispras.ru:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F19F53ED8E
X-MailFrom: p.sakharov@ispras.ru
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6PREXAPJUIC3YS7KUH5RCUYN4TC67CZL
X-Message-ID-Hash: 6PREXAPJUIC3YS7KUH5RCUYN4TC67CZL
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:50:06 +0000
CC: Pavel Sakharov <p.sakharov@ispras.ru>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Arvind Yadav <Arvind.Yadav@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Alexey Khoroshilov <khoroshilov@ispras.ru>, lvc-project@linuxtesting.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Fix NULL pointer dereference in sanitycheck()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6PREXAPJUIC3YS7KUH5RCUYN4TC67CZL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If mock_chain() returns NULL, NULL pointer is dereferenced in
dma_fence_enable_sw_signaling().

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Pavel Sakharov <p.sakharov@ispras.ru>

Fixes: d62c43a953ce ("dma-buf: Enable signaling on fence for selftests")
---
 drivers/dma-buf/st-dma-fence-chain.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/st-dma-fence-chain.c b/drivers/dma-buf/st-dma-fence-chain.c
index c0979c8049b5..661de4add4c7 100644
--- a/drivers/dma-buf/st-dma-fence-chain.c
+++ b/drivers/dma-buf/st-dma-fence-chain.c
@@ -84,11 +84,11 @@ static int sanitycheck(void *arg)
 		return -ENOMEM;
 
 	chain = mock_chain(NULL, f, 1);
-	if (!chain)
+	if (chain)
+		dma_fence_enable_sw_signaling(chain);
+	else
 		err = -ENOMEM;
 
-	dma_fence_enable_sw_signaling(chain);
-
 	dma_fence_signal(f);
 	dma_fence_put(f);
 
-- 
2.42.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
