Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGT9NjIT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8499B412035
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A76A64492E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:53 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id 0B1B64047C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:09:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=XdNsNsWv;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=YpuM19kV;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NI3I2P4169139
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:09:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S0JCApWIKIFxtoeFjcHtlOVvzzubuiNTLYafS3Jft1k=; b=XdNsNsWvxZaLB+WO
	1c9je4mRHs9lemIwzNeVaBTfpwvKr7B0M6jAGIFkItnEmwzraStnPI+eLsvh+Xg1
	9tqJOYWOtxI5zGygqqarte6g8YKv1SPyRAjTJDK/H1eUgLiAWwJbOlM+R5ZVO7Gu
	Zlidsi74Xn3WIUeJeLdS6qj+zGxJeuJaICoHVkiD27kVX2tzYfA0ZOwCh1kXu4+5
	JXAy4aZ6r6X+Z6maQBc488mYwlT3XgqPa5XsPeu0Kvlf54tMIfsLd/itCow9x1rM
	D5dq7NJNCG/xoZz2ALOSMmFhUqbSS2og4rxeBOS6jyP69+IusIvhhoGOhRfkNw7B
	1fcYwA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgt8mgjgu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:09:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7d7b87977so49292335ad.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873777; x=1772478577; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S0JCApWIKIFxtoeFjcHtlOVvzzubuiNTLYafS3Jft1k=;
        b=YpuM19kV3NyXKbzwD7SlW56p7qGVAKLflzdqIC46iZce3ITVrPmPuYHJV/XWHEirkQ
         a5LRQ/doxxiEY6GR6h/iT/zVjZkRX6ILEg8YuZGkQOlpPrmD8GBa/Iir+3cX4EDpExSK
         Vi4UkqVokrkCKpWzfbbERwYexpHigLZgvdyCOevFdy3+wCOXZh97GCtZP87ul08DX+ao
         p61WoI9b23U2OhLylYnHbYxjPYytQTEqGz9P6EIaoEWVymuZkQxWpp1QyAyVIwFehCQe
         R/ARencOiSk4s+qNKPj0aOCMn8onf6ammqPoFQ+sGaj1cWi9AW2xlQt+BLQrhbRn0W1r
         tdOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873777; x=1772478577;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S0JCApWIKIFxtoeFjcHtlOVvzzubuiNTLYafS3Jft1k=;
        b=flA9tB05jsgk6PUEv/AXhTtpJMU/B/my+oKzA246V0oBX5Jo5WHdfyH/gRVbGIxOr8
         bUaKLld0l2IrMmrjkZExtBXCRBb9GKzfUl5zKqf9W7ze700LqlLn5ZvLIS2k043YY+Fk
         D4Q3yN5YIwX63FSQEKUw1ZTwFq9goswUWuUHw/k6AhKakgXvN51hrzn9/zU7+QFWGpaN
         i7RSjO6qjidLcNkGzzasRl2FRi20NUUhRJ+4zjUnrQpekDXQgdzjAj3svJaq7bZsWupt
         FBx6sGzekq0t1Ip5fGP9D1ODKAHb7Klip4u+L6nzwOVyim05NlNBO/p78CBX591ApBH5
         4niw==
X-Forwarded-Encrypted: i=1; AJvYcCXlImYQI6K4Za1yWqC9Oj/Hh+pRch3oYNerm1b9GVxN34hgQrEvaMRyrhx3oZU8dyfdmP8fHRgr5pdAqkzh@lists.linaro.org
X-Gm-Message-State: AOJu0YwTBaX/8b+N0lOeaEnGoPl80jmNElrWYg/qTsEv3xFhMZdBQItA
	NwD7D6JJ8FdApUO3eTlUbdT/goiyUsEdvlG12hgV+c+nPUx3v/PzlNsmSH9yFeaJH9Bb4PpYroj
	adzI6ie++sZweipuD3vty3w/KhTJaCutVMm4CiWcGTBgKXXFp5fe/JLo2PUcciJ0lX/iU8g==
