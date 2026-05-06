Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id LSwuDTtgBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:27:55 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1775323CD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:27:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E28443F829
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:27:53 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 5FC953F75F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 May 2026 10:46:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=QhqfmTaP;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of nicolas.frattaroli@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=nicolas.frattaroli@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1778064389; cv=none;
	d=zohomail.com; s=zohoarc;
	b=D6FvrL7zivCavhxW8V2B+snCL/+ZyPrMVjOuZTJ5+vuT5yLGKlMTwva55lG5KxCbQQq9glD0auJwFpSMsMrQx3HwOa57ksvTBCR80HT5APctDxjLB6BUGyEo5KKMs1JwxvCoDXHGbMlzdc9XUX+1F2DugRUQDIGokBr8GbDx73A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1778064389; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=vwfdhxDnYiWIt6VTFU0ct626I1R9RrLO+rBMwge8DiU=;
	b=hfCoArjp6Ukm2x/5P78YSbMfuiGxPt4M60o2+Ta9bEvu3gr+pxbH7hdj+VQDzevvf7ONGijqZl3kGRiXFUYTI9+uQPrw5Lg1O5JBT1YjnYeCeJMOrDcxI1dCpHK5wzRNq5Dz50uTw4FgkBmk3RQBhW+BjWdNhuGVG7r2O7CqH6E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778064389;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=vwfdhxDnYiWIt6VTFU0ct626I1R9RrLO+rBMwge8DiU=;
	b=QhqfmTaPibZSRPSq2JTdt8BPbfh2ZtO9l0qmBkLgG7wLpO8pELsGDi8q86/rNFWM
	IpcmWF7QuenR0odLEn/EA+Fw6M6l3QhaJGh8ev0yL16rPY++8RpOCv5IaMnIiIqYdey
	LiVbvgBRYhn9RUi1xiEx81f6I0Xf6I5sRocHgkI4=
Received: by mx.zohomail.com with SMTPS id 177806438704319.20442345053607;
	Wed, 6 May 2026 03:46:27 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 06 May 2026 12:45:59 +0200
MIME-Version: 1.0
Message-Id: <20260506-panthor-explicit-reclaim-v1-4-44f82ac147ce@collabora.com>
References: <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
In-Reply-To: <20260506-panthor-explicit-reclaim-v1-0-44f82ac147ce@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.15.2
X-Spamd-Bar: -----
X-MailFrom: nicolas.frattaroli@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WTOFFFHPTBXZZZPJOFEFIG5QZSYYYO7I
X-Message-ID-Hash: WTOFFFHPTBXZZZPJOFEFIG5QZSYYYO7I
X-Mailman-Approved-At: Wed, 13 May 2026 11:23:45 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/4] drm/panthor: Add explicit memory claim sysfs knob
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WTOFFFHPTBXZZZPJOFEFIG5QZSYYYO7I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: DD1775323CD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[168];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.836];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

For deployments of systems with very tight memory and a system resource
manager process that can make well-founded decisions on trade-offs, a
way to tell panthor that all of a process' swapped-out GPU memory should
be swapped back in without touching every page manually is of interest.

Make it possible to do this by adding a new sysfs file, called
"mem_claim". Writing a TGID to it will cause panthor to search through
all panthor_files associated with that process, and bring all its
buffers back from swap.

Doing this requires the writer to have the CAP_SYS_RESOURCE capability,
even when operating on themselves.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 Documentation/ABI/testing/sysfs-driver-panthor-mem | 17 ++++++++++++++
 drivers/gpu/drm/panthor/panthor_drv.c              | 26 ++++++++++++++++++++++
 drivers/gpu/drm/panthor/panthor_mmu.c              | 25 +++++++++++++++++++++
 drivers/gpu/drm/panthor/panthor_mmu.h              |  1 +
 4 files changed, 69 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-driver-panthor-mem b/Documentation/ABI/testing/sysfs-driver-panthor-mem
index 6639394abed2..41e2c18f641d 100644
--- a/Documentation/ABI/testing/sysfs-driver-panthor-mem
+++ b/Documentation/ABI/testing/sysfs-driver-panthor-mem
@@ -15,3 +15,20 @@ Description:
 		* -EPERM: insufficient permissions to run a reclaim on given TGID
 		* -EINTR: interrupted by signal
 		* -ESRCH: given TGID is not using panthor, and might not exist at all
