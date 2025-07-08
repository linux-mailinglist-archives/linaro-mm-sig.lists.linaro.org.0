Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0FAAFCA0D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 14:04:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 111514573B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 12:04:46 +0000 (UTC)
Received: from mail.kapsi.fi (mail-auth.kapsi.fi [91.232.154.24])
	by lists.linaro.org (Postfix) with ESMTPS id C4C464159B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Jul 2025 12:04:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kapsi.fi header.s=20161220 header.b=LVVDpAkz;
	spf=pass (lists.linaro.org: domain of cyndis@kapsi.fi designates 91.232.154.24 as permitted sender) smtp.mailfrom=cyndis@kapsi.fi;
	dmarc=pass (policy=quarantine) header.from=kapsi.fi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=333UjN4eHKc0RjjTsjqzayuh98B9JZxJ0covjA32MJ4=; b=LVVDpAkz/KbiFXS6tXhta7ZwYn
	nw4od5X5ZYtmrxw/bokv4w1p11SL4+Gc7cvaHYw64PkIDSKN5N7DuOA/8GTk+UP9IhmsNdzm6Qv4X
	c4/CaHnJfN1/a6O6mRiOBi7Sb3vn7AbViN/rIB1jmks1eU4RKCsWfvFUpGPHhsyFV6Dm0YbHBT6z1
	yEqx68ZE53PsyFGFsF9mUyTL/KVKB5cOHEp4ARBD65DIjbfpJNJanWRzsDW9XYqgPBbn6pUxMOK/Z
	3hZpCaGRuPH+J46lWlOjF+QQJWZjaMYwOK01KFAHJ6hz52MnLYQUJyJmCJLRxa+E7kUZGtaqfi5JQ
	hcH0ENhA==;
Received: from [2404:7a80:b960:1a00:5eaa:b33c:a197:a90f] (helo=senjougahara.localdomain)
	by mail.kapsi.fi with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <cyndis@kapsi.fi>)
	id 1uZ73d-008RZp-33;
	Tue, 08 Jul 2025 15:04:22 +0300
From: Mikko Perttunen <cyndis@kapsi.fi>
Date: Tue, 08 Jul 2025 21:03:49 +0900
MIME-Version: 1.0
Message-Id: <20250708-syncfile-enable-signaling-v1-1-9f6e6cd9fcda@nvidia.com>
X-B4-Tracking: v=1; b=H4sIACQJbWgC/x2MSQqAMAwAvyI5W6iK61fEQ6xpDUiUBkQR/27xN
 Mxh5gGlyKQwZA9EOll5lyRFnoFbUQIZXpJDacvatrYzeovzvJEhwTlBOQhuLMFg31fovC+6xkL
 qj0ier/89Tu/7Aft3EkZrAAAA
X-Change-ID: 20250708-syncfile-enable-signaling-a993acff1860
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2404:7a80:b960:1a00:5eaa:b33c:a197:a90f
X-SA-Exim-Mail-From: cyndis@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C4C464159B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kapsi.fi,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:91.232.154.24];
	R_DKIM_ALLOW(-0.20)[kapsi.fi:s=20161220];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:57692, ipnet:91.232.154.0/24, country:FI];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[2404:7a80:b960:1a00:5eaa:b33c:a197:a90f:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kapsi.fi:+]
X-Rspamd-Action: no action
Message-ID-Hash: N4KSAKZFQP53UJAFXFPCIOV63ZZANL4A
X-Message-ID-Hash: N4KSAKZFQP53UJAFXFPCIOV63ZZANL4A
X-MailFrom: cyndis@kapsi.fi
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Mikko Perttunen <mperttunen@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma_buf/sync_file: Enable signaling for fences when querying status
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N4KSAKZFQP53UJAFXFPCIOV63ZZANL4A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Mikko Perttunen <mperttunen@nvidia.com>

dma_fence_get_status is not guaranteed to return valid information
on if the fence has been signaled or not if SW signaling has not
been enabled for the fence. To ensure valid information is reported,
enable SW signaling for fences before getting their status.

Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 drivers/dma-buf/sync_file.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index 747e377fb95417ddd506b528618a4288bea9d459..a6fd1d14dde155561b9fd2c07e6aa20dc9863a8d 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -271,6 +271,8 @@ static int sync_fill_fence_info(struct dma_fence *fence,
 	const char __rcu *timeline;
 	const char __rcu *driver;
 
+	dma_fence_enable_sw_signaling(fence);
+
 	rcu_read_lock();
 
 	driver = dma_fence_driver_name(fence);
@@ -320,6 +322,7 @@ static long sync_file_ioctl_fence_info(struct sync_file *sync_file,
 	 * info->num_fences.
 	 */
 	if (!info.num_fences) {
+		dma_fence_enable_sw_signaling(sync_file->fence);
 		info.status = dma_fence_get_status(sync_file->fence);
 		goto no_fences;
 	} else {

---
base-commit: 58ba80c4740212c29a1cf9b48f588e60a7612209
change-id: 20250708-syncfile-enable-signaling-a993acff1860

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