X-Gm-Gg: ATEYQzwk0A1bX4pnihLJQeGmkfnC39xsIDBa888aK3Tk2J1FffItvd09nDsGD9h9uXp
	zKpk2EcsrrfXd0SGKwMKVmX4hryyQrU00xNXFUyxPwWsILL5zt9tPnzEsryloxIAdrxD7ghGjhh
	sLcQTBJfrEvtrLFRMhC1n40TJRLyVn/QhAP1mqlvFZGlfSaTVx5f4UbbnMWy00VZ/BWAkwZa/ge
	dw6iFRT819KsCNg0Iohk/d29dcXcVn9K0VMiSieKvO4STUt21Xcq0XLndWl8s8PVaO+SZWAYyuu
	1uH/4uS87qH1N0hyTn0Gpj+ZgDNqUNHzPw1jzeFtMCjFv4My6jko+Uq2lyVwWAklqcvZoMC7O9t
	AA0GjotOLeqCi81izCzt9PBjycgbWEKSCKh7VLW8JwpQ/9gnwEoYMkA==
X-Received: by 2002:a17:902:ce0c:b0:2aa:dee9:dcf4 with SMTP id d9443c01a7336-2ad7447b9a3mr88580625ad.25.1771873776837;
        Mon, 23 Feb 2026 11:09:36 -0800 (PST)
X-Received: by 2002:a17:902:ce0c:b0:2aa:dee9:dcf4 with SMTP id d9443c01a7336-2ad7447b9a3mr88580215ad.25.1771873776239;
        Mon, 23 Feb 2026 11:09:36 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:09:35 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:38:56 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-2-fe46a9c1a046@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=4540;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=Iw0hzhN8TNwgA9xnHeYqChSsZ5/vTjuUaVZUYGjv0iQ=;
 b=6mfusuznwiKRoFz7lqPVV796aoLzrrTOSWeY7E+k/o91H+68GH9DCi4JNH+MgsD4WTZjhKMWZ
 rfXsJyoI0+sBQzXiPtXlgnu8MwGhwyzA7WTUYFVKS2pm+ZpHc4bQxcZ
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Authority-Analysis: v=2.4 cv=J/unLQnS c=1 sm=1 tr=0 ts=699ca5f2 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=YXnACfkLeW4vfmpQHhcA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: mjtzJPA5u7yMSHs9AIfbrYZartSIsibn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfXzu6w4DWpQUAc
 5OVTilT3IM9Xoz78nnaYOVRChQBra3i6pQ33fJSw4m5UQggVwxBhzvkr7VkN1Jlld6GS73+dPXK
 apqnaS1mXftB/gWwzyEoIpTxLM69Jhtui6yxxZMwTxV52L3RES59YDdqixBEWTq4qhABlAS9ix1
 u/p/7GdsCbuOpRC1cQMTlNGv72fD8MbWvc3iDD6E+v3OGT6Stty50QWCY08TrnpemHKlv9gdykr
 6r/RJlJ2yLO4hBqyPoeijdtYOmCxhWlznrD8cOklFPLdNH9Hk7Z1u3k2eaLMwhWHniHNOl3ptk8
 k9cMyj4xV09KEHaNdaE4xJIs592ZPtcgFxIfLKei1TyrhvENvr5yWVF5OdaYoCLbQNuV6igQ95h
 QQ61SDXECCGtyCwZwc5+RcH7BNCINnJSxRHLPHTWSk5jreU4gx/UoASAF9baen09Wv0ZWPRF7oG
 GZwah1KD/dyJ+9nJbbg==
X-Proofpoint-GUID: mjtzJPA5u7yMSHs9AIfbrYZartSIsibn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1011 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230166
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BOFHXUKHPYH3IPDAZW5MNUZIKBJHNX65
X-Message-ID-Hash: BOFHXUKHPYH3IPDAZW5MNUZIKBJHNX65
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:40 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 02/18] accel/qda: Add Qualcomm DSP accelerator driver skeleton
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BOFHXUKHPYH3IPDAZW5MNUZIKBJHNX65/>
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
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,oss.qualcomm.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 8499B412035
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch introduces the initial scaffolding for the Qualcomm DSP
accelerator (QDA) driver under drivers/accel/.
The new Kconfig option DRM_ACCEL_QDA integrates the driver with the
DRM/accel subsystem, and the accel Makefile is updated to build the
driver as a loadable module. A minimal qda_drv.c file is added to
provide basic module_init/module_exit hooks so that the driver can be
built and loaded.

Subsequent patches will add:

- RPMSG-based communication with Qualcomm Hexagon DSPs
- FastRPC integration for userspace offload
- DMA-BUF support and memory management
- GEM, PRIME and IOCTL interfaces for compute job submission

