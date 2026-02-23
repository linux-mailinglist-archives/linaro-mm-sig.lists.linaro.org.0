Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCQ0FlYT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E3611412060
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 054AB44A21
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:29 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 3E64F4047C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=neotoJCg;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=WI++9CKf;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NILhrR3698120
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fD0JqupCszokMNr/tteqmbM/hp6vcwvxufewpyUQwKQ=; b=neotoJCgxz1Qc9dM
	Q45RYB0v+pAkJHn//z12naDQwQxnAf7z/aAe939zG5kG6aS1WnjGZopw5NFerlSk
	/rk5qCjcb4dJ9at47aMuc6wekdDCU1fvrKCGfSUrgL8xcdmuVRxZMb6hrWj2cjj2
	jJSI+At3e/oLYB1t0NiL8Bf5G1w5iPZFFJVUoEhKkjdJK9hzewrarM9yZc9niNNj
	y/8N5Zk/eXYlKlVaetNbLoM50ena0zUyON+6R4qdwwhmytvjJ+JoTgZUiuKtMIkP
	0CapXAOBT9pS57mUWZAQxk1OrXGyZIJONvWlBxcol1kyyHubox+bmooXsRZFnaJK
	n8A1uQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn819mgb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aad5fc5b2fso39180445ad.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873815; x=1772478615; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fD0JqupCszokMNr/tteqmbM/hp6vcwvxufewpyUQwKQ=;
        b=WI++9CKfS9KFuA2s6lJidOoE3846P7T1O5wn/kwq+NV8mKVI+TN8ylNC5Has2RNfFN
         LvWPnHsb70k/wK0xTAhV0ww5aeE0RtxFwYby5f6ccLEsNdIXy4fZVkIV5K6sPK941Cdj
         YsExdLthdA2ofR/lWFUfcYoqtGEC44EjyWKPZtReUvCLfGrjCWwJv0VoD58vRLQzGY1g
         Vv5B9ZsTYMilZM2uOeNyLg2BCOArB0hPwkJNYJ2auxwuKpW4LCauk1GFsl9FUACvebeq
         07AY03BkFLykotHwhNgWioG51w8maIVX5Rfs+tdUQqoxZswLsQAV4E1b9/6zvtr8vny5
         DdnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873815; x=1772478615;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fD0JqupCszokMNr/tteqmbM/hp6vcwvxufewpyUQwKQ=;
        b=FZsOrRp6Fr1pTeqaeSqMF5CHCGaUjiTE80TJWCzE1DXN9Bn2kAkstlncjJf463X6Ff
         15KqG71iUURAXTZcpYKXETr5xSFnPS7nmjRO85IkWoliiIGrlvS71zBV3Acp1l9c9LD0
         u91zxy0WBpWDSH4qTm1OIXBowV61QqHUOBH4FvuSNjF4j1fkxB2b4gXLkWOh0/4P/719
         UjQI0umYlyqBIMceAnqBd8TNw2rAAZZRtpteSKFak8BAQkh1Ur4zpCLRHeXUnqtB//kE
         +UmE3W5IWPZG+KQflY6S2DhspDwZz0w9Zx+ptMMdmVW94E9kIL4OBLX5yZtJ8bogmfcf
         lJGg==
X-Forwarded-Encrypted: i=1; AJvYcCWMOAVjvJ28s4YdNk6c0Z6boJSmnNG5vbhAxdnYDqLkvDv+Ru3XfK4Ui943v1vA3wKmwiBrvwYRdDzFIwGj@lists.linaro.org
X-Gm-Message-State: AOJu0Yw4KoQEcXD04+JgMtKY7jcDQkVFZxV7eA13awsevOfiupMC4HNS
	Qme+awcv1stOgH3ieGAGQQO79wrfyrP2sny4bLKO4C9/XeygZDanbXz5a4jX+oGCR1PNBzL2eYm
	P0Dl1m/4KxDOLboJA8f3J7y0wYW68QW7tu+5LEubxBX04AnZROvjjNIr/5G6+IRQRfKVwKQ==
