Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHc3Lm4T4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 65977412095
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34A3C44AFF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:53 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 558BD4047C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=OqkqPx5D;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="gPZJN/MT";
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NH0ucS109958
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3cEndrH++ZoozGxCle7RcLV8UVr6wjbisoptDK/+Xp8=; b=OqkqPx5DajaGaPNQ
	9oi4JyZMGMa3uC/V148Ftz8x1qGnU5jAn3Hp0OyelszklsQjRnTYsvyORjcrM5J9
	kM2n5nqoKGR3lemZUd6RdrKRRqFvGW+Q1Ht3tEGVxFO/2U6dEhXf8cn5HZ2X3kXl
	Kkizh3UFar+DJHRqvmO0AMqAGaxwp0V1dX2VUyrwQCIw/4H0tBsl02lEtqFDdgtC
	VthsA6QRlGvoQIhZwQfqW6jdByd9tRb8EMbf3I8v1Q5yINNnEVDs5ZwLyY9LMi9G
	O4Oz+2umASGPUZxESnS87u4K/HjCdhLsQ3y9P+KMc0qpOIZj+mZGE2SJvRACwM8/
	zPRv3g==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtx08eem-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:45 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a90510a6d1so41152225ad.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873844; x=1772478644; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3cEndrH++ZoozGxCle7RcLV8UVr6wjbisoptDK/+Xp8=;
        b=gPZJN/MTu5Wa4dZ1Wt3jOtYUw5FOKXtJ+/qlofq5/fik/Fk3hhv6mmt09AS6hkmdpe
         cmOj+gCIo511H1REZgoHYA17ZpmSMsbGqr3MOJRNPFe3ehpk7lPaZSVdWE9WITftO36S
         SbYeppAFnoqX3eTEoRhCgATzHCr7WnsGLqAwp2vKyOInig1vGf7Mze9qxVVUsKxQu6BH
         99g5N1aSjDlSq0VZ00EoRzd4tcsIEae3QRjsI+cBMCYCIu/ESdLO6g2VVTJ8j5l8NBF7
         y0RyC2KvpCFuVnOdlCfaR8lfIAZ9kO9tDDmpMHjr4i2auxsUReOVutY2LANsQwmVJeOt
         j8lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873844; x=1772478644;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3cEndrH++ZoozGxCle7RcLV8UVr6wjbisoptDK/+Xp8=;
        b=GLARlsO/T6qSYgPdYijJ5CdtVHE2X7uidqHAoWSDQ03LypEnIhKspvVCdatKC01JLH
         XqXFQzcXtfZO2QtN/WFjRr2Lg/IZ8/KlLlu7m8CTv/89F6GpwwWHr1IZ7jRhXLhnZLXG
         Ui9B+Yzrlpc29Ey6G9Ie2oHMidJNWEoP4lN2OiivXw8AHq8H6XdFu+Q+BgMcXYdZeoFD
         0bTotY5+nQUDZi+BpbIhP8YWN+KUYmHVjoRBQOSK/kq+4/K4A3tDz/3I6WS0UbV1H7HD
         +WlPW9H/nNCr9sHEvJPICvptNc4gedhPg+6sYp1mSk0gTMu0PMlufWz6PNJZUuPQ13eA
         0CSw==
X-Forwarded-Encrypted: i=1; AJvYcCXCHX56BBMkug9hfIrYHbwipir8PJv+Qt6CpzFQLIN8kddRQEv4YLsh5MJWtoIzzcUZ7lIeuZ5adMv+C4F2@lists.linaro.org
X-Gm-Message-State: AOJu0YxwtSl3Lo9DJnjKP+v+P1z9lqe3h1NmhZERwF/ZBoPC7C992nZb
	UEFOo1O1/ODO/2plOi4uO/sIWezgg/2HB/HpYWuxXaVHixMdpMHrkl93+LpgULl9tuBPEqlRUDf
	wLthn17OMiJ+RqNWTMsfiyHYLbNgJJZU3Q2QtpRnLp/gwINl4kQw0kssZlgztISfE1lRKtw==
