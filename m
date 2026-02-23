Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EDNLGMT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5853441206E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E44044AB2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:42 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 39E2E4047C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=mr0aOAlt;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=XozP5zNd;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NGRJAs1640611
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4cWM5gPirp6izkRy//rcobyzuJsSsXAsmgnCXnHF9B0=; b=mr0aOAltrI4uJ7Y/
	eX9yHYbh93qOBnF0O2Jqi5e+eWUymu4EHSr+IRSR6gTZxrvMqgHZ6o1FClrysAH3
	pMZrf70/KSN/FcBb2TvAafzdorTIV4pVb4LiUtBBsF0Km8bD0I4tL6M7YTD+PGca
	4CNb3QtHn2c06AyXuTJyxX4vRMNwVn7Hxqo3Hio+v8Wbu7rCaEj44wddHPe6RanH
	GrilYYSFJwxyqM62A14LM/3SDVGNbRisSdICQwZWw3r+AMJwc8gQQsG3/33xl13e
	HPu3/IMadAw3RB4Z9G9QTr+krQ0RRdQjJBoCxtyld2upIJwRwgKRcmHlx4IB8xP8
	jzK1Qg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgte8rhfc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:30 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aad6045810so47849395ad.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873829; x=1772478629; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4cWM5gPirp6izkRy//rcobyzuJsSsXAsmgnCXnHF9B0=;
        b=XozP5zNdq3jwzepDQsLngaK7XJZebp604MmNr86T6BufMcv+pI/x0A7ByKesWUwoqA
         jX0fahGALEeI5aW2lJDm6MiUoDCRvc1kzd/0YnwM97clAqicAsGS+lmfgWvzlLQMuLBr
         +FnxQU9tIcyp6XiwYzT5z8jimDtRtNubmObJ41kRIrI+QOkAEoyqXyvTSNz2mdg5dqTF
         YkIte8aj0vJpkRBuhhwqWxJjqaxyqWcFEfLqAsn2bkkoUhhSfsgaA8oAE6HE0gJiELaL
         6cw9u9cQDSunLzDMcB/JiOn//cmk1t/qnTbyh0Lo2HCOlpgftvE/DraUZvBDhMcilVIb
         t6KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873829; x=1772478629;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4cWM5gPirp6izkRy//rcobyzuJsSsXAsmgnCXnHF9B0=;
        b=UYJiIDrClujllDwx5d0E21ny2Aqoa/DmNRMZ0Uolo1sO/1upDO2Hm2G0z4MRe1nPxW
         dRl9THqPg2sbP2f4M48urrwxZpKECtUpvcHn5cI2JncLNHM5MOsfELtz/xFyY4yD5Nwy
         mPjeoFqZ3Ara+B9+l/IPw/QOrmK6Zc0p+DtbzmngtV9ynA5fXvDtSNA5PvanPcHUibFo
         cbjI1dxRem4EZy9jgPqCANm+Ubd++usuulp3fiSbn/SnPAX164Ax2qKdzRQ2TCCA+6yS
         9nc17xM4P+1Fi2sj74agOPauupXEOgHo/HUD6fV4wsj58zEvAEOkWXWgfnbXTWAb4weN
         52MQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSaiuQQXgxVkQvoGPmyFzTux8GkFo2oqxvJshHuSdFTB02/Q+RBAhgViMUKndwWoaRVQqo8BuQY22FVTim@lists.linaro.org
X-Gm-Message-State: AOJu0Ywgp+3HjzCvOm5Y4+A1rxowosTf6PvmzZtvcmmCiZ3ocCM0zkPy
	to7gAJ4wGcarZ3KRsqSbXsN+xebsv6pwVSwbloV82obp3TgXgMzVXKSYwR5rtL7cSFnnPYY2Cpb
	0y/R/Aw0qB2HeqGlgmu7RGejG0DPJdw3UDlEkYwXzgZ2wquoMOk26AKdKvvdWSe+iX6KNJw==
X-Gm-Gg: ATEYQzxHwb/ehI3V96wNz1vRGJXFI8iS0UiFroR4TIxg5DWsrVgX4Rv4gTGs7lVU1bg
	17C5TxPCZ5uYTc7aVVWa+SDi3MEf6CZ/Xy28s2qWy6iB6IomDwG55h9r5P+IGy3B5qL22JMhzCx
	FsTpu3YQlIXZNw+rtqebdswq0Q/191Tb8iviWe7UbYrU0KQRo2W1Lxo4C9+qS+REdTd40AOuOiY
	eaJOcCHJpq2YOZunqLDiEtlKlov9ZMW3EoKClSKjhNfuj5AqYKzLwibUV3h1otmo/06Ylc4+tAI
	hUpBCRV0ZoqVxh7cTpTkPu3zLxN/DgHFqjEB90sSXddPzsKo9Ws5O3KIwQ/9584tSwaXIlXRGwc
	iORRIQ1Hc4Q2v9U1VhdqOapptuUq62gHVzYBFHsPiEdj1EsYeL0nQDA==
