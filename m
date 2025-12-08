Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OM4HEJoD4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C95FD41121D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DB6444BBE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:43:20 +0000 (UTC)
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	by lists.linaro.org (Postfix) with ESMTPS id 327663F6F2
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Dec 2025 09:12:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=imgtec.com header.s=dk201812 header.b=XkFRSWq7;
	spf=pass (lists.linaro.org: domain of Alessio.Belle@imgtec.com designates 185.132.180.163 as permitted sender) smtp.mailfrom=Alessio.Belle@imgtec.com;
	dmarc=pass (policy=none) header.from=imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B850Tbn2975655;
	Mon, 8 Dec 2025 09:11:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=dk201812; bh=wpFVK3UISYSElB0YPQplDND
	D+w2ntkyKIuex+dcdKdk=; b=XkFRSWq7ISEdT0owV3iIcVh6O6idCG0kQqYoCLZ
	Bk+orgp2cHOIXsks5NUoWIs7vHovml0mapWnx9+/3rdqd7ZM2ehfAUkzdQtUwF1F
	TrfwLMs6BzgCMK8iJAvDHXj4wmdipRGRDmwXwhiHZxMORQABz9jdGE7nDF/1r24P
	Cb282+JfoVUSoXfUlUNqlQ45dFImpb2c5q0GHm9V5/tgo+Utz0sXX9kG6Q730VHM
	7Zj5lAcVTkuWX0mZBwdUXHnuQm+5j5OT5e9C3FJYZHsiXXe2xVCf0xlzUwuVW8Z9
	zKuUZj4fMGRSorEznYuGFx5/6aO2wGyXamz3CEJVb2E4a4Q==