This patch only wires up the basic driver framework and does not yet
provide functional DSP offload capabilities.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/accel/Kconfig       |  1 +
 drivers/accel/Makefile      |  1 +
 drivers/accel/qda/Kconfig   | 29 +++++++++++++++++++++++++++++
 drivers/accel/qda/Makefile  |  8 ++++++++
 drivers/accel/qda/qda_drv.c | 22 ++++++++++++++++++++++
 5 files changed, 61 insertions(+)

diff --git a/drivers/accel/Kconfig b/drivers/accel/Kconfig
index bdf48ccafcf2..74ac0f71bc9d 100644
--- a/drivers/accel/Kconfig
+++ b/drivers/accel/Kconfig
@@ -29,6 +29,7 @@ source "drivers/accel/ethosu/Kconfig"
 source "drivers/accel/habanalabs/Kconfig"
 source "drivers/accel/ivpu/Kconfig"
 source "drivers/accel/qaic/Kconfig"
+source "drivers/accel/qda/Kconfig"
 source "drivers/accel/rocket/Kconfig"
 
 endif
diff --git a/drivers/accel/Makefile b/drivers/accel/Makefile
index 1d3a7251b950..58c08dd5f389 100644
--- a/drivers/accel/Makefile
+++ b/drivers/accel/Makefile
@@ -5,4 +5,5 @@ obj-$(CONFIG_DRM_ACCEL_ARM_ETHOSU)	+= ethosu/
 obj-$(CONFIG_DRM_ACCEL_HABANALABS)	+= habanalabs/
 obj-$(CONFIG_DRM_ACCEL_IVPU)		+= ivpu/
 obj-$(CONFIG_DRM_ACCEL_QAIC)		+= qaic/
+obj-$(CONFIG_DRM_ACCEL_QDA)		+= qda/
 obj-$(CONFIG_DRM_ACCEL_ROCKET)		+= rocket/
\ No newline at end of file
diff --git a/drivers/accel/qda/Kconfig b/drivers/accel/qda/Kconfig
new file mode 100644
index 000000000000..3c78ff6189e0
--- /dev/null
+++ b/drivers/accel/qda/Kconfig
@@ -0,0 +1,29 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Qualcomm DSP accelerator driver
+#
+
+config DRM_ACCEL_QDA
+	tristate "Qualcomm DSP accelerator"
+	depends on DRM_ACCEL
+	depends on ARCH_QCOM || COMPILE_TEST
+	help
+	  Enables the DRM-based accelerator driver for Qualcomm's Hexagon DSPs.
+	  This driver provides a standardized interface for offloading computational
+	  tasks to the DSP, including audio processing, sensor offload, computer
+	  vision, and AI inference workloads.
+
+	  The driver supports all DSP domains (ADSP, CDSP, SDSP, GDSP) and
+	  implements the FastRPC protocol for communication between the application
+	  processor and DSP. It integrates with the Linux kernel's Compute
+	  Accelerators subsystem (drivers/accel/) and provides a modern alternative
+	  to the legacy FastRPC driver found in drivers/misc/.
+
+	  Key features include DMA-BUF interoperability for seamless buffer sharing
+	  with other multimedia subsystems, IOMMU-based memory isolation, and
+	  standard DRM IOCTLs for device management and job submission.
+
+	  If unsure, say N.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called qda.
diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
new file mode 100644
index 000000000000..573711af1d28
--- /dev/null
+++ b/drivers/accel/qda/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Makefile for Qualcomm DSP accelerator driver
+#
+
+obj-$(CONFIG_DRM_ACCEL_QDA)	:= qda.o
+
+qda-y := qda_drv.o
diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
new file mode 100644
index 000000000000..18b0d3fb1598
--- /dev/null
+++ b/drivers/accel/qda/qda_drv.c
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+#include <linux/module.h>
+#include <linux/kernel.h>
+
+static int __init qda_core_init(void)
+{
+	pr_info("QDA: driver initialization complete\n");
+	return 0;
+}
+
+static void __exit qda_core_exit(void)
+{
+	pr_info("QDA: driver exit complete\n");
+}
+
+module_init(qda_core_init);
+module_exit(qda_core_exit);
+
+MODULE_AUTHOR("Qualcomm AI Infra Team");
+MODULE_DESCRIPTION("Qualcomm DSP Accelerator Driver");
+MODULE_LICENSE("GPL");

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
