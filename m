Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mD0XJyhLKWoTUAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C413668D36
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=uniontech.com header.s=onoh2408 header.b=Q3vrav3p;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=uniontech.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55D893FDAE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:31:51 +0000 (UTC)
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	by lists.linaro.org (Postfix) with ESMTPS id 42EAC3F74C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 06:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1781071331;
	bh=kfi9QQs1sSwBEx+EWPByMHmDQhMKagxQkR72o+z1MxU=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=Q3vrav3p2K3rIndpoalfPkjR3tbptoQGE0460gBJDktvHpgYr+qwWyMShs6/eayfe
	 cw26sDAS3sO6afKnl4zV6lMEh0jrKn77n2aOh7wDBnxseBn1ZGsGtp1Cw2oYkdzur0
	 jn7OB/NFsbz1qclZw0M8jHY2khqPxg4mNtSKZ/V0=
X-QQ-mid: esmtpsz18t1781071313t87eaabd4
X-QQ-Originating-IP: HzTryzSASr1kVugWO+zDD+LA0POeXIQkgLA7vapCPC0=
Received: from localhost.localdomain ( [124.126.19.250])
	by bizesmtp.qq.com (ESMTP) with
	id ; Wed, 10 Jun 2026 14:01:48 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 4142150529808979720
EX-QQ-RecipientCnt: 11
From: ZhaoJinming <zhaojinming@uniontech.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Date: Wed, 10 Jun 2026 14:01:32 +0800
Message-Id: <20260610060132.3239648-2-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260610060132.3239648-1-zhaojinming@uniontech.com>
References: <20260610031431.E8EA71F00893@smtp.kernel.org>
 <20260610060132.3239648-1-zhaojinming@uniontech.com>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: N9YbC0BvHDAbkCjuMZ1NwoUZFgpUVUCAqzsRZ3gvum4FTtXf4iU8FymF
	uW53nWRxEkGIJRiQj2mIB/yE2aFbrBGNnVOUCFL3xKpkP2GJC1UhBwjIjwZ/VDqZzcoBdcg
	J0LLr2WIomNApAxfDrOusE54FaOs0+kzDiXyI3S+baCdNgs2JlS29cy54V9+a6NuBo0+BZP
	WWkGa2KnHibtGA/ksmXXk7YGx7iIu1ETVJwk0xhM71sLClBDrcKL1IhiStC0Ljvy54BMKNt
	q0dIqLgREVyBsEEA8QLZAMz4K5pKfSyTb5Bg5xWshzO/4U6o8A5lMQsFekNVxQqmY+qH5ao
	mBOaTii/nbW8L12GJLhF0vUAxINwwQl8bUC6O/jolb3MniSpnyMmaWcGPI3bg3Jy4DsjDxV
	Tlsae97O0XsHwCLqqe9O+JO0nX6Us3ncJFV8txROEjtqnVgCTPVuuY9LfN+nd+L2z+BPb8e
	gtmXpc79vclmjVLq/uaxpW5mAbQAgejSRbDwL6vbR6Q7EWhCDi294ousgGp9neT0rKlVI58
	3AuL57y49fyy6QMy8BRTtVrrUGgsRln/W4U9Dw750hleUDrPNSMHpA7IL8zY2D3PxXkEy+A
	O1jIyVPmuGbl3GvcOuciGx7tDlr+03DBGLbS8vaMOnB8JnzVX+WbJ7qXaycdzIA4WQeUbjU
	/XCB2SG8PjWy2jH2reIIj+wkQ3yjLX46lea9Nfgb27jrz1bH5+hstA6eJ+D9FMjKSjTu7bL
	kYN3mr/7b1wexJggVox3qJFkqPbzKcmKlCPYVu0uNAOy2EBlajBuEr6Fhcb30vxQXbp7elC
	K4C231SkHUf3bsM/yZtdD5xtfigl6C/K5aft2CSCm3+H6BTvO5fweQUIB31Zz8a+Xw6AZwS
	nagmIvDV4wpXVQj7z10nmHndZ7lRB05Z9dO4stLg2DGJ0TPrWPkSU3xuh9HXZt1OOYxhNtc
	AHdImdEmJ8Z5MQWsA/3btrGzi8Gf5FbQxnlXdSmpRNOBH3szPHaapZxnQl2J9+fCYOYmoX5
	pMiL6d6qPb6O+CruXGGxyjQJoX3xysvhsu2uXGP4IHjt6AdPnYOTl7+o3aeADvnwgKDZlQd
	XHyy339WLBJ5NetmdOa/T7RBWrSTzG/Zuh9BarncIH8fPyr7Q5qthNAGDOX6FCdkrBvwDBb
	kWzIWrOZauWAPwk=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-Spamd-Bar: --
