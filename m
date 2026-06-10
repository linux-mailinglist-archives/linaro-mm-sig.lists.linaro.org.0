Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2halGh5LKWoJUAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 05207668D30
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=uniontech.com header.s=onoh2408 header.b=NqULZSBC;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=uniontech.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24CDD3FDAE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:31:41 +0000 (UTC)
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	by lists.linaro.org (Postfix) with ESMTPS id 52C9B3F74C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 06:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1781071325;
	bh=FjDzXjUTCA7PwSwSBXMojIa1RoXXpb1tpWd5EIt2Ab4=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=NqULZSBCZen31aNEFQyql5UpEYhb2NYiS3SkqfOXh0VEWAj2asgUbVaL5XuiTQPu8
	 TO3nc7VHsFkTGwVHhbYoPlaVD/YGmEMG/wCmmU++bqrc62jCybhKkO1zNSnvogOMsc
	 jciznXlq03FdsUI5x5VvQggKpan2eHS8oCLKgvq0=
X-QQ-mid: esmtpsz18t1781071305t3236f62b
X-QQ-Originating-IP: iePxYMPyCq/TYnXweTLz+Oc+mDGPzOvpeL8ckYEnAJM=
Received: from localhost.localdomain ( [124.126.19.250])
	by bizesmtp.qq.com (ESMTP) with
	id ; Wed, 10 Jun 2026 14:01:37 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 12200062237353553403
EX-QQ-RecipientCnt: 11
From: ZhaoJinming <zhaojinming@uniontech.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Date: Wed, 10 Jun 2026 14:01:31 +0800
Message-Id: <20260610060132.3239648-1-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260610031431.E8EA71F00893@smtp.kernel.org>
References: <20260610031431.E8EA71F00893@smtp.kernel.org>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MOdUEiNUAftlWk9vIicVUgL6IwBpYf6MWLHZLxKPsMPW/oc3I2yonn8F
	9TFnDQXHMz7sj8m1AexAh6z3XlVdrLRH0AfXqNeOUZX1NQBmcbucA/guNic9YYVL3uk2vV5
	NJ7bpwqWp2CMBx9o2BPAa0PDeCPIkIFZx+WffGyGCzM+x+GF75HRz8TFdArXXDa1aZ7YtNi
	2nvKTf/6pDlddQuz4QZz9hKXVe2Uid/BEqQnKUS1tEGnN+ylXbK4EFVjXoujSuJvcNyNOmL
	8AnY4BYPJKRtXNvf5F+O1LzZ1KefTxNWz9AHAQZUhVaysMB2DOJRzB4/Pw8+bIUSh+PousB
	8Wxq3HeI8AtAfkHt6ml9BMafsV/T3SWhodTWvNSTyi0+m4obOeLGm26lym8Q0g8ORMN6fGz
	ogWGuGtwKBwIP/GyZyvJRxat2c0A5j85nedVbAmqIWhNlDpkIDZTgdn5lbxbaya+7AEZCY0
	0EVax6ZLLAtPufxRh1Ka0uYzZ/KFakfZy1uSoaOuVE4WrFVfCoLVqy+1GsErfyIqJRUyziv
	TYgutLWQbCREt6z3kzPvlSWs9i2EYlJveqXe0JTW1oXq5qEMMbJrWB9d9AjoQYafDZMvntS
	CJzvkxKhd9456MnWvD/s00+VkQ5D3P1yMrpGCSaQF4hKNK6LnODPEDbrtQ4J07FboX+bBB/
	yo1xADn1xXXW4M3fqEHZX4OGuia+D3ISlA5LTrFJ72VkUy8oMGgVv6xzFWQ/88WIoe3XFPc
	T5isbpxsjGUmW5bOkvKbHMqYrywZe/57+OEHfhGzEHCjmLHfXb00/8bgA980yv1zFrnwOHT
	cbC9hF9Y+yZv1YbWck1cGItB+1ZHSeL9EvEiCeX4kNEyPCay4JrCwmZQSPmFbdnEpsNhCO6
	jJSc3px7qbW/ZmY/qXP60CBvY5mjGXZ7wRd9PJNlJyrFhHKc4jT7omkuFSYaS+xDSYQmmPw
	gy8/OVkrVFoM2dU+ibN3mXHW5lRe+/5rxTxpkOu1lT6YOzHL5LW08yBrXxdkdM17WYHKnhc
	MHC7I/7YVNfrRuRnub4/t9lwplgxbCqMHfJG/tuQotrUVw/M6+KYYyFeWPH5MsTNvNEzLG3
	A==
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-RECHKSPAM: 0
X-Spamd-Bar: --
X-MailFrom: zhaojinming@uniontech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TOKTTB5BZOEN3I36FFMTGSQA5BMZZ57A
X-Message-ID-Hash: TOKTTB5BZOEN3I36FFMTGSQA5BMZZ57A
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:03 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ZhaoJinming <zhaojinming@uniontech.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 1/2] accel/rocket: Fix error path handling in rocket_job_run()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TOKTTB5BZOEN3I36FFMTGSQA5BMZZ57A/>
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
X-Rspamd-Queue-Id: 05207668D30

In rocket_job_run(), after taking an extra fence reference for
job->done_fence via dma_fence_get(), the error paths have three bugs:

- The dma_fence reference held by job->done_fence is never released,
  causing a reference leak.
- pm_runtime_get_sync() increments the usage counter even on failure,
  but the error path does not decrement it, leaking the runtime PM
  reference and preventing the NPU from suspending.
- A valid but unsignaled fence is returned to the DRM scheduler,
  which triggers WARN("Fence ... released with pending signals!")
  when the scheduler drops its reference.

Fix by replacing pm_runtime_get_sync() with pm_runtime_resume_and_get()
which auto-balances the usage counter on failure, releasing both fence
references on error, and returning ERR_PTR(ret) instead of the
unsignaled fence.

Cc: stable@vger.kernel.org
Fixes: 0810d5ad88a1 ("accel/rocket: Add job submission IOCTL")
Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
---
 drivers/accel/rocket/rocket_job.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index ac51bff39833..e8a073e22ac2 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -310,13 +310,22 @@ static struct dma_fence *rocket_job_run(struct drm_sched_job *sched_job)
 		dma_fence_put(job->done_fence);
 	job->done_fence = dma_fence_get(fence);
 
-	ret = pm_runtime_get_sync(core->dev);
-	if (ret < 0)
-		return fence;
+	ret = pm_runtime_resume_and_get(core->dev);
+	if (ret < 0) {
+		dma_fence_put(job->done_fence);
+		job->done_fence = NULL;
+		dma_fence_put(fence);
+		return ERR_PTR(ret);
+	}
 
 	ret = iommu_attach_group(job->domain->domain, core->iommu_group);
-	if (ret < 0)
-		return fence;
+	if (ret < 0) {
+		pm_runtime_put(core->dev);
+		dma_fence_put(job->done_fence);
+		job->done_fence = NULL;
+		dma_fence_put(fence);
+		return ERR_PTR(ret);
+	}
 
 	scoped_guard(mutex, &core->job_lock) {
 		core->in_flight_job = job;
-- 
2.20.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
