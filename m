Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q7FeMglLKWr9TwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB48668D26
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=uniontech.com header.s=onoh2408 header.b=BuNSqgCZ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=uniontech.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C4AD40A1E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:31:20 +0000 (UTC)
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	by lists.linaro.org (Postfix) with ESMTPS id AEBCB402EA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 03:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1781060642;
	bh=pPmroeQDHsA9ug2HnLTa8g6lPR2P7s9mi76pG8L8oJI=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=BuNSqgCZlJmnGmMVd/iPKDirBsV/5/yYjnlkefASCAi6aMqzs/z/bcIcKmsQZigQD
	 Oma6S1YRLOeZUU8cMhU9ouyZMCreH0ySQ65XEzJ/n6P84VspTI36PMDGbshBBYzcbw
	 3LkNp0z4Bc/jbviZTM/Vg+xVdylj8pwN5wt6gfFI=
X-QQ-mid: esmtpgz13t1781060624tc1abae19
X-QQ-Originating-IP: cLg5X++iDCAXLdBCZBxzRSN4dV8URO0z6d3AWbklGOE=
Received: from localhost.localdomain ( [1.202.39.170])
	by bizesmtp.qq.com (ESMTP) with
	id ; Wed, 10 Jun 2026 11:03:38 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 2952194183593288770
EX-QQ-RecipientCnt: 11
From: ZhaoJinming <zhaojinming@uniontech.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Date: Wed, 10 Jun 2026 11:03:22 +0800
Message-Id: <20260610030322.2802744-2-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260610030322.2802744-1-zhaojinming@uniontech.com>
References: <20260609094756.8DDFD1F00893@smtp.kernel.org>
 <20260610030322.2802744-1-zhaojinming@uniontech.com>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: N7V5dvLk9gGfNKwaqmR804LFZSjywXn/11FfW7YtIkRsck2p2GyRkBHO
	WuA0sPIcwR9KbL04RkBSCFOUz2uA1pc1F2KVRN82piJsoDkgQdy2QzSRCe12UVcFTPnuAOF
	h41ba8t2XHLCCoyvUt3EzjcQpVSgKwgT5yuEgDQucmBTk2wXd2/Z38TgHQ0yz3NbfpZiE5M
	5u1pQI26lnRsyBlJ3VAA/swO0KnYwdKRCiJP4fF6lboxEcE+QE6BhIfuqF1hfSxt1X25mr2
	x+i0yPJLZVDwny5lLpxdzoW29blMqpdYemGqyDn0zuQ8bAFylHYpsY4Aik4MyuHJT//lfad
	rqy3ZDFkgxviLXNdxiDE7S5OlslS0t4Our6O1V7Xx+k/Jq8B6Q04GjkQ+M3vF3z+HMjDt6T
	eFU9QZFMYkhlsxkmT0Njs1hvSXt9OIddf8jFrwtKIXqAWPTxp8Z+qI6yxm/bkb4Z6l3+sYW
	ls/kXdGvK+dC4guOTOgZIL6DeLldEHtvbO/fa2KorAwzQX5uP7Ie0t/zZnSOqklUWTPcSqV
	nzLf4aC8zJySXhRD6LkioU8ljWr9mlmY+iktQ9YjZcq108FicZgJqyc4AWOrJm6X51pA8AV
	lSo8RIga64z0PevFHPTgSXFsqZHpz+kcNI8RWrPt9ltU0/xmhQ1+jYiOpSn4IuiH0YqFbXN
	fYfpOuseGXPsFWdBSAtUxCWxhIn6ivADa5wxFyHCO5G1buUIzmQ6pwNuWRdK1zUx1Pm5JN0
	6G+qF/pVAN9kZVMrZfBDVLMF5tygGpr6bpRyLfBU0Cwrn8//VI2x9Y+9g+VctmVC1GslYSt
	Uatp4AXtAEKadOdVxG1Rr0sBe2KW/eFa9A/ZfvhBzxxyw4hV/6FDJ8IlZsjM9z14SszeYg+
	yZURZpARso0Svup2hZyQsZ0DSEZfTDeK6Y71mMPE6dBD4KVc/h5RPXMOSx0FOq5IkXWEKy9
	MzNN4ZQyGQsGF4CfmXs8MVVX71Df335WUftB2RKBHSbkta/dhobKTojoSeNYffbLKWdJECG
	2g3WutyIdy5GXLzy7vPu73bUnal7hUSeHMGvmJrvzR9pezlO8btFmFql77us+rvfvsbXNnu
	UUfV1BplF7w
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-Spamd-Bar: --
X-MailFrom: zhaojinming@uniontech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YHEO57NITACECWP6Q33IJ523QVQJLGJA
X-Message-ID-Hash: YHEO57NITACECWP6Q33IJ523QVQJLGJA
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:03 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ZhaoJinming <zhaojinming@uniontech.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 2/2] accel/rocket: Fix iommu_group leak and unsafe IRQ register access
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YHEO57NITACECWP6Q33IJ523QVQJLGJA/>
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
X-Rspamd-Queue-Id: 7FB48668D26

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
index e8a073e22ac2..f05043619169 100644
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
+	if (pm_runtime_get_if_active(core->dev)) {
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
