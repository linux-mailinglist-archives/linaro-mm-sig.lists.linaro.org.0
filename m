Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UkE8CNFKKWrQTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:30:25 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A6147668CFE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:30:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=uniontech.com header.s=onoh2408 header.b=jcwUw8hE;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=uniontech.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C56D640A51
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:30:23 +0000 (UTC)
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	by lists.linaro.org (Postfix) with ESMTPS id 04F123F74C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Jun 2026 09:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1780997688;
	bh=FjDzXjUTCA7PwSwSBXMojIa1RoXXpb1tpWd5EIt2Ab4=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=jcwUw8hEitQ+FishR+C+7uZGrcGsiqJjj8Rl86HK9RwRfTT1zcCNe9MABWF/gr04I
	 dDnQ5TLePayFMb9Afv8jIMgyCDa2UkaL8SRT5FKxn5L2hFVN4C0p8xTJNHGRSIvHda
	 ffPxjDfRskRXS2nnseDIHl3HrGaaa8AP5Sgussr4=
X-QQ-mid: esmtpsz17t1780997669tdd1d19f3
X-QQ-Originating-IP: C6dundOe4PtpDR286kbXAMfUPpshvmFDRxoPxnzgjVo=
Received: from localhost.localdomain ( [124.126.19.250])
	by bizesmtp.qq.com (ESMTP) with
	id ; Tue, 09 Jun 2026 17:34:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 13231379526503889838
EX-QQ-RecipientCnt: 11
From: ZhaoJinming <zhaojinming@uniontech.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Date: Tue,  9 Jun 2026 17:33:45 +0800
Message-Id: <20260609093346.380396-1-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260608103845.6F4AB1F00893@smtp.kernel.org>
References: <20260608103845.6F4AB1F00893@smtp.kernel.org>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MZ9X7MyfBLbly0P1lyM1Fzp8f5GsQImat8BBywc8CBR7YgJW0mZoiOtD
	NlcWKK6CbM+XJ+3fGmoQQRlSY3Ou1SmcP4eA+E74PbJippCNb1N+JEyY5IcDm/pHbW9EOBi
	3T+sjPwN0CRbAbtmMvU0LN2kUEx0rSEWlNfjK7wOkKvcbkc/VY2m75+hM23H9WoHzCW4Tfd
	/++LvIESssrskD0JxgLL+SOuiq6sifTScQsHHv10wnsBD0mABAHrI3TtsxOn0ZPFy8vekdq
	Bjh9FPhooFcQhG9/7Ltn8lLfB3vygXiDO6x4NjijO19LL49GRK37XM5DH6aHUN08bSfiXqy
	JSz3sBTswgG3vz0F7XT40xQZ+KCBlqrJZitstaVuzxQac/xnUnobVcuMItoiKyUKln535lH
	WmGoNKFuVaeBBQ/RchCvhTTG4lyZgXLA1lmrfDUniZf/7uIbQ0ZGIOJ85IiQ0OMttvASl6K
	EO6hFzMK+zh/hq8rIvCaam9jPQR7sDoUmOAa2+76iYYCTXgJ83IWPY62VDGA1W2B9xyhb5B
	boYMuIX6dqt6nCsHRdfXHeCU+7MX8yMMkfMLuKeRLdxbAZSkB5L3tvRRs7tCDLa8XLqI+Tb
	vvwczA3SDW4bCVx7XnhwkmRyLr4eKquu8q0bbJdrwn4DAyO0TOVs181DDOyDKJPSesY3Qvp
	4iy+axEWmIwNphQcYtqQRH99h5o9etJ0C7sVDfo1eMsFuQzLj42+Bt02tk9FOPDgYV3qJSW
	GoFYwwF4XUgkw7Q3YENrPwXZrf/dgWO/hqHdELtlBdcH3fs/0R58bsT2aZVAeNg3E9ArtPN
	o508ayNnnKKRIoOI/C5ZPwUHa3+kfVCKFKz+77ajnT4uq8mSgitQEfGQ0H+vHMYZetsa+U0
	aRf1u8zB/wZX3fFMuQww1YF/TpqnVa2pkVjximjgdahe5/Io5DtGXtUEzHGd5AGg70zZFbP
	xhIu+GhESTSNW3YeTFSmZLPQHfzsp3iFWVBj3ZDl3FYhlfxNhhwBhZGwJsKDyc4i/G3mjjN
	q28qBmnp2v9fMAkfol8fBez9OpZrr1gkt4XYO2cQ==
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-RECHKSPAM: 0
X-Spamd-Bar: --
X-MailFrom: zhaojinming@uniontech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YLH5M7CI7QX2TYNB474JUXQY4UPYYMHJ
X-Message-ID-Hash: YLH5M7CI7QX2TYNB474JUXQY4UPYYMHJ
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:29:02 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, ZhaoJinming <zhaojinming@uniontech.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 1/2] accel/rocket: Fix error path handling in rocket_job_run()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YLH5M7CI7QX2TYNB474JUXQY4UPYYMHJ/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[uniontech.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jeff.hugo@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:zhaojinming@uniontech.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: A6147668CFE

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