X-MailFrom: zhaojinming@uniontech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JIQISL3B7UBL7S2KELYQEU5CA72V3MHL
X-Message-ID-Hash: JIQISL3B7UBL7S2KELYQEU5CA72V3MHL
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:03 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ZhaoJinming <zhaojinming@uniontech.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 2/2] accel/rocket: Fix iommu_group leak and unsafe IRQ register access
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JIQISL3B7UBL7S2KELYQEU5CA72V3MHL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.59 / 15.00];
	R_DKIM_REJECT(1.00)[uniontech.com:s=onoh2408];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[uniontech.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jeff.hugo@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:zhaojinming@uniontech.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[zhaojinming@uniontech.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[uniontech.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhaojinming@uniontech.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,uniontech.com:email,uniontech.com:mid,uniontech.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C413668D36

Two bugs in the IRQ handling path:

1) iommu_group reference leak in rocket_job_handle_irq():
   iommu_group_get() increments the reference count but the returned
   pointer is passed directly to iommu_detach_group() which does not
   consume it. Since this runs on every completed job, the reference
   count accumulates and prevents the group from being freed. Use
   core->iommu_group instead, consistent with rocket_reset().

2) Unsafe hardware register access in shared IRQ handler:
   rocket_job_irq_handler() is registered with IRQF_SHARED but accesses
   hardware registers without checking runtime PM status. If another
   device on the same IRQ line triggers an interrupt while the NPU is
   suspended, register reads return 0xffffffff, spuriously triggering
   WARN_ON macros and falsely returning IRQ_WAKE_THREAD.

   Add pm_runtime_get_if_active() in the hardirq handler to atomically
   verify the device is active before accessing registers. Each handler
   (hardirq and threaded) independently acquires and releases its own
   runtime PM reference to avoid coalescing-related leaks when the
   IRQ core coalesces multiple wakeups into a single thread execution.

Cc: stable@vger.kernel.org
Fixes: 0810d5ad88a1 ("accel/rocket: Add job submission IOCTL")
Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
---
 drivers/accel/rocket/rocket_job.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index e8a073e22ac2..0ea3b3099704 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -349,7 +349,7 @@ static void rocket_job_handle_irq(struct rocket_core *core)
 				return;
 			}
 
-			iommu_detach_group(NULL, iommu_group_get(core->dev));
+			iommu_detach_group(NULL, core->iommu_group);
 			dma_fence_signal(core->in_flight_job->done_fence);
 			pm_runtime_put_autosuspend(core->dev);
 			core->in_flight_job = NULL;
@@ -420,7 +420,10 @@ static irqreturn_t rocket_job_irq_handler_thread(int irq, void *data)
 {
 	struct rocket_core *core = data;
 
-	rocket_job_handle_irq(core);
+	if (pm_runtime_get_if_active(core->dev) == 1) {
+		rocket_job_handle_irq(core);
+		pm_runtime_put(core->dev);
+	}
 
 	return IRQ_HANDLED;
 }
@@ -428,16 +431,24 @@ static irqreturn_t rocket_job_irq_handler_thread(int irq, void *data)
 static irqreturn_t rocket_job_irq_handler(int irq, void *data)
 {
 	struct rocket_core *core = data;
-	u32 raw_status = rocket_pc_readl(core, INTERRUPT_RAW_STATUS);
+	u32 raw_status;
+
+	if (pm_runtime_get_if_active(core->dev) != 1)
+		return IRQ_NONE;
+
+	raw_status = rocket_pc_readl(core, INTERRUPT_RAW_STATUS);
 
 	WARN_ON(raw_status & PC_INTERRUPT_RAW_STATUS_DMA_READ_ERROR);
 	WARN_ON(raw_status & PC_INTERRUPT_RAW_STATUS_DMA_WRITE_ERROR);
 
 	if (!(raw_status & PC_INTERRUPT_RAW_STATUS_DPU_0 ||
-	      raw_status & PC_INTERRUPT_RAW_STATUS_DPU_1))
+	      raw_status & PC_INTERRUPT_RAW_STATUS_DPU_1)) {
+		pm_runtime_put(core->dev);
 		return IRQ_NONE;
+	}
 
 	rocket_pc_writel(core, INTERRUPT_MASK, 0x0);
+	pm_runtime_put(core->dev);
 
 	return IRQ_WAKE_THREAD;
 }
-- 
2.20.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