+
+What:		/sys/bus/platform/drivers/panthor/.../mem_claim
+Date:		May 2026
+Contact:	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
+Description:
+		(WO) Writing to this file will cause GPU memory for all panthor GPU
+		contexts associated with the TGID that's written to it to be brought
+		back from swap. The write completes when the operation has finished.
+
+		The writing process requires the CAP_SYS_RESOURCE capability.
+
+		Possible error codes:
+		* -ERANGE: given TGID is too large/small for the TGID type.
+		* -EINVAL: given TGID could not be parsed.
+		* -EPERM: insufficient permissions
+		* -EINTR: interrupted by signal
+		* -ESRCH: given TGID is not using panthor, and might not exist at all
diff --git a/drivers/gpu/drm/panthor/panthor_drv.c b/drivers/gpu/drm/panthor/panthor_drv.c
index 7d19b8785ea3..fb2172b0439c 100644
--- a/drivers/gpu/drm/panthor/panthor_drv.c
+++ b/drivers/gpu/drm/panthor/panthor_drv.c
@@ -1924,9 +1924,35 @@ static ssize_t mem_reclaim_store(struct device *dev,
 
 static DEVICE_ATTR_WO(mem_reclaim);
 
+static ssize_t mem_claim_store(struct device *dev, struct device_attribute *attr,
+			       const char *buf, size_t len)
+{
+	struct panthor_device *ptdev = dev_get_drvdata(dev);
+	pid_t tgid;
+	int ret;
+
+	ret = kstrtoint(buf, 0, &tgid);
+	if (ret)
+		return ret;
+
+	if (!capable(CAP_SYS_RESOURCE))
+		return -EPERM;
+
+	ret = panthor_run_on_pfiles_of_tgid(ptdev, tgid, panthor_mmu_force_claim);
+	if (ret < 0)
+		return ret;
+	else if (!ret)
+		return -ESRCH;
+
+	return len;
+}
+
+static DEVICE_ATTR_WO(mem_claim);
+
 static struct attribute *panthor_attrs[] = {
 	&dev_attr_profiling.attr,
 	&dev_attr_mem_reclaim.attr,
+	&dev_attr_mem_claim.attr,
 	NULL,
 };
 
diff --git a/drivers/gpu/drm/panthor/panthor_mmu.c b/drivers/gpu/drm/panthor/panthor_mmu.c
index e185787f5657..7130ba4a24da 100644
--- a/drivers/gpu/drm/panthor/panthor_mmu.c
+++ b/drivers/gpu/drm/panthor/panthor_mmu.c
@@ -3232,6 +3232,31 @@ void panthor_mmu_force_reclaim(struct panthor_file *pfile)
 		freed, freed_sz, nr_to_scan, remaining);
 }
 
+/**
+ * panthor_mmu_force_claim - Swap in all VMs associated with a file
+ * @pfile: pointer to the &struct panthor_file whose memory to swap in
+ *
+ * Attempt to get all GPU memory of @pfile swapped back in.
+ */
+void panthor_mmu_force_claim(struct panthor_file *pfile)
+{
+	struct panthor_vm *vm;
+	unsigned long i;
+	int ret;
+
+	xa_for_each(&pfile->vms->xa, i, vm) {
+		struct dma_resv *resv = drm_gpuvm_resv(&vm->base);
+
+		dma_resv_lock(resv, NULL);
+		ret = drm_gpuvm_validate(&vm->base, NULL);
+		if (ret)
+			drm_dbg(&vm->ptdev->base, "drm_gpuvm_validate failed: %pe\n",
+				ERR_PTR(ret));
+
+		dma_resv_unlock(resv);
+	}
+}
+
 /**
  * panthor_mmu_unplug() - Unplug the MMU logic
  * @ptdev: Device.
diff --git a/drivers/gpu/drm/panthor/panthor_mmu.h b/drivers/gpu/drm/panthor/panthor_mmu.h
index 34adca4b4e95..460f83eb22a9 100644
--- a/drivers/gpu/drm/panthor/panthor_mmu.h
+++ b/drivers/gpu/drm/panthor/panthor_mmu.h
@@ -25,6 +25,7 @@ void panthor_mmu_post_reset(struct panthor_device *ptdev);
 void panthor_mmu_suspend(struct panthor_device *ptdev);
 void panthor_mmu_resume(struct panthor_device *ptdev);
 void panthor_mmu_force_reclaim(struct panthor_file *pfile);
+void panthor_mmu_force_claim(struct panthor_file *pfile);
 
 int panthor_vm_map_bo_range(struct panthor_vm *vm, struct panthor_gem_object *bo,
 			    u64 offset, u64 size, u64 va, u32 flags);

-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