X-Received: by 2002:a17:903:2f8c:b0:2a9:451b:422 with SMTP id d9443c01a7336-2ad74439669mr84594625ad.14.1771873829349;
        Mon, 23 Feb 2026 11:10:29 -0800 (PST)
X-Received: by 2002:a17:903:2f8c:b0:2a9:451b:422 with SMTP id d9443c01a7336-2ad74439669mr84594305ad.14.1771873828808;
        Mon, 23 Feb 2026 11:10:28 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:10:28 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:39:03 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-9-fe46a9c1a046@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=6604;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=cPe6XiIaqlleCllXAqlYjNWCbV9gcpzWtKPjZ8WPpf8=;
 b=ZymVL6dioZif6Wgr4wJm47EDwZKmJDJvKkln1f30mqSxFcv/WXANZRzJ6HZOt0B38TaPvWsjI
 2zkyvEL7H+3AOLdSQuIn9G6ImRaRh4RXlXJ9NOWvLTJOVVCdBtH+0mj
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Proofpoint-ORIG-GUID: CwILW0RibryXHfjA-jyITed-jlJVznPH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX8Dg4Bybfaeyg
 xuzsiAeQRz8HGaYR7KLDdxFCj/yHZ3ODT7OhV6NIP9B5fEzROthsk1gfppcFp2alKB73mf1xEzI
 PpXiT6gNEAadt8U5592ATWlP7B/uLRLbvGwN7zTkgrs5JccxLXDosV7Sz88zVyRlWQWz+5uLQ8U
 SIBwCAtlUqbnbgS2k6alldNqBtcx+K/CHDRyWzUV1tftHQ9Q7i72U9hqArj3TDeguGE6rQwsPgc
 flbhvX+TpzgGInFaCb7hsTr1i7eNku1grVnrRieW9XHK7g4ZVNlXPJiqslJ6TFs3c2nTKR1dMVr
 Ezo71A0LYNJoNGWGKlBPH6j8cEe774B6SHS7b9GBsjdI29M3DFh1XwvpIO2wwqHElTmlHi0qIYJ
 NOpFKuBxwoXH1awMnXnQMSAikYJdR4GlwKAxFzfWwPZvjqEFKLZmTEWaj7r8e/oqF5bOgeUYW1R
 hYcB6Y2wEWaJ0qrEopw==
X-Proofpoint-GUID: CwILW0RibryXHfjA-jyITed-jlJVznPH
X-Authority-Analysis: v=2.4 cv=WqQm8Nfv c=1 sm=1 tr=0 ts=699ca626 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=xFwpPJ--XgJ2TdNcX9IA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230166
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N6XVG74M3YLCGGYGZ3Y5QXRXZ2BMXTQU
X-Message-ID-Hash: N6XVG74M3YLCGGYGZ3Y5QXRXZ2BMXTQU
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:43 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 09/18] accel/qda: Add QUERY IOCTL and basic QDA UAPI header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N6XVG74M3YLCGGYGZ3Y5QXRXZ2BMXTQU/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,oss.qualcomm.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5853441206E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce a basic UAPI for the QDA accelerator driver along with a
DRM IOCTL handler to query DSP device identity. A new UAPI header
include/uapi/drm/qda_accel.h defines DRM_QDA_QUERY, the corresponding
DRM_IOCTL_QDA_QUERY command, and struct drm_qda_query, which contains
a DSP name string.

On the kernel side, qda_ioctl_query() validates the per-file context,
resolves the qda_dev instance from dev->dev_private, and copies the
DSP name from qdev->dsp_name into the query structure. The new
qda_ioctls[] table wires this IOCTL into the QDA DRM driver so
userspace can call it through the standard DRM command interface.

This IOCTL provides a simple and stable way for userspace to discover
which DSP a given QDA device node represents and serves as the first
building block for a richer QDA UAPI in subsequent patches.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/accel/qda/Makefile    |  1 +
 drivers/accel/qda/qda_drv.c   |  9 +++++++++
 drivers/accel/qda/qda_ioctl.c | 45 +++++++++++++++++++++++++++++++++++++++++
 drivers/accel/qda/qda_ioctl.h | 26 ++++++++++++++++++++++++
 include/uapi/drm/qda_accel.h  | 47 +++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 128 insertions(+)

diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
index 7e96ddc40a24..f547398e1a72 100644
--- a/drivers/accel/qda/Makefile
+++ b/drivers/accel/qda/Makefile
@@ -10,5 +10,6 @@ qda-y := \
 	qda_rpmsg.o \
 	qda_cb.o \
 	qda_memory_manager.o \
+	qda_ioctl.o \
 
 obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
index bf95fc782cf8..86758a9cd982 100644
--- a/drivers/accel/qda/qda_drv.c
+++ b/drivers/accel/qda/qda_drv.c
@@ -9,7 +9,10 @@
 #include <drm/drm_file.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_ioctl.h>
+#include <drm/qda_accel.h>
+
 #include "qda_drv.h"