X-Gm-Gg: ATEYQzyQVOxA00OnrN5NC0I2CJflI3lgH/bm34XAmt26fHSO2cE6uGfVFg9TI1FKqeb
	nhQLb4xY+5htaFqZT+0zP9f+u9wFs9M1bfMOE8SFAcDm9nho3ftahSKmu427qYDZOADk3J4DQp/
	+ApG1MJ3IwAaMX19v4w/j8TRyCDlNp1rmEIVQZXoXV0zh8+xKfqMzNWMkMy8HdRgpe8bqQYRMBr
	HFROw/UnOqFgqVLPg/18Scgv93Q/u/EkgSrFsnyBp+8hyM5WB4ZCtDP25u6SvS4UrP5KTUhlD7v
	GgBUHp7L/xukU1FFr4K/a602pzGhIluYFP5OvX6mZ7E0zWEJCvjONGUW/K9ZEOdjf5Aq7bBF/Ks
	ZO0Bu7t95onhqQNR9/YP7R23YYja47+HsrPzXS1QAP1F6fl2X4/igqA==
X-Received: by 2002:a17:903:1107:b0:2a9:320d:285e with SMTP id d9443c01a7336-2ad5f7b8baamr123910505ad.27.1771873844284;
        Mon, 23 Feb 2026 11:10:44 -0800 (PST)
X-Received: by 2002:a17:903:1107:b0:2a9:320d:285e with SMTP id d9443c01a7336-2ad5f7b8baamr123910275ad.27.1771873843731;
        Mon, 23 Feb 2026 11:10:43 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.10.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:10:43 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:39:05 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-11-fe46a9c1a046@oss.qualcomm.com>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
In-Reply-To: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
To: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=6899;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=2RxOxXc9zqZvtJxNIuKIxSb9BnPuUuUrWmkgeMbTfW8=;
 b=OdNLCIrevKeJOr4Sn7iJQ7EA64taPtlHsqOdk0FAznWQBx7+UrSyEBkaxLabf/n4ZADVR797g
 gmHDCtzQkxDCDFwH4r3tYY2PYPpjtmNKwQNMzhCaFXo/sq/VV+FDLok
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Proofpoint-ORIG-GUID: HqZMn6j4W11WxoMfmOVo4zf6Dcdxu17A
X-Authority-Analysis: v=2.4 cv=euvSD4pX c=1 sm=1 tr=0 ts=699ca635 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=mxALtX23GHkpHf8IwecA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: HqZMn6j4W11WxoMfmOVo4zf6Dcdxu17A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX+t/Ud9Gcvkqb
 UZs3Xu0tiFLfZO3c0KhPxdiG3D3GA3Q5Rn+E2bIce4V+/LFu0CDdHzhfR+y7JPWWrCP30ENKZSo
 /epxbiS5FNOreMyf5IzcULuFjIAGWnXbtfewg9Z0ranQRaVvnK2bJBCb21S3DPQIZVgJFOCaMdd
 vm4Ok+yDcT3OSwr8gip6VbdJetJbDQCZYbHTSa5QDCUoWTJPnDt9HcS2gNuFB8EwfJMFNVANQ2a
 11XH1NQmmLanknOuwFfyKdcMl+7yIRFZGjW7zD8d+uutfBExT6XodiilNVAB24MQPSJoF1dHlZh
 GobayRzx/jdghByJ0y7V+WvQoJwHQWPg4sZsk/l520S6CQWw1yGjMkxrzDzS7oWRKZBsyskGMgQ
 2BeBH/mIOwNEatl4JQhCCAA9HZgkIoyL+rXtOJVXBjdnqeZwkRtM8r9sxCNQPEUr9c+5NcD5AN2
 k38iVKsj2Hp7YFTuQOg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 impostorscore=0 phishscore=0 clxscore=1011 suspectscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230166
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H6L4AWCJASIRHUSZZZQAHRBCEY6REAAF
X-Message-ID-Hash: H6L4AWCJASIRHUSZZZQAHRBCEY6REAAF
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:44 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 11/18] accel/qda: Add GEM_CREATE and GEM_MMAP_OFFSET IOCTLs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H6L4AWCJASIRHUSZZZQAHRBCEY6REAAF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	DATE_IN_PAST(1.00)[1245];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ekansh.gupta@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 65977412095
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add two GEM-related IOCTLs for the QDA accelerator driver and hook
them into the DRM accel driver. DRM_IOCTL_QDA_GEM_CREATE allocates
a DMA-backed GEM buffer object via qda_gem_create_object() and
returns a GEM handle to userspace, while
DRM_IOCTL_QDA_GEM_MMAP_OFFSET returns a valid mmap offset for a
given GEM handle using drm_gem_create_mmap_offset() and the
vma_node in the GEM object.

