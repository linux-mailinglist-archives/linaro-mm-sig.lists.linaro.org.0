Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAm5NT0T4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E798412043
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D24944736
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:04 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id C70B34047C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:09:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=RpEkL3VY;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=aKycRRkG;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NDsFrj184933
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:09:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lsNmoBqASYHT9cEHp6wiIElpPi1KeWEI5rpj2+q1iIA=; b=RpEkL3VYvUKXqlya
	rYKRGcHWELDmVNYUNjnxgaIdhwD3KZgSYGrqLnKFuPWyuvoQM1Xt/tB8z+itdjaL
	hUMX7cRvkVeH1g+D5hG/1D5cI4Ai56L1IOftdKHXVO9Vaazy29/L5DUIYI7z2weP
	jzqBj92+V55qvY8gekJVzOhP4EhUq7Vjl8qBLKzi/7fi5OMOIVIIr1ZybznKDKaJ
	rLqgDg2+tvUKMjunp9+3WWW/IG8ukDYG21pMIKylZ0a0yqugjrbgXAENI4aHIQm+
	YuEhYfWYiDAF1iL+8ObVpGRdMq7Iv4sVPPiO4Y2Q6lpjgmnH0QNyyU2apjaYbDhh
	6QBuwA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgr69h138-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:09:52 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a8f8c81d02so57862735ad.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873792; x=1772478592; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lsNmoBqASYHT9cEHp6wiIElpPi1KeWEI5rpj2+q1iIA=;
        b=aKycRRkGoo0EKDQtLXACKhIj9sqet8oJfrePqH70aGCUq5uChq419rIk/+xuQPFXk3
         1fjsl13+pd7dR1y0sJDVBVtvmeioDw6GyM8z1dG0RnjLKh1O5DSW4mAMtXnJak8YjC3F
         2nyl7s9g+oZYRN5a6Ltrs9SqCGlu/DEfWeTE3qr1kCCT/ho99otDGw44P9eo88V1W94d
         n2na5RvdvyRufiXUCvwgjxVZE2BPHomAPTnWHJUsNUb45SR4We/TI1ziGsUA5opscBBX
         gYA6cSRVPa+ObpcsO7pagpu7F+2cqLQ/Hdi4qAjAxswjhX2Y4gMJSTIAXXG9vqG1GRoo
         447g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873792; x=1772478592;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lsNmoBqASYHT9cEHp6wiIElpPi1KeWEI5rpj2+q1iIA=;
        b=h1n2lhRUFnYJvKGTfkFtkOuWx02ztC8Q32o6SD71SOLxj1obPGXeXCxq8z303D4EX0
         EMa8dYTjFJH5Uz1MD7kZM5mQDdjvMUXz6n3fZZetPuyDN0JQTJJS2kJdMNo+e0HBSXWR
         R0OZhhaN+XQku9+S2vB9LVTO9Aj5T42gF+BgdTlilmRWW1pqgWdS4nGTIUH+tkHPceTc
         IZAs2yfDuuweoGgHht3kqkQXZQOLKPnZwibPyqRmVQ+XoDH1HeHf/h1v+Q2BCESSEj+n
         Nl5avAjnUoTeeJUgVRUHP/b5xTHhN7Ey9Y2Hmn24gH9fNPDUQIyagt27RZ2wZNG8915X
         Ib7w==
X-Forwarded-Encrypted: i=1; AJvYcCVEV42QY09cF7EJYYbfx0fPtzOg1++KYy+Vk6XxyFY0aEYEdjLYSgIVMeUdN6lt4QIPc6cbzX9nxt7aYIvt@lists.linaro.org
X-Gm-Message-State: AOJu0YyQRhMe++8VEJYY9xzvnIZikX1bN43qe2NikKAgD58nmcA8kkxL
	pxnu3gnzWxeUon9eJJx+GBFsD/pvRJbn3ZSWbc5R05snIvN8rBSqzyJ/neatnpQKM1pOBlxciqP
	Ltx2OlLISd03RhZp8r1Y35/M6jwuh6uUOWhiwaI7z1eIToWqyDdQJ7472he7xKwCMAoZO/A==
