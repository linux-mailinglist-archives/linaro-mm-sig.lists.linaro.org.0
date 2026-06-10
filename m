Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jgsFCDZLKWocUAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:32:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F30668D3D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:32:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=uniontech.com header.s=onoh2408 header.b=lxoC9Ba5;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=uniontech.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8988D40A3C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:32:04 +0000 (UTC)
Received: from smtpbgbr1.qq.com (smtpbgbr1.qq.com [54.207.19.206])
	by lists.linaro.org (Postfix) with ESMTPS id BE0F840450
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 07:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1781075482;
	bh=Lz7tRcHhsQMSOJADDW7TXRw2/HZdu+zrYPBgdVPaoJ0=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=lxoC9Ba5gdZVCGgoP21Tk4kTElzw7kh8mZhoCWjlZADl69kDfRwrG8DfQUD2NNoxZ
	 TWkQ/JfLg5gPy07a0bsCWaAbhlEIadlrOp54vUlcJEoGE0pYJdbMXwUCqMu3M8iCoM
	 dQg9VyytfZGnabcTS4oq8zE65SXW6VXXmUUq0DWE=
X-QQ-mid: esmtpsz20t1781075463tdf94633b
X-QQ-Originating-IP: u7bnKZCN2RIVwN7K432cgmAtncJafcjvuAwIW4UI9ss=
Received: from localhost.localdomain ( [1.202.39.170])
	by bizesmtp.qq.com (ESMTP) with
	id ; Wed, 10 Jun 2026 15:11:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 18434185685029258688
EX-QQ-RecipientCnt: 11
From: ZhaoJinming <zhaojinming@uniontech.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Date: Wed, 10 Jun 2026 15:10:45 +0800
Message-Id: <20260610071045.3414828-2-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260610071045.3414828-1-zhaojinming@uniontech.com>
References: <20260610061915.1CA281F00893@smtp.kernel.org>
 <20260610071045.3414828-1-zhaojinming@uniontech.com>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NRaYAQcThOfQHS/M6CWXU1r/FUxQh0b6LxZ09Zc3ZxGh05Mzzmcp16ME
	tw3CHItjPoiD/3EYQHqYiuzdEdLnkneXhPuvv1xn9DhKn9ezirxBhdb0tBy9n3rXPaH+/FR
	AHjKoOi2gFpasAn/s1MrE+ExYqgyX8RqNFTNoLya6u2ebW4FdTjSdv9NpUvj3IGzHxgPk3m
	wX9YawW9y+N8HgS64TRhD4eeVwR5mZSdDefEoKUPu+If/KYfsIOCEUBbbBQ65NA5sdPCnQ3
	hGu6xJo5kZLIhLuBWnQh8jCwxS5Yt5QBBhFBiPuPVsbq3txBNe7Pltwqgqr2YYTFsXCSMGy
	5PYgztGJXSXciFa8pVL9WxmngHKCoE1f1Zau/gJy3pj41YlM4XVMa9Ksj5SGHLjGAvXOcXs
	yEav71TcBoOGR2D/Rww9c+X3H4UdnO3F6OeZY2HUgv4hPxV6av3F+EyA/G9zIIYVvy94b9n
	LU8Y5vY0MRWtjLiZwMNo91bUXAeE2SBzWwTJpDSUkt1wi3pDgEB0OMxvbdMqTXmhpIXfQoa
	N15PBAuy3JALOkfnth5Va/rwHH8+6fUgoscePceIcpGitIglYPPbLEG9LBCrgyAwd6RxAVn
	qjZT9Vkn892aTVmfvy/1DRR9Z662ngIAA2nmumCKuvKNWvu82PSEJe4fksrdONuDFTN1GIL
	+5GBv4RVMlbJ3AeUN78UAjZlp8bOKLDiGLTSPnM8bEcD+7ghTYPJ7O/1qz7Rc40kcY6jGIJ
	Wnwh46+DpveLuYYSClYEAHTS+s236maKXlMfCG+rDT+qfxJQnqCAydSu2ZnvzyL4cVKNvNe
	I+U61TNedif0/WutKQjAYsYdRxX1KwuKpaEaOPHuoXOUHacNmlf4VudLi6Uk8FayV87SjuT
	b9LTHZkLk1J+MFlz0fjdn9vRSwGeRJNorZpAJmr0yHWPoXRazM1srfnszDgiUm1DuIfL2ir
	iMHY9C8+/2hVJP8oZOuYWyrQA+Rq/58x3HGqdCNI6VqYTCc8sYWq+1LTLY5wZ/ExSW/rXHn
	8FzdCvFKYCLIHmS/W73Ymr1ae205QzKL9iAIVDQbW2KT6etzbafoRTeZzxl/e8iVf7dYUcF
	NlZoc2ewBHpnpm60X5b/asSZw0+ZEpJinL9gG4xmQtbnPO+RDmA3nP78a+Qzf6/jYGO2FxJ
	0Fv3kENyyw0h44A2Be+upcDR4g==
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-Spamd-Bar: --
X-MailFrom: zhaojinming@uniontech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EO7L5EGQ576YAKBWNXVUH7HYOIRNMEEO
X-Message-ID-Hash: EO7L5EGQ576YAKBWNXVUH7HYOIRNMEEO
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:04 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ZhaoJinming <zhaojinming@uniontech.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 2/2] accel/rocket: Fix iommu_group leak and unsafe IRQ register access
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EO7L5EGQ576YAKBWNXVUH7HYOIRNMEEO/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[uniontech.com:email,uniontech.com:mid,uniontech.com:from_mime,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0F30668D3D

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
 drivers/accel/rocket/rocket_job.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index e8a073e22ac2..334bf01c3382 100644
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
@@ -428,16 +431,28 @@ static irqreturn_t rocket_job_irq_handler_thread(int irq, void *data)
 static irqreturn_t rocket_job_irq_handler(int irq, void *data)
 {
 	struct rocket_core *core = data;
-	u32 raw_status = rocket_pc_readl(core, INTERRUPT_RAW_STATUS);
+	u32 raw_status;
+	int ret;
+
+	ret = pm_runtime_get_if_active(core->dev);
+	if (ret == 0)
+		return IRQ_NONE;
+
+	raw_status = rocket_pc_readl(core, INTERRUPT_RAW_STATUS);
 
 	WARN_ON(raw_status & PC_INTERRUPT_RAW_STATUS_DMA_READ_ERROR);
 	WARN_ON(raw_status & PC_INTERRUPT_RAW_STATUS_DMA_WRITE_ERROR);
 
 	if (!(raw_status & PC_INTERRUPT_RAW_STATUS_DPU_0 ||
-	      raw_status & PC_INTERRUPT_RAW_STATUS_DPU_1))
+	      raw_status & PC_INTERRUPT_RAW_STATUS_DPU_1)) {
+		if (ret > 0)
+			pm_runtime_put(core->dev);
 		return IRQ_NONE;
+	}
 
 	rocket_pc_writel(core, INTERRUPT_MASK, 0x0);
+	if (ret > 0)
+		pm_runtime_put(core->dev);
 
 	return IRQ_WAKE_THREAD;
 }
-- 
2.20.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