Received: from hhmail01.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 4avdeuh9j6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Dec 2025 09:11:35 +0000 (GMT)
Received: from NP-A-BELLE.kl.imgtec.org (172.25.10.180) by
 HHMAIL01.hh.imgtec.org (10.100.10.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 09:11:33 +0000
From: Alessio Belle <alessio.belle@imgtec.com>
Date: Mon, 8 Dec 2025 09:11:00 +0000
MIME-Version: 1.0
Message-ID: <20251208-no-export-pm-fw-obj-v1-1-83ab12c61693@imgtec.com>
X-B4-Tracking: v=1; b=H4sIACOWNmkC/x3MTQqAIBBA4avErBtI+yG6SrSwHGuCVDQqkO6et
 PwW7yWIFJgiDEWCQBdHdjZDlAUsm7IrIetskJVshZA9Wof0eBdO9AeaG928o6JFdXWjta4U5NI
 HMvz813F63w/am9gnZQAAAA==
X-Change-ID: 20251128-no-export-pm-fw-obj-aeca634ddd0a
To: Frank Binns <frank.binns@imgtec.com>,
        Matt Coster
	<matt.coster@imgtec.com>,
        Alexandru Dadu <alexandru.dadu@imgtec.com>,
        "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal
	<sumit.semwal@linaro.org>,
        =?utf-8?q?Christian_K=C3=B6nig?=
	<christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765185093; l=1842;
 i=alessio.belle@imgtec.com; s=20251208; h=from:subject:message-id;
 bh=pRDHXPgpdsEZVoNu6zceAf+FuiNHKGRgZl9xJRBdWfw=;
 b=YOnbre475voi9oiZiHLXTC1zdIE6xMbV5ZTNMNa5tOZBHV9madHV4FSZgssiHVP+q59YkS713
 YNjLi3LFs5nA5w2mhKYV3HV1bfWX/UiaFwozmBnSARJ7/ybVo+uyh2n
X-Developer-Key: i=alessio.belle@imgtec.com; a=ed25519;
 pk=2Vtuk+GKBRjwMqIHpKk+Gx6zl7cgtq0joszcOc0zF4g=
X-Originating-IP: [172.25.10.180]
X-Authority-Analysis: v=2.4 cv=UvZu9uwB c=1 sm=1 tr=0 ts=69369647 cx=c_pps
 a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17
 a=D1vns6AIKIwA:10 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=VkNPw1HP01LnGYTKEx00:22 a=r_1tXGB3AAAA:8 a=dJ_P6b1NyDTtC6ShgzQA:9
 a=QEXdDO2ut3YA:10 a=t8nPyN_e6usw4ciXM-Pk:22
X-Proofpoint-ORIG-GUID: ixADbrjbHhqrhQ9-1lh3lOEklf8Yl6aL
X-Proofpoint-GUID: ixADbrjbHhqrhQ9-1lh3lOEklf8Yl6aL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDA3NiBTYWx0ZWRfXxESxm0h3BKcT
 VTocXGUnolFXKF/sdGBqrDGOoU++hzl6lEpv8Y8qKBulmYAwJVPkOIFVXiu+pRfKrLpZL6avkXC
 r0mWnpxTjI9LJU41AlLudbYO3GnglwApeb/IYl8xM+3WvWj0J31m/FifaK0wRPQ8wy0Uf5i99Px
 bBShfC+leTIHacR4gMBvy0uHcLwKavCWoSjx7dOlkqp5wKOJpd28NQNTPxplmTmceCcK4p1VKyX
 2hQvS2dvVVdYwi10ZOf0ACYfqpXyIPWFIxnFDQo82oAAXbOIaFAvDlzQQU4ODghOy3M8Q0gkBW8
 EQ+svuoqJc0RWQWAe3twgioTdClgo5vvDInpIl5SfxanZhV/ir+fQmvpmytv8eeT2xmB1zud6YR
 c5BtLFXGcDEG1iIrwfWlfoFJ2HddTg==
X-Spamd-Bar: ---
X-MailFrom: Alessio.Belle@imgtec.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HDODZOFH6ZPNXWQGAI7YKWQBB5YV3TNL
X-Message-ID-Hash: HDODZOFH6ZPNXWQGAI7YKWQBB5YV3TNL
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:38 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Alessio Belle <alessio.belle@imgtec.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/imagination: Disallow exporting of PM/FW protected objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HDODZOFH6ZPNXWQGAI7YKWQBB5YV3TNL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[3102];
	R_DKIM_REJECT(1.00)[imgtec.com:s=dk201812];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[imgtec.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[imgtec.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alessio.belle@imgtec.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[imgtec.com:-];
	HAS_XOIP(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.859];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,imgtec.com:mid,imgtec.com:email]
X-Rspamd-Queue-Id: C95FD41121D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

These objects are meant to be used by the GPU firmware or by the PM unit
within the GPU, in which case they may contain physical addresses.

This adds a layer of protection against exposing potentially exploitable
information outside of the driver.

Fixes: ff5f643de0bf ("drm/imagination: Add GEM and VM related code")
Signed-off-by: Alessio Belle <alessio.belle@imgtec.com>
---
 drivers/gpu/drm/imagination/pvr_gem.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/imagination/pvr_gem.c b/drivers/gpu/drm/imagination/pvr_gem.c
index a66cf082af24..c07c9a915190 100644
--- a/drivers/gpu/drm/imagination/pvr_gem.c
+++ b/drivers/gpu/drm/imagination/pvr_gem.c
@@ -28,6 +28,16 @@ static void pvr_gem_object_free(struct drm_gem_object *obj)
 	drm_gem_shmem_object_free(obj);
 }
 
+static struct dma_buf *pvr_gem_export(struct drm_gem_object *obj, int flags)
+{
+	struct pvr_gem_object *pvr_obj = gem_to_pvr_gem(obj);
+
+	if (pvr_obj->flags & DRM_PVR_BO_PM_FW_PROTECT)
+		return ERR_PTR(-EPERM);
+
+	return drm_gem_prime_export(obj, flags);
+}
+
 static int pvr_gem_mmap(struct drm_gem_object *gem_obj, struct vm_area_struct *vma)
 {
 	struct pvr_gem_object *pvr_obj = gem_to_pvr_gem(gem_obj);
@@ -42,6 +52,7 @@ static int pvr_gem_mmap(struct drm_gem_object *gem_obj, struct vm_area_struct *v
 static const struct drm_gem_object_funcs pvr_gem_object_funcs = {
 	.free = pvr_gem_object_free,
 	.print_info = drm_gem_shmem_object_print_info,
+	.export = pvr_gem_export,
 	.pin = drm_gem_shmem_object_pin,
 	.unpin = drm_gem_shmem_object_unpin,
 	.get_sg_table = drm_gem_shmem_object_get_sg_table,

---
base-commit: ca2583412306ceda9304a7c4302fd9efbf43e963
change-id: 20251128-no-export-pm-fw-obj-aeca634ddd0a

Best regards,
-- 
Alessio Belle <alessio.belle@imgtec.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