X-Gm-Gg: ATEYQzw9ctXoDFJNkWGh0DyafuVNjm9oMZKDYNoBa+UwO42zLlKEGh7t0oZBfZvmoYv
	82fljGZZj5vSUuGQidhmTWBX4nDM2ntAmQVVVtdBmxfTFminjEdpGBV/yYmkjkloYcBBnqBLppY
	Jh8JgQBQ4KgvNWouXpp314i7VMlC1KBjLm89eAqazWCAUDBeF+qPmkNDn6s7KVTmSwqIPUZK4yy
	RYoPCjSDUc8X4TqOWiFSc+E5FCHsO4QnVabBXBUhUDBW7S5JpIFMKxO3HExUQ7t3I+aYGSthbQm
	QyHebl+doWslRmrZi/Dfb6ZTQ6SuCvNcw1AMn8nG9N9f1rcOX6VfjlB7QhCXdJimrghpFUISp8Y
	+o8rN3YOtAyrC04rw5zJbDqAnB+3JR5Bgxx7E3DNmxDOS2Uz80tm3oQ==
X-Received: by 2002:a17:902:ced0:b0:2a0:d629:903c with SMTP id d9443c01a7336-2ad74516615mr88514345ad.30.1771873791768;
        Mon, 23 Feb 2026 11:09:51 -0800 (PST)
X-Received: by 2002:a17:902:ced0:b0:2a0:d629:903c with SMTP id d9443c01a7336-2ad74516615mr88513935ad.30.1771873791111;
        Mon, 23 Feb 2026 11:09:51 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:09:50 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:38:58 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-4-fe46a9c1a046@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=4943;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=kVGIvUQYd8fYwcDgOBRxiOF7ByQocRT92vAbYBLm9bM=;
 b=rUIy5HgCLDRhZVp2IzTGLrvCMsULd21ubbtDKIPuQIn9m/tfFsvEGy2LbREw4uK3leLblRQUp
 ul4rak0R2xhAnwPvhY8PF/SfHK0rFwibTRGVhaul0H1g9UdEczMQ+K5
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Authority-Analysis: v=2.4 cv=O6A0fR9W c=1 sm=1 tr=0 ts=699ca600 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=Rss5_8j3o1z-bWaeIIsA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: LbqZfjaGBvXINDeesLfONYiJSSSWfPOf
X-Proofpoint-GUID: LbqZfjaGBvXINDeesLfONYiJSSSWfPOf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX67q2HYimaA9X
 ULqgtJTyH9UIAX7FDe3gSWSUH+ahj7YWQKpxSv6vV9Sh8HPaHP5BfTT7dYKeAJ3aEwYCchsyv9M
 oeYO9W/yT70hItL6tpaffcoj9b4nMqD032Pr3na9gg7kQC5Ml6O1D2UOVPgKPEilZm7AFEVkAzp
 ffiDmuqGbvZhZwMNzm6+WIsKRrxIWqaCcmr+i72oQzV8meQBVRgbJa0CZhtcnJczZIdFsc/IbiB
 Ge28mx5rCt6q6iIZhKulAWTPbjNIL0/P4eVGrNdRtrLKgJ8tUNsfPuUiK2J7TV29hI8zgfkwaoU
 1qbSFt7X94VtIwM+q/ljsINmMr/qj4JycXZBeL/82MuIrKHDxY9WVFcptYn9Okkwz1sTMdoS25K
 33afenTc0IZlE+U5ToEO/F+5D4uqzWhDrxHq6V0Q0YBTx3dY5aHv44w99nWk8obn7QvG4EtEnrE
 sA/xenZtdhccmS1Iihg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230166
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H2LWT4X6IHBK3JWW4OMUIDCBY2K3SDLH
X-Message-ID-Hash: H2LWT4X6IHBK3JWW4OMUIDCBY2K3SDLH
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:41 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 04/18] accel/qda: Add built-in compute CB bus for QDA and integrate with IOMMU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H2LWT4X6IHBK3JWW4OMUIDCBY2K3SDLH/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 6E798412043
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce a built-in compute context-bank (CB) bus used by the Qualcomm
DSP accelerator (QDA) driver to represent DSP CB devices that require
IOMMU configuration. This separates the CB bus from the QDA driver and
allows QDA to remain a loadable module while the bus is always built-in.

A new bool Kconfig symbol DRM_ACCEL_QDA_COMPUTE_BUS is added and is
selected by the main DRM_ACCEL_QDA driver. The parent accel Makefile is
updated to descend into the QDA directory for both built-in and module
builds so that the CB bus is compiled into vmlinux while the driver
remains modular.

The CB bus is registered at postcore_initcall() time and is exposed to
the IOMMU core through iommu_buses[] in the same way as the Tegra
host1x context-bus. This enables later patches to create CB devices on
this bus and obtain IOMMU domains for them.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/accel/Makefile              |  1 +
 drivers/accel/qda/Kconfig           |  5 +++++
 drivers/accel/qda/Makefile          |  2 ++
 drivers/accel/qda/qda_compute_bus.c | 23 +++++++++++++++++++++++
 drivers/iommu/iommu.c               |  4 ++++
 include/linux/qda_compute_bus.h     | 22 ++++++++++++++++++++++
 6 files changed, 57 insertions(+)