The QDA driver is updated to advertise DRIVER_GEM in its
driver_features, and the new IOCTLs are wired through the QDA
GEM and memory-manager backend. These IOCTLs allow userspace to
allocate buffers and map them into its address space as a first
step toward full compute buffer management and integration with
DSP workloads.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/accel/qda/qda_drv.c   |  5 ++++-
 drivers/accel/qda/qda_gem.h   | 30 ++++++++++++++++++++++++++++++
 drivers/accel/qda/qda_ioctl.c | 35 +++++++++++++++++++++++++++++++++++
 include/uapi/drm/qda_accel.h  | 36 ++++++++++++++++++++++++++++++++++++
 4 files changed, 105 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
index 19798359b14e..0dd0e2bb2c0f 100644
--- a/drivers/accel/qda/qda_drv.c
+++ b/drivers/accel/qda/qda_drv.c
@@ -12,6 +12,7 @@
 #include <drm/qda_accel.h>
 
 #include "qda_drv.h"
+#include "qda_gem.h"
 #include "qda_ioctl.h"
 #include "qda_rpmsg.h"
 
@@ -154,10 +155,12 @@ DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
 
 static const struct drm_ioctl_desc qda_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(QDA_QUERY, qda_ioctl_query, 0),
+	DRM_IOCTL_DEF_DRV(QDA_GEM_CREATE, qda_ioctl_gem_create, 0),
+	DRM_IOCTL_DEF_DRV(QDA_GEM_MMAP_OFFSET, qda_ioctl_gem_mmap_offset, 0),
 };
 
 static struct drm_driver qda_drm_driver = {
-	.driver_features = DRIVER_COMPUTE_ACCEL,
+	.driver_features = DRIVER_GEM | DRIVER_COMPUTE_ACCEL,
 	.fops			= &qda_accel_fops,
 	.open			= qda_open,
 	.postclose		= qda_postclose,
diff --git a/drivers/accel/qda/qda_gem.h b/drivers/accel/qda/qda_gem.h
index caae9cda5363..cbd5d0a58fa4 100644
--- a/drivers/accel/qda/qda_gem.h
+++ b/drivers/accel/qda/qda_gem.h
@@ -47,6 +47,36 @@ struct drm_gem_object *qda_gem_create_object(struct drm_device *drm_dev,
 void qda_gem_free_object(struct drm_gem_object *gem_obj);
 int qda_gem_mmap_obj(struct drm_gem_object *gem_obj, struct vm_area_struct *vma);
 
+/*
+ * GEM IOCTL handlers
+ */
+
+/**
+ * qda_ioctl_gem_create - Create a GEM buffer object
+ * @dev: DRM device structure
+ * @data: User-space data containing buffer creation parameters
+ * @file_priv: DRM file private data
+ *
+ * This IOCTL handler creates a new GEM buffer object with the specified
+ * size and returns a handle to the created buffer.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int qda_ioctl_gem_create(struct drm_device *dev, void *data, struct drm_file *file_priv);
+
+/**
+ * qda_ioctl_gem_mmap_offset - Get mmap offset for a GEM buffer object
+ * @dev: DRM device structure
+ * @data: User-space data containing buffer handle and offset result
+ * @file_priv: DRM file private data
+ *
+ * This IOCTL handler retrieves the mmap offset for a GEM buffer object,
+ * which can be used to map the buffer into user-space memory.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int qda_ioctl_gem_mmap_offset(struct drm_device *dev, void *data, struct drm_file *file_priv);
+
 /*
  * Helper functions for GEM object allocation and cleanup
  * These are used internally and by the PRIME import code
diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
index 9fa73ec2dfce..ef3c9c691cb7 100644
--- a/drivers/accel/qda/qda_ioctl.c
+++ b/drivers/accel/qda/qda_ioctl.c
@@ -43,3 +43,38 @@ int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_pr
 
 	return 0;
 }
+
+int qda_ioctl_gem_create(struct drm_device *dev, void *data, struct drm_file *file_priv)
+{
+	struct drm_qda_gem_create *args = data;
+	struct drm_gem_object *gem_obj;
+	struct qda_drm_priv *drm_priv;
+
+	drm_priv = get_drm_priv_from_device(dev);
+	if (!drm_priv || !drm_priv->iommu_mgr)
+		return -EINVAL;
+
+	gem_obj = qda_gem_create_object(dev, drm_priv->iommu_mgr, args->size, file_priv);
+	if (IS_ERR(gem_obj))
+		return PTR_ERR(gem_obj);
+
+	return qda_gem_create_handle(file_priv, gem_obj, &args->handle);
+}
+
+int qda_ioctl_gem_mmap_offset(struct drm_device *dev, void *data, struct drm_file *file_priv)
+{
+	struct drm_qda_gem_mmap_offset *args = data;
+	struct drm_gem_object *gem_obj;
+	int ret;
+
+	gem_obj = qda_gem_lookup_object(file_priv, args->handle);
+	if (IS_ERR(gem_obj))
+		return PTR_ERR(gem_obj);
+
+	ret = drm_gem_create_mmap_offset(gem_obj);
+	if (ret == 0)
+		args->offset = drm_vma_node_offset_addr(&gem_obj->vma_node);
+
+	drm_gem_object_put(gem_obj);
+	return ret;
+}
diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
index 0aad791c4832..ed24a7f5637e 100644
--- a/include/uapi/drm/qda_accel.h
+++ b/include/uapi/drm/qda_accel.h
@@ -19,6 +19,8 @@ extern "C" {
  * They are used with DRM_COMMAND_BASE to create the full IOCTL numbers.
  */
 #define DRM_QDA_QUERY	0x00
+#define DRM_QDA_GEM_CREATE		0x01
+#define DRM_QDA_GEM_MMAP_OFFSET	0x02
 /*
  * QDA IOCTL definitions
  *
@@ -27,6 +29,10 @@ extern "C" {
  * data structure and direction (read/write) for each IOCTL.
  */
 #define DRM_IOCTL_QDA_QUERY	DRM_IOR(DRM_COMMAND_BASE + DRM_QDA_QUERY, struct drm_qda_query)
+#define DRM_IOCTL_QDA_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_CREATE, \
+						 struct drm_qda_gem_create)
+#define DRM_IOCTL_QDA_GEM_MMAP_OFFSET	DRM_IOWR(DRM_COMMAND_BASE + DRM_QDA_GEM_MMAP_OFFSET, \
+						 struct drm_qda_gem_mmap_offset)
 
 /**
  * struct drm_qda_query - Device information query structure
@@ -40,6 +46,36 @@ struct drm_qda_query {
 	__u8 dsp_name[16];
 };
 
+/**
+ * struct drm_qda_gem_create - GEM buffer object creation parameters
+ * @size: Size of the GEM object to create in bytes (input)
+ * @handle: Allocated GEM handle (output)
+ *
+ * This structure is used with DRM_IOCTL_QDA_GEM_CREATE to allocate
+ * a new GEM buffer object.
+ */
+struct drm_qda_gem_create {
+	__u32 handle;
+	__u32 pad;
+	__u64 size;
+};
+
+/**
+ * struct drm_qda_gem_mmap_offset - GEM object mmap offset query
+ * @handle: GEM handle (input)
+ * @pad: Padding for 64-bit alignment
+ * @offset: mmap offset for the GEM object (output)
+ *
+ * This structure is used with DRM_IOCTL_QDA_GEM_MMAP_OFFSET to retrieve
+ * the mmap offset that can be used with mmap() to map the GEM object into
+ * user space.
+ */
+struct drm_qda_gem_mmap_offset {
+	__u32 handle;
+	__u32 pad;
+	__u64 offset;
+};
+
 #if defined(__cplusplus)
 }
 #endif

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