+#include "qda_ioctl.h"
 #include "qda_rpmsg.h"
 
 static struct qda_drm_priv *get_drm_priv_from_device(struct drm_device *dev)
@@ -128,11 +131,17 @@ static void qda_postclose(struct drm_device *dev, struct drm_file *file)
 
 DEFINE_DRM_ACCEL_FOPS(qda_accel_fops);
 
+static const struct drm_ioctl_desc qda_ioctls[] = {
+	DRM_IOCTL_DEF_DRV(QDA_QUERY, qda_ioctl_query, 0),
+};
+
 static struct drm_driver qda_drm_driver = {
 	.driver_features = DRIVER_COMPUTE_ACCEL,
 	.fops			= &qda_accel_fops,
 	.open			= qda_open,
 	.postclose		= qda_postclose,
+	.ioctls = qda_ioctls,
+	.num_ioctls = ARRAY_SIZE(qda_ioctls),
 	.name = DRIVER_NAME,
 	.desc = "Qualcomm DSP Accelerator Driver",
 };
diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
new file mode 100644
index 000000000000..9fa73ec2dfce
--- /dev/null
+++ b/drivers/accel/qda/qda_ioctl.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+#include <drm/drm_ioctl.h>
+#include <drm/drm_gem.h>
+#include <drm/qda_accel.h>
+#include "qda_drv.h"
+#include "qda_ioctl.h"
+
+static int qda_validate_and_get_context(struct drm_device *dev, struct drm_file *file_priv,
+					struct qda_dev **qdev, struct qda_user **qda_user)
+{
+	struct qda_drm_priv *drm_priv = dev->dev_private;
+	struct qda_file_priv *qda_file_priv;
+
+	if (!drm_priv)
+		return -EINVAL;
+
+	*qdev = drm_priv->qdev;
+	if (!*qdev)
+		return -EINVAL;
+
+	qda_file_priv = (struct qda_file_priv *)file_priv->driver_priv;
+	if (!qda_file_priv || !qda_file_priv->qda_user)
+		return -EINVAL;
+
+	*qda_user = qda_file_priv->qda_user;
+
+	return 0;
+}
+
+int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv)
+{
+	struct qda_dev *qdev;
+	struct qda_user *qda_user;
+	struct drm_qda_query *args = data;
+	int ret;
+
+	ret = qda_validate_and_get_context(dev, file_priv, &qdev, &qda_user);
+	if (ret)
+		return ret;
+
+	strscpy(args->dsp_name, qdev->dsp_name, sizeof(args->dsp_name));
+
+	return 0;
+}
diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
new file mode 100644
index 000000000000..6bf3bcd28c0e
--- /dev/null
+++ b/drivers/accel/qda/qda_ioctl.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _QDA_IOCTL_H
+#define _QDA_IOCTL_H
+
+#include <linux/types.h>
+#include <linux/kernel.h>
+#include <drm/drm_ioctl.h>
+#include "qda_drv.h"
+
+/**
+ * qda_ioctl_query - Query DSP device information and capabilities
+ * @dev: DRM device structure
+ * @data: User-space data containing query parameters and results
+ * @file_priv: DRM file private data
+ *
+ * This IOCTL handler queries information about the DSP device.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv);
+
+#endif /* _QDA_IOCTL_H */
diff --git a/include/uapi/drm/qda_accel.h b/include/uapi/drm/qda_accel.h
new file mode 100644
index 000000000000..0aad791c4832
--- /dev/null
+++ b/include/uapi/drm/qda_accel.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0-only WITH Linux-syscall-note */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef __QDA_ACCEL_H__
+#define __QDA_ACCEL_H__
+
+#include "drm.h"
+
+#if defined(__cplusplus)
+extern "C" {
+#endif
+
+/*
+ * QDA IOCTL command numbers
+ *
+ * These define the command numbers for QDA-specific IOCTLs.
+ * They are used with DRM_COMMAND_BASE to create the full IOCTL numbers.
+ */
+#define DRM_QDA_QUERY	0x00
+/*
+ * QDA IOCTL definitions
+ *
+ * These macros define the actual IOCTL numbers used by userspace applications.
+ * They combine the command numbers with DRM_COMMAND_BASE and specify the
+ * data structure and direction (read/write) for each IOCTL.
+ */
+#define DRM_IOCTL_QDA_QUERY	DRM_IOR(DRM_COMMAND_BASE + DRM_QDA_QUERY, struct drm_qda_query)
+
+/**
+ * struct drm_qda_query - Device information query structure
+ * @dsp_name: Name of DSP (e.g., "adsp", "cdsp", "cdsp1", "gdsp0", "gdsp1")
+ *
+ * This structure is used with DRM_IOCTL_QDA_QUERY to query device type,
+ * allowing userspace to identify which DSP a device node represents. The
+ * kernel provides the DSP name directly as a null-terminated string.
+ */
+struct drm_qda_query {
+	__u8 dsp_name[16];
+};
+
+#if defined(__cplusplus)
+}
+#endif
+
+#endif /* __QDA_ACCEL_H__ */

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
