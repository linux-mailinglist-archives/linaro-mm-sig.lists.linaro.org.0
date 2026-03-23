Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sM2/F6Fh5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BC74312D6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:25:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4A90402D3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:25:51 +0000 (UTC)
Received: from mx2.cyberprotect.ru (mx2.cyberprotect.ru [176.10.93.31])
	by lists.linaro.org (Postfix) with ESMTPS id A6CE33F683
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Mar 2026 10:29:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cyberprotect.ru header.s=dkim-r header.b=XysKIAOS;
	dkim=pass header.d=cyberprotect.ru header.s=dkim header.b=hwnjyxiz;
	spf=pass (lists.linaro.org: domain of Dmitry.Chumachenko@cyberprotect.ru designates 176.10.93.31 as permitted sender) smtp.mailfrom=Dmitry.Chumachenko@cyberprotect.ru;
	dmarc=pass (policy=quarantine) header.from=cyberprotect.ru
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cyberprotect.ru; s=dkim-r; h=MIME-Version:Date:From:Sender:Reply-To;
	bh=QcbI5Xku4fL4lXhZomurIoI8W7kAjTeXntNYDbnIz3I=; b=XysKIAOSOYPk5gW7S0b71zF9Li
	UByknk+MwzDidsKgKUgVxA3JtDO2fBHf/1uEvLnICjA6i+ifY9MlU47AXbt9oA9PLV8L77YaEcL3/
	cLGx5mdMwM1HN3MmdsZfOrE/BfGXAGqtAp5QCdYe7pK0YCQmb6otNSrIIymWyfiLoWgT0JxgTe/C4
	75fUKfYdE7M1uzLCLgU7fUlGu4mZUV66LXvMZ944bNowQnrFt7wwsKM1Yrsq17INlQ/2OiFiF81pX
	h3sGGKgdNoysm7Bwtl4z1fZy3HH5MK9lrhmAA7hCfkJavNHPnfOI45vAyA0a/Ns5krm0k/YrBvlyd
	H14MhkWA==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cyberprotect.ru; s=dkim; h=MIME-Version:Date:From:Sender:Reply-To;
	bh=QcbI5Xku4fL4lXhZomurIoI8W7kAjTeXntNYDbnIz3I=; b=hwnjyxiz9371raxn6PLZzNScaW
	AJSuZZfz5912EOXjePSXht8dny98iLOVnDqC4rg3XOt80OYc81DTJ0c6/2Cg==;
From: Dmitriy Chumachenko <Dmitry.Chumachenko@cyberprotect.ru>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Date: Mon, 23 Mar 2026 13:29:20 +0300
Message-ID: <20260323102920.19937-1-Dmitry.Chumachenko@cyberprotect.ru>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Originating-IP: [10.80.0.30]
X-ClientProxiedBy: AIP-EXCH-1.aip.ooo (10.77.28.101) To AIP-EXCH-2.aip.ooo
 (10.77.28.102)
X-Spamd-Bar: --
X-MailFrom: Dmitry.Chumachenko@cyberprotect.ru
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KNR2C2PXXS5WY4GE55LTGHPONHHIOIBW
X-Message-ID-Hash: KNR2C2PXXS5WY4GE55LTGHPONHHIOIBW
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:23 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@osdl.org>, Andreas Oberritter <obi@linuxtv.org>, Johannes Stezenbach <js@linuxtv.org>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, lvc-project@linuxtesting.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] media: pluto2: fix potential buffer overflow in pluto_dma_end()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNR2C2PXXS5WY4GE55LTGHPONHHIOIBW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[cyberprotect.ru : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[cyberprotect.ru:s=dkim-r,cyberprotect.ru:s=dkim];
	DATE_IN_PAST(1.00)[678];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[cyberprotect.ru:-];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[Dmitry.Chumachenko@cyberprotect.ru,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.344];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxtesting.org:url,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 94BC74312D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The while loop in pluto_dma_end() scans the DMA buffer for MPEG-TS sync 
bytes (0x47) at 188-byte intervals. However, it does not check the buffer 
boundary. If the buffer contains 0x47 at every 188-byte offset, the loop 
index will exceed the buffer size, causing an out-of-bounds read.

Add a check to ensure the index stays within TS_DMA_BYTES.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: c7cadb3a02b5 ("[PATCH] dvb: add Pluto2 driver")
Signed-off-by: Dmitriy Chumachenko <Dmitry.Chumachenko@cyberprotect.ru>
---
 drivers/media/pci/pluto2/pluto2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/pci/pluto2/pluto2.c b/drivers/media/pci/pluto2/pluto2.c
index 6ac9b9bd7435..fd7f8d8b85a8 100644
--- a/drivers/media/pci/pluto2/pluto2.c
+++ b/drivers/media/pci/pluto2/pluto2.c
@@ -291,7 +291,7 @@ static void pluto_dma_end(struct pluto *pluto, unsigned int nbpackets)
 	 */
 	if ((nbpackets == 0) || (nbpackets > TS_DMA_PACKETS)) {
 		unsigned int i = 0;
-		while (pluto->dma_buf[i] == 0x47)
+		while (i < TS_DMA_BYTES && pluto->dma_buf[i] == 0x47)
 			i += 188;
 		nbpackets = i / 188;
 		if (i == 0) {
-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