X-Gm-Gg: ATEYQzzBHhe13e6aQBECKSbNnuabvcHKJLH+yNt5vJSeqWkC3oyf658oxj+q7oZ1C/k
	zFum9ga7/SYRe0ntrVsET8byS9mlpiAJ86MqFe2q9L2rVgYdJLF34SPer9gjurRLGF2UzX/9abe
	y4c4aRNkSmjkRmXN2l6dAfP5taLkyrkmjBi3dQSbwqSd+Mk/xQhB7m4dBq5x6l50D11MW5hB677
	1foj01pksgcQcOTjT8T3dOuSirMHfGid2Ru+dRFcnDnJhpYZvBoxFPQIMwqwX02TwGt/QSD7ueW
	g3RtmqrgBFIZrJZytKVBR23W/hBaO6r2/NmyVE91xN9I7DCd/k5+nUw/9g6oO3ScVCk7/MTc56C
	cFr5SqAjSGwT1DOEMiOLWVmZuMNPvOCG2dGmOieYtZQD2E2QVwLKjtg==
X-Received: by 2002:a17:902:ce0e:b0:299:e031:173 with SMTP id d9443c01a7336-2ad744e0f75mr96632915ad.35.1771873814482;
        Mon, 23 Feb 2026 11:10:14 -0800 (PST)
X-Received: by 2002:a17:902:ce0e:b0:299:e031:173 with SMTP id d9443c01a7336-2ad744e0f75mr96632635ad.35.1771873813959;
        Mon, 23 Feb 2026 11:10:13 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:10:12 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:39:01 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-7-fe46a9c1a046@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=8182;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=eflhBKeXg5zwxShiL+GaVvttYv9N4fOm9mLw1I2A+H0=;
 b=BhxckZcN/OtS9rXcw34lRFsN71y8kr2IKGaSslRspRMkvDtNq/DG+ssbzCenfyQVMQMZh6zGt
 y3aGCpGgyOyCJanPJPw7P061BJPRJLydGxTVXmRz2lS2TbdWeizB3TC
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Proofpoint-GUID: 4mMRarNTt1K9rcEEMSjD6TU96dYfXsXM
X-Proofpoint-ORIG-GUID: 4mMRarNTt1K9rcEEMSjD6TU96dYfXsXM
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=699ca617 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=rdCUcgxLdif9O8q6BpAA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX43UW6/QgZV4b
 MdJaCfZErFyF5Gi0BqKNo1oi5KiQJmGvHPzVDCWOP0b0+XZuzkf+VUWEg+5pjbUn0zxIQfrCtQ5
 1lSByRSzdMffDxPUwW6RXBfD/PQM3LJN+jw8M5U8NBuiFAnDHKp8VnUIt0/WKOsi1XCA41B6bR0
 y7vCpuYcnbDlFIM1hyLhgijJetwjc4oRnWgtNlWLwne85ZLUB+HeC01YNY3TvsROo3QD8AL++hk
 OhfTHoTnLmuDtHZDLZ0hvqUGlxUs9fuGn/7EbEWJv9j5hNEQ4U6J8sDUmpLlsvYtq6Hg9R25bnP
 mSxsTZTJL1N/sswYbNIxwVIcXDVXKyARVGH5ekyOMwT3PK22AOsc2XN9Et9d2qRe1j35SaiDdDG
 U9qDlOdD94TJnIXId9SkoJEbBYpeZ2s+wJYGeYWTDfMcyc1NTBGfgRFYagTtREYnF5mj3/3JoMZ
 HgI5KeyQE6CtWxxUc7w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230166
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LEQMAW2VIF3L2MJFXTCFDNE7F6SOBEXY
X-Message-ID-Hash: LEQMAW2VIF3L2MJFXTCFDNE7F6SOBEXY
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:42 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 07/18] accel/qda: Add DRM accel device registration for QDA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LEQMAW2VIF3L2MJFXTCFDNE7F6SOBEXY/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,oss.qualcomm.com:mid]
X-Rspamd-Queue-Id: E3611412060
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add DRM accel integration for the QDA DSP accelerator driver. A new
qda_drm_priv structure is introduced to hold per-device DRM state,
including a pointer to the memory manager and the parent qda_dev
instance. The driver now allocates a drm_device, initializes
driver-private state, and registers the device via the DRM accel
infrastructure.

qda_register_device() performs allocation and registration of the DRM
device, while qda_unregister_device() handles device teardown and
releases references using drm_dev_unregister() and drm_dev_put().
Initialization and teardown paths are updated so DRM resources are
allocated after IOMMU/memory-manager setup and cleaned during RPMsg
remove.

This patch lays the foundation for adding GEM buffer support and IOCTL
handling in later patches as part of the compute accelerator interface.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/accel/qda/qda_drv.c   | 103 ++++++++++++++++++++++++++++++++++++++++++
 drivers/accel/qda/qda_drv.h   |  33 +++++++++++++-
 drivers/accel/qda/qda_rpmsg.c |   8 ++++
 3 files changed, 142 insertions(+), 2 deletions(-)

diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
index 69132737f964..a9113ec78fa2 100644
--- a/drivers/accel/qda/qda_drv.c
+++ b/drivers/accel/qda/qda_drv.c
@@ -4,9 +4,31 @@
 #include <linux/kernel.h>
 #include <linux/atomic.h>
 #include <linux/slab.h>
+#include <drm/drm_accel.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_file.h>
+#include <drm/drm_gem.h>
+#include <drm/drm_ioctl.h>
 #include "qda_drv.h"
 #include "qda_rpmsg.h"
 
+DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
+
+static struct drm_driver qda_drm_driver = {
+	.driver_features = DRIVER_COMPUTE_ACCEL,
+	.fops			= &qda_accel_fops,
+	.name = DRIVER_NAME,
+	.desc = "Qualcomm DSP Accelerator Driver",
+};
+
+static void cleanup_drm_private(struct qda_dev *qdev)
+{
+	if (qdev->drm_priv) {
+		qda_dbg(qdev, "Cleaning up DRM private data\n");
+		kfree(qdev->drm_priv);
+	}
+}
+
 static void cleanup_iommu_manager(struct qda_dev *qdev)
 {
 	if (qdev->iommu_mgr) {
@@ -24,6 +46,7 @@ static void cleanup_device_resources(struct qda_dev *qdev)
 
 void qda_deinit_device(struct qda_dev *qdev)
 {
+	cleanup_drm_private(qdev);
 	cleanup_iommu_manager(qdev);
 	cleanup_device_resources(qdev);
 }
@@ -59,6 +82,18 @@ static int init_memory_manager(struct qda_dev *qdev)
 	return 0;
 }
 
+static int init_drm_private(struct qda_dev *qdev)
+{
+	qda_dbg(qdev, "Initializing DRM private data\n");
+
+	qdev->drm_priv = kzalloc_obj(*qdev->drm_priv, GFP_KERNEL);
+	if (!qdev->drm_priv)
+		return -ENOMEM;
+
+	qda_dbg(qdev, "DRM private data initialized successfully\n");
+	return 0;
+}
+
 int qda_init_device(struct qda_dev *qdev)
 {
 	int ret;
@@ -71,14 +106,82 @@ int qda_init_device(struct qda_dev *qdev)
 		goto err_cleanup_resources;
 	}
 
+	ret = init_drm_private(qdev);
+	if (ret) {
+		qda_err(qdev, "DRM private data initialization failed: %d\n", ret);
+		goto err_cleanup_iommu;
+	}
+
 	qda_dbg(qdev, "QDA device initialized successfully\n");
 	return 0;
 
+err_cleanup_iommu:
+	cleanup_iommu_manager(qdev);
 err_cleanup_resources:
 	cleanup_device_resources(qdev);
 	return ret;
 }
 
