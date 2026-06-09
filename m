Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LfDaHN1KKWrYTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:30:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CE3668D06
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:30:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=uniontech.com header.s=onoh2408 header.b=hrsS21lO;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=uniontech.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32CF040A43
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:30:36 +0000 (UTC)
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	by lists.linaro.org (Postfix) with ESMTPS id 191A13F74C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Jun 2026 09:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1780997695;
	bh=F/ATENqeutHEFBLWCq5KxclWHjONItFaJGr0IzvOtgs=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=hrsS21lOqN3i5+rw4GQJYsou/okEHaw8A3dvbW4xnGA8vjIFP26VfdlkkRIqrOuM0
	 Y0p0jG7oAkgAI8i1lHHCZ2gAguOMejMXAKJM0u4AQwwprNTBPxn45ALc8r5/BTyeWN
	 VPSaAt+GkDFqKEjNwRqHBb6XXSx3HlVQTNo9odGo=
X-QQ-mid: esmtpsz17t1780997677tad01d33d
X-QQ-Originating-IP: pIjK55WJPXl+Qs4jtZPT67LZr4pec0GM+rpziWhGDf4=
Received: from localhost.localdomain ( [124.126.19.250])
	by bizesmtp.qq.com (ESMTP) with
	id ; Tue, 09 Jun 2026 17:34:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 3266297912186802098
EX-QQ-RecipientCnt: 11
From: ZhaoJinming <zhaojinming@uniontech.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Date: Tue,  9 Jun 2026 17:33:46 +0800
Message-Id: <20260609093346.380396-2-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260609093346.380396-1-zhaojinming@uniontech.com>
References: <20260608103845.6F4AB1F00893@smtp.kernel.org>
 <20260609093346.380396-1-zhaojinming@uniontech.com>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MaCc72GaN9m8qf291dVW5l5v6BjRZqqJqqnaoaqCSiXKnKE16TR8K2Lk
	cXCgpcdJ7ZJhdiFpGeECCRCl1gmn7Ihe6dfWjHTelziGAvHKk4S5SABhIo2Kn+Xl1o/CeQ5
	fUfmdwsANFcFqKHexaANoj9tDk82BzE+j6o+o3H4kkG9bl3YCddoVepHNFEDsbUmSViBIOy
	xiRoLoTDuAWz86rBtBD0XBiB4FjNTOGkNlsjG1idvR0BXScYFYF9BuWm1BcyWdFz6px3TJQ
	RhW05gxxPg1JBk7xGKJqKZq0Lvdq93kQ9Hufxp62PMWDHqSmVDRbWYK7NexmlQQBhKqqJ9l
	B9aYGTxvc431MPp8hfBdw15DtPVQSnxt+apmlW51o7AoUEGt9CWD2BqV5/1YzRvoekvJr37
	Ommy87BbXWVel2uoSKfXXJ19hXXywIUYp/WAkeasoCSQ88iJ+iEq9JnqEM3FIX+6+Zkl6+I
	6psOiqGO8PRdgnXK0uCixr8y6ehzrwCAGIUyJSkbVGYNJpBLOXW2rOgX0ZI9Qklua9W0v3j
	daSI5HWW6/OEe4a9LggxOFJAGWEgoYJC9prbPqAt5o3wn6XHggo4nwAQfRo4KZnRX+rs7Hp
	4+Eis0yzdigDf6/NTfGF98p4XEQ34gIUyuZctJuSXBslKlp9x6D2VgMbmyWgHxCQJFVnqNP
	urnsp+146OFRhGTYodqZIGmi+3rzBc6k6b36+Rk86pyZ2aWDI2H1J/t5QG5A0koO+jmXytW
	/49XXnYJMixmHMYjTViuSMPXw4o2XnT0gdjRwpIJtjE8KA4E6W0mfIZSw4mCgveErMKnmQL
	MH8KasKfckWy4ziaIthfa1lzcR37QsIeJBUTAKvwhvqDmyVZBW+/gkcMubEBvnUmf42+kSh
	vs09A0Wq1qwl+j/idZIO8xj/FraDKPNQz3tcY5/417iKhOnrdawmAdJlLz95bxTKsZvD98W
	dEjNkNNGl+ttw3qYIBfM3BUX4myvXM9OByxktke0ffJ8TC/078Y0S+kvMw/TPRPefLNJVZQ
	iGFQH/cib7D98XQQVzBMXVwgfZcD4x8A43rk6tdIPg6VVCHiz3/EkxvB5FSg6dHcc7BRh40
	g==
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-RECHKSPAM: 0
X-Spamd-Bar: --
X-MailFrom: zhaojinming@uniontech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LA5EGRYEQ3KWBN6F4O3FSMZJPAVX4RMH
X-Message-ID-Hash: LA5EGRYEQ3KWBN6F4O3FSMZJPAVX4RMH
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:02 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ZhaoJinming <zhaojinming@uniontech.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 2/2] accel/rocket: Fix iommu_group leak and unsafe IRQ register access
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LA5EGRYEQ3KWBN6F4O3FSMZJPAVX4RMH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[25];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[uniontech.com:s=onoh2408];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[uniontech.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jeff.hugo@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:zhaojinming@uniontech.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[zhaojinming@uniontech.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[uniontech.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhaojinming@uniontech.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,uniontech.com:email,uniontech.com:mid,uniontech.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 25CE3668D06

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

   Replace with pm_runtime_get_if_active(), which atomically checks the
   device status under spinlock and increments the usage count to keep
   the device active during register access. Balance the extra reference:
   - If the interrupt is not for this device (raw_status does not match
     DPU_0/DPU_1), put in the hardirq handler before returning IRQ_NONE.
   - If the interrupt is for this device, the thread handler puts after
     completing register writes.

Cc: stable@vger.kernel.org
Fixes: 0810d5ad88a1 ("accel/rocket: Add job submission IOCTL")
Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
---
 drivers/accel/rocket/rocket_job.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index e8a073e22ac2..30c677952b64 100644
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
@@ -421,6 +421,7 @@ static irqreturn_t rocket_job_irq_handler_thread(int irq, void *data)
 	struct rocket_core *core = data;
 
 	rocket_job_handle_irq(core);
+	pm_runtime_put(core->dev);
 
 	return IRQ_HANDLED;
 }
@@ -428,14 +429,20 @@ static irqreturn_t rocket_job_irq_handler_thread(int irq, void *data)
 static irqreturn_t rocket_job_irq_handler(int irq, void *data)
 {
 	struct rocket_core *core = data;
+
+	if (!pm_runtime_get_if_active(core->dev))
+		return IRQ_NONE;
+
 	u32 raw_status = rocket_pc_readl(core, INTERRUPT_RAW_STATUS);
 
 	WARN_ON(raw_status & PC_INTERRUPT_RAW_STATUS_DMA_READ_ERROR);
 	WARN_ON(raw_status & PC_INTERRUPT_RAW_STATUS_DMA_WRITE_ERROR);
 
 	if (!(raw_status & PC_INTERRUPT_RAW_STATUS_DPU_0 ||
-	      raw_status & PC_INTERRUPT_RAW_STATUS_DPU_1))
+	      raw_status & PC_INTERRUPT_RAW_STATUS_DPU_1)) {
+		pm_runtime_put(core->dev);
 		return IRQ_NONE;
+	}
 
 	rocket_pc_writel(core, INTERRUPT_MASK, 0x0);
 
-- 
2.20.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
