Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pOFBEhRLKWoDUAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CF740668D2B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:31:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=uniontech.com header.s=onoh2408 header.b=im191+tY;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=uniontech.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E64E140A25
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:31:30 +0000 (UTC)
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	by lists.linaro.org (Postfix) with ESMTPS id 7708340450
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Jun 2026 03:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1781060636;
	bh=FjDzXjUTCA7PwSwSBXMojIa1RoXXpb1tpWd5EIt2Ab4=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=im191+tYgUA5nWAtnwvKYxgm8AgZKHXXTOKbRZQCSzQK3xsLaX/Au3Jh26Mje35i8
	 BtfmmFeXqmYpjRu1+v1tbKikd0PWRqyvgFdU0awZql4GOTL3cYATpROeD9kI6IcrEc
	 hJvj6cGaSR4MPAa6G09YXa7uT1BiCBdSYHXtIuHI=
X-QQ-mid: esmtpgz13t1781060616t4cb5f45a
X-QQ-Originating-IP: HqAmerhJ3hI49ZXtNeNqKA5HqnwfQOOj3mTqxE9tZT8=
Received: from localhost.localdomain ( [1.202.39.170])
	by bizesmtp.qq.com (ESMTP) with
	id ; Wed, 10 Jun 2026 11:03:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 4178767575033228324
EX-QQ-RecipientCnt: 11
From: ZhaoJinming <zhaojinming@uniontech.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Date: Wed, 10 Jun 2026 11:03:21 +0800
Message-Id: <20260610030322.2802744-1-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260609094756.8DDFD1F00893@smtp.kernel.org>
References: <20260609094756.8DDFD1F00893@smtp.kernel.org>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MsqSUSn/kyQPQjiCyz75oXbJQh/snsUlhVklJHo5k/puxzxr+lGaXlpP
	d7wIdvzla2afja9/GAK5MOnJLSQC3GWUuV875W+WvKCuRxn/MhMhv//K6dk326kjfmmatcd
	n9EzdSSt8DaFNBzPfpKXfJJPgzhWjOerlFbvcwXKjZOUS+yV4K2bbLa06SynTDBZDMQXYjQ
	3UryfK5MdBKEoW0d9+cXYuxBBZxbWC1q6LoVq2wbUhuMdUKB4wpafcYy2dQAc34ZO/yVO3J
	zf0/tfx7oFn9mz/qIYPpoTziteZgKtwqKVs3a5BGScHZXHV9BiOQpthpfOvGEVt1LvGRnLb
	FsSgctwpgsNaEJEHKivpVtzZdCvOOvnMh5QPAiekxuZo9YmixLVJxTfJxBRpvYYMw+v377g
	Dx5++ZKyTNWhqqxvQ3ZRvBcrrV0VIsg2ftKqaMZxAFF/OSu8tY9+WuWQrbE8LXdrGDtwaF5
	oHHAiavnj7jV/niSNIA2gNMKzfnuUf6r8+7dFxINigafhBO64DKugwMFDl/4kuF73FYPAxx
	lo0Csmg+j1Ra2gy6KrBLKNIUVJAQf3KAZi9qffO+JYg6HAkISeTUGBScQetn0vsRv9UHG0s
	KPh80l6e2zKJp4HAijt63Uh3cIwVCgiRTtzbT1LLXVbPsExzqJzNSPctt6GLWUg/A54/5Px
	g6q5v1V+myd79uqhmen7HR6NMODclm1auvUuLu8S6PRJLgc/m8mP1LSnqc0GKXsTRNCxNVT
	ddETzoskDY0xXoWOrr+aH/UOcyhvxWTYoiFxbUIEUptacGR5leeNB9sfRUhpwUG0VTXH4yg
	ciCoeLK5P4wA6WUIYd19aaGyfzUCuxHU2khnILY2viSArgNVQ+HYg44wC0wisxRnwDew3cg
	mS7KRpS2qY6Td/lZbwyw+yn0zY4PwzHa4P/JeQsU4Ojui2aSK99m2UODpmUU6zK35Iyx7mC
	DlpMIFfgpMeCnh92Q5+89siCKMKkDQc/l6vBssUuGIaowWU80gIgunNNK0dY0mJ8ectemjT
	efJhH2LJ4ELNX4Th6bOTHX7ruKfaM=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-Spamd-Bar: --
X-MailFrom: zhaojinming@uniontech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: T5IIRUBBS2XLDAZXERKHUPFFLD4L3TCJ
X-Message-ID-Hash: T5IIRUBBS2XLDAZXERKHUPFFLD4L3TCJ
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:03 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ZhaoJinming <zhaojinming@uniontech.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 1/2] accel/rocket: Fix error path handling in rocket_job_run()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T5IIRUBBS2XLDAZXERKHUPFFLD4L3TCJ/>
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
X-Rspamd-Queue-Id: CF740668D2B

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