diff --git a/drivers/accel/Makefile b/drivers/accel/Makefile
index 58c08dd5f389..9ed843cd293f 100644
--- a/drivers/accel/Makefile
+++ b/drivers/accel/Makefile
@@ -6,4 +6,5 @@ obj-$(CONFIG_DRM_ACCEL_HABANALABS)	+= habanalabs/
 obj-$(CONFIG_DRM_ACCEL_IVPU)		+= ivpu/
 obj-$(CONFIG_DRM_ACCEL_QAIC)		+= qaic/
 obj-$(CONFIG_DRM_ACCEL_QDA)		+= qda/
+obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda/
 obj-$(CONFIG_DRM_ACCEL_ROCKET)		+= rocket/
\ No newline at end of file
diff --git a/drivers/accel/qda/Kconfig b/drivers/accel/qda/Kconfig
index 484d21ff1b55..ef1fa384efbe 100644
--- a/drivers/accel/qda/Kconfig
+++ b/drivers/accel/qda/Kconfig
@@ -3,11 +3,16 @@
 # Qualcomm DSP accelerator driver
 #
 
+
+config DRM_ACCEL_QDA_COMPUTE_BUS
+	bool
+
 config DRM_ACCEL_QDA
 	tristate "Qualcomm DSP accelerator"
 	depends on DRM_ACCEL
 	depends on ARCH_QCOM || COMPILE_TEST
 	depends on RPMSG
+	select DRM_ACCEL_QDA_COMPUTE_BUS
 	help
 	  Enables the DRM-based accelerator driver for Qualcomm's Hexagon DSPs.
 	  This driver provides a standardized interface for offloading computational
diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
index e7f23182589b..242684ef1af7 100644
--- a/drivers/accel/qda/Makefile
+++ b/drivers/accel/qda/Makefile
@@ -8,3 +8,5 @@ obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
 qda-y := \
 	qda_drv.o \
 	qda_rpmsg.o \
+
+obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
diff --git a/drivers/accel/qda/qda_compute_bus.c b/drivers/accel/qda/qda_compute_bus.c
new file mode 100644
index 000000000000..1d9c39948fb5
--- /dev/null
+++ b/drivers/accel/qda/qda_compute_bus.c
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+#include <linux/device.h>
+#include <linux/init.h>
+
+struct bus_type qda_cb_bus_type = {
+	.name = "qda-compute-cb",
+};
+EXPORT_SYMBOL_GPL(qda_cb_bus_type);
+
+static int __init qda_cb_bus_init(void)
+{
+	int err;
+
+	err = bus_register(&qda_cb_bus_type);
+	if (err < 0) {
+		pr_err("qda-compute-cb bus registration failed: %d\n", err);
+		return err;
+	}
+	return 0;
+}
+
+postcore_initcall(qda_cb_bus_init);
diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 4926a43118e6..5dee912686ee 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -33,6 +33,7 @@
 #include <trace/events/iommu.h>
 #include <linux/sched/mm.h>
 #include <linux/msi.h>
+#include <linux/qda_compute_bus.h>
 #include <uapi/linux/iommufd.h>
 
 #include "dma-iommu.h"
@@ -178,6 +179,9 @@ static const struct bus_type * const iommu_buses[] = {
 #ifdef CONFIG_CDX_BUS
 	&cdx_bus_type,
 #endif
+#ifdef CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS
+	&qda_cb_bus_type,
+#endif
 };
 
 /*
diff --git a/include/linux/qda_compute_bus.h b/include/linux/qda_compute_bus.h
new file mode 100644
index 000000000000..807122d84e3f
--- /dev/null
+++ b/include/linux/qda_compute_bus.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef __QDA_COMPUTE_BUS_H__
+#define __QDA_COMPUTE_BUS_H__
+
+#include <linux/device.h>
+
+/*
+ * Custom bus type for QDA compute context bank (CB) devices
+ *
+ * This bus type is used for manually created CB devices that represent
+ * IOMMU context banks. The custom bus allows proper IOMMU configuration
+ * and device management for these virtual devices.
+ */
+#ifdef CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS
+extern struct bus_type qda_cb_bus_type;
+#endif
+
+#endif /* __QDA_COMPUTE_BUS_H__ */

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
