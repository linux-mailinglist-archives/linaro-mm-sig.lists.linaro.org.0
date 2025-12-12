Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNgQACIE4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3F4411313
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:45:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F12E40F97
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:45:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	by lists.linaro.org (Postfix) with ESMTPS id 81D963F900
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 13:21:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="CzZ/bptu";
	spf=pass (lists.linaro.org: domain of karol.wachowski@linux.intel.com designates 192.198.163.17 as permitted sender) smtp.mailfrom=karol.wachowski@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1765545671; x=1797081671;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Xw4J35AXVe0tIkMKb4FDDQucWVWj6fFu2dpxmn3jH6M=;
  b=CzZ/bptuN+7S87rdQp2KHHPmCch8RfGdCWoF1xro4hm4HqykzhRn1V4y
   a+ptKR/gdvYqtv0wXHtbbVCI5PLdzcGu36kvHEkJV+miZSRmgPZ5XQW5m
   1tq7qP8p12OzY0kvYrDvUs8LVbAoz5TCjDpczHfWhjuYTlglFAbeMj0eE
   uNGmG2NbnRfgXJdr0xRDhprXuT2ue1OyFE3vz5JP+miG2hBBvUlhNGwyj
   OkgWduL4qLmPrcWxQmqHrFri20o7Np56runzxsAMFO2Fn62gjlQVZb294
   8XiRAic1u7iAPOUBgpeubx6wpwezlu35kqTnlYvLNEF2uXdmNGzD8QyYT
   Q==;
X-CSE-ConnectionGUID: 6K6ONBnKThOc0JgsPKOGWA==
X-CSE-MsgGUID: KtbWHqH3Rga3tLTUeIy3Bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67431205"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800";
   d="scan'208";a="67431205"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2025 05:21:10 -0800
X-CSE-ConnectionGUID: 1HmC4w25RVOQZLSEfMTe6A==
X-CSE-MsgGUID: gWX8bhMzTvedXw/eKlj1pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800";
   d="scan'208";a="196695487"
Received: from pl-npu-pc-kwachow.igk.intel.com ([10.91.220.239])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2025 05:21:06 -0800
From: Karol Wachowski <karol.wachowski@linux.intel.com>
To: David.Francis@amd.com
Date: Fri, 12 Dec 2025 14:20:52 +0100
Message-ID: <20251212132052.474096-1-karol.wachowski@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: -----
X-MailFrom: karol.wachowski@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HYDTEFQ5F5QJIYIFV732Y2TMZS44MTWB
X-Message-ID-Hash: HYDTEFQ5F5QJIYIFV732Y2TMZS44MTWB
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:49 +0000
CC: felix.kuehling@amd.com, christian.koenig@amd.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, andrzej.kacprowski@linux.intel.com, maciej.falkowski@linux.intel.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org, Karol Wachowski <karol.wachowski@linux.intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] drm: Fix object leak in DRM_IOCTL_GEM_CHANGE_HANDLE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HYDTEFQ5F5QJIYIFV732Y2TMZS44MTWB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[3002];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FROM_NEQ_ENVFROM(0.00)[karol.wachowski@linux.intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.143];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 8B3F4411313
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add missing drm_gem_object_put() call when drm_gem_object_lookup()
successfully returns an object. This fixes a GEM object reference
leak that can prevent driver modules from unloading when using
prime buffers.

Fixes: 53096728b891 ("drm: Add DRM prime interface to reassign GEM handle")
Signed-off-by: Karol Wachowski <karol.wachowski@linux.intel.com>
---
Changes between v1 and v2:
 - move setting ret value under if branch as suggested in review
 - add Cc: stable 6.18+
---
 drivers/gpu/drm/drm_gem.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index ca1956608261..bcc08a6aebf8 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -1010,8 +1010,10 @@ int drm_gem_change_handle_ioctl(struct drm_device *dev, void *data,
 	if (!obj)
 		return -ENOENT;
 
-	if (args->handle == args->new_handle)
-		return 0;
+	if (args->handle == args->new_handle) {
+		ret = 0;
+		goto out;
+	}
 
 	mutex_lock(&file_priv->prime.lock);
 
@@ -1043,6 +1045,8 @@ int drm_gem_change_handle_ioctl(struct drm_device *dev, void *data,
 
 out_unlock:
 	mutex_unlock(&file_priv->prime.lock);
+out:
+	drm_gem_object_put(obj);
 
 	return ret;
 }
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