+static int setup_and_register_drm_device(struct qda_dev *qdev)
+{
+	struct drm_device *ddev;
+	int ret;
+
+	qda_dbg(qdev, "Setting up and registering DRM device\n");
+
+	ddev = drm_dev_alloc(&qda_drm_driver, qdev->dev);
+	if (IS_ERR(ddev)) {
+		ret = PTR_ERR(ddev);
+		qda_err(qdev, "Failed to allocate DRM device: %d\n", ret);
+		return ret;
+	}
+
+	qdev->drm_priv->drm_dev = ddev;
+	qdev->drm_priv->iommu_mgr = qdev->iommu_mgr;
+	qdev->drm_priv->qdev = qdev;
+
+	ddev->dev_private = qdev->drm_priv;
+	qdev->drm_dev = ddev;
+
+	ret = drm_dev_register(ddev, 0);
+	if (ret) {
+		qda_err(qdev, "Failed to register DRM device: %d\n", ret);
+		drm_dev_put(ddev);
+		return ret;
+	}
+
+	qda_dbg(qdev, "DRM device registered successfully\n");
+	return 0;
+}
+
+int qda_register_device(struct qda_dev *qdev)
+{
+	int ret;
+
+	ret = setup_and_register_drm_device(qdev);
+	if (ret) {
+		qda_err(qdev, "DRM device setup failed: %d\n", ret);
+		return ret;
+	}
+
+	qda_dbg(qdev, "QDA device registered successfully\n");
+	return 0;
+}
+
+void qda_unregister_device(struct qda_dev *qdev)
+{
+	qda_info(qdev, "Unregistering QDA device\n");
+
+	if (qdev->drm_dev) {
+		qda_dbg(qdev, "Unregistering DRM device\n");
+		drm_dev_unregister(qdev->drm_dev);
+		drm_dev_put(qdev->drm_dev);
+		qdev->drm_dev = NULL;
+	}
+
+	qda_dbg(qdev, "QDA device unregistered successfully\n");
+}
+
 static int __init qda_core_init(void)
 {
 	int ret;
diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
index 2cb97e4eafbf..2b80401a3741 100644
--- a/drivers/accel/qda/qda_drv.h
+++ b/drivers/accel/qda/qda_drv.h
@@ -11,13 +11,35 @@
 #include <linux/mutex.h>
 #include <linux/rpmsg.h>
 #include <linux/xarray.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_file.h>
+#include <drm/drm_device.h>
+#include <drm/drm_accel.h>
 #include "qda_memory_manager.h"
 
 /* Driver identification */
 #define DRIVER_NAME "qda"
 
+/**
+ * struct qda_drm_priv - DRM device private data for QDA device
+ *
+ * This structure serves as the DRM device private data (stored in dev_private),
+ * bridging the DRM device context with the QDA device and providing access to
+ * shared resources like the memory manager during buffer operations.
+ */
+struct qda_drm_priv {
+	/* DRM device structure */
+	struct drm_device *drm_dev;
+	/* Global memory/IOMMU manager */
+	struct qda_memory_manager *iommu_mgr;
+	/* Back-pointer to qda_dev */
+	struct qda_dev *qdev;
+};
+
 /* struct qda_dev - Main device structure for QDA driver */
 struct qda_dev {
+	/* DRM device for accelerator interface */
+	struct drm_device *drm_dev;
 	/* RPMsg device for communication with remote processor */
 	struct rpmsg_device *rpdev;
 	/* Underlying device structure */
@@ -26,6 +48,8 @@ struct qda_dev {
 	struct mutex lock;
 	/* IOMMU/memory manager */
 	struct qda_memory_manager *iommu_mgr;
+	/* DRM device private data */
+	struct qda_drm_priv *drm_priv;
 	/* Flag indicating device removal in progress */
 	atomic_t removing;
 	/* Name of the DSP (e.g., "cdsp", "adsp") */
@@ -39,8 +63,8 @@ struct qda_dev {
  * @qdev: QDA device structure
  *
  * Returns the most appropriate device structure for logging messages.
- * Prefers qdev->dev, or returns NULL if the device is being removed
- * or invalid.
+ * Prefers qdev->dev, falls back to qdev->drm_dev->dev, or returns NULL
+ * if the device is being removed or invalid.
  */
 static inline struct device *qda_get_log_device(struct qda_dev *qdev)
 {
@@ -50,6 +74,9 @@ static inline struct device *qda_get_log_device(struct qda_dev *qdev)
 	if (qdev->dev)
 		return qdev->dev;
 
+	if (qdev->drm_dev)
+		return qdev->drm_dev->dev;
+
 	return NULL;
 }
 
@@ -93,5 +120,7 @@ static inline struct device *qda_get_log_device(struct qda_dev *qdev)
  */
 int qda_init_device(struct qda_dev *qdev);
 void qda_deinit_device(struct qda_dev *qdev);
+int qda_register_device(struct qda_dev *qdev);
+void qda_unregister_device(struct qda_dev *qdev);
 
 #endif /* __QDA_DRV_H__ */
diff --git a/drivers/accel/qda/qda_rpmsg.c b/drivers/accel/qda/qda_rpmsg.c
index 5a57384de6a2..b2b44b4d3ca8 100644
--- a/drivers/accel/qda/qda_rpmsg.c
+++ b/drivers/accel/qda/qda_rpmsg.c
@@ -80,6 +80,7 @@ static void qda_rpmsg_remove(struct rpmsg_device *rpdev)
 	qdev->rpdev = NULL;
 	mutex_unlock(&qdev->lock);
 
+	qda_unregister_device(qdev);
 	qda_unpopulate_child_devices(qdev);
 	qda_deinit_device(qdev);
 
@@ -123,6 +124,13 @@ static int qda_rpmsg_probe(struct rpmsg_device *rpdev)
 		return ret;
 	}
 
+	ret = qda_register_device(qdev);
+	if (ret) {
+		qda_deinit_device(qdev);
+		qda_unpopulate_child_devices(qdev);
+		return ret;
+	}
+
 	qda_info(qdev, "QDA RPMsg probe completed successfully for %s\n", qdev->dsp_name);
 	return 0;
 }

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
