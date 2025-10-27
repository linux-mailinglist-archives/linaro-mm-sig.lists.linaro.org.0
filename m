Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKXOHU334GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B80C40FD26
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9100404EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:50:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	by lists.linaro.org (Postfix) with ESMTPS id 84BDA3F7F2
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Oct 2025 04:48:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=cDMaOJAc;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 198.175.65.12 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761540520; x=1793076520;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MY2fLmxjj0+IXtVwTx8EQEka44NV8taZsq9/RrkuNEQ=;
  b=cDMaOJAc3yN6dlpxoyC7Lc/b7Nw8P+dcVL0omiqxNLYwwDwSV3/b/OQJ
   AJiDUCS1f7z6HUV16cERx/rrr2GHIefBlq4b6FbisOhODl1iL0gR5hKNW
   Zmp+tLtDzp2jMWN9xz7uc4hDkoLC/ixigxZ8ctpyHDNpe7mMjJBf6RSAC
   O07JNQ5nC1+PTxtwabjXCCoKaD1DjYJblusKYnok/T3cSdeHD5aHnS1RI
   4nVRaKNS7uUSZlAIjQqis88nUOBm+d3InaFEeq4KZn9DGTGky17j3MHmd
   5UDHGGIB70H34yxpAue1X9gGI2Cdef5wLM42ut5gInU/0Ko9sD3nDlFgj
   g==;
X-CSE-ConnectionGUID: EKyhGGAmTy+rg+FH20v9BQ==
X-CSE-MsgGUID: EI5IaEWjQISoGQobnP5lBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75058940"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000";
   d="scan'208";a="75058940"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2025 21:48:37 -0700
X-CSE-ConnectionGUID: RLdqt1RDQS69UsDQU8chBg==
X-CSE-MsgGUID: 8o8rQyF1QmS1jRYIxKdJSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000";
   d="scan'208";a="188992992"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2025 21:48:38 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org
Date: Sun, 26 Oct 2025 21:44:18 -0700
Message-ID: <20251027044712.1676175-7-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
References: <20251027044712.1676175-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
X-Spamd-Bar: -----
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QPTDHNHMRVBSKW37INFE6CXNC6VUMZD5
X-Message-ID-Hash: QPTDHNHMRVBSKW37INFE6CXNC6VUMZD5
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:25 +0000
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v2 6/8] drm/xe/pf: Add a helper function to get a VF's backing object in LMEM
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QPTDHNHMRVBSKW37INFE6CXNC6VUMZD5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[4114];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.640];
	FROM_NEQ_ENVFROM(0.00)[vivek.kasireddy@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 1B80C40FD26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

To properly import a dmabuf that is associated with a VF (or that
originates in a Guest VM that includes a VF), we need to know where
in LMEM the VF's allocated regions exist. Therefore, introduce a
new helper to return the object that backs the VF's regions in LMEM.

v2:
- Make the helper return the LMEM object instead of the start address

v3:
- Move the declaration of the helper under other lmem helpers (Michal)

v4:
- Take a ref on the LMEM obj while holding the PF master mutex (Matt)

Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c | 24 ++++++++++++++++++++++
 drivers/gpu/drm/xe/xe_gt_sriov_pf_config.h |  1 +
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c b/drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c
index 6344b5205c08..2f09b67438fc 100644
--- a/drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c
+++ b/drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c
@@ -1535,6 +1535,30 @@ u64 xe_gt_sriov_pf_config_get_lmem(struct xe_gt *gt, unsigned int vfid)
 	return size;
 }
 
+/**
+ * xe_gt_sriov_pf_config_get_lmem_obj - Get VF's LMEM BO.
+ * @gt: the &xe_gt
+ * @vfid: the VF identifier
+ *
+ * This function can only be called on PF.
+ *
+ * Return: BO that is backing VF's quota in LMEM.
+ */
+struct xe_bo *xe_gt_sriov_pf_config_get_lmem_obj(struct xe_gt *gt,
+						 unsigned int vfid)
+{
+	struct xe_gt_sriov_config *config;
+	struct xe_bo *lmem_obj;
+
+	mutex_lock(xe_gt_sriov_pf_master_mutex(gt));
+	config = pf_pick_vf_config(gt, vfid);
+	lmem_obj = config->lmem_obj;
+	xe_bo_get(lmem_obj);
+	mutex_unlock(xe_gt_sriov_pf_master_mutex(gt));
+
+	return lmem_obj;
+}
+
 /**
  * xe_gt_sriov_pf_config_set_lmem - Provision VF with LMEM.
  * @gt: the &xe_gt (can't be media)
diff --git a/drivers/gpu/drm/xe/xe_gt_sriov_pf_config.h b/drivers/gpu/drm/xe/xe_gt_sriov_pf_config.h
index 513e6512a575..bbc5c238cbf6 100644
--- a/drivers/gpu/drm/xe/xe_gt_sriov_pf_config.h
+++ b/drivers/gpu/drm/xe/xe_gt_sriov_pf_config.h
@@ -36,6 +36,7 @@ int xe_gt_sriov_pf_config_set_lmem(struct xe_gt *gt, unsigned int vfid, u64 size
 int xe_gt_sriov_pf_config_set_fair_lmem(struct xe_gt *gt, unsigned int vfid, unsigned int num_vfs);
 int xe_gt_sriov_pf_config_bulk_set_lmem(struct xe_gt *gt, unsigned int vfid, unsigned int num_vfs,
 					u64 size);
+struct xe_bo *xe_gt_sriov_pf_config_get_lmem_obj(struct xe_gt *gt, unsigned int vfid);
 
 u32 xe_gt_sriov_pf_config_get_exec_quantum(struct xe_gt *gt, unsigned int vfid);
 int xe_gt_sriov_pf_config_set_exec_quantum(struct xe_gt *gt, unsigned int vfid, u32 exec_quantum);
-- 
2.50.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
