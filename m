Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFaQH3QT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:51:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 347EB41209D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:50:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED78944B2B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:50:58 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lists.linaro.org (Postfix) with ESMTPS id D70684047C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=m7wH2lTr;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=HLikJhQJ;
	spf=pass (lists.linaro.org: domain of ekansh.gupta@oss.qualcomm.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=ekansh.gupta@oss.qualcomm.com;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NHxDpP322200
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cJ0oJqnbxwoxgHJVLtPPhyhuNFvTLFXLHOGqp8GIsxk=; b=m7wH2lTrbckyyAoH
	Nq0YgUrLHzRpU0f75e++hvwWcg9D/K/6fCSJP00SPtZZ8W5UHstqCNf11HNUsD30
	7nRwYxUv7bSMcvbUjpe0Zaq+1cv650nIJtRQ8duA9LojrHVLgp+IQ9+8PtFKlSnW
	GpQ04ITdzq9W6yvDUUWEFtuc+JuxCz7Gl6zcRERzlYtt899rtAwXc21vyQ+d79E8
	dC6+dCgc+WDc3xPJ5cY8CSfV6sfMO4NTFfEG/y7WjaSoWEuV517kUo0le0Konli0
	a3Ds8fp5jJNkxAd9zD6VG0iFV4s9HKr2bb03+xQAYduExkf4NHC983wP6oIiHbyD
	aCl38Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8y1m82-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 19:10:56 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a90510a6d1so41153315ad.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 11:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771873855; x=1772478655; darn=lists.linaro.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cJ0oJqnbxwoxgHJVLtPPhyhuNFvTLFXLHOGqp8GIsxk=;
        b=HLikJhQJon2wkUh088fRfpeIh7NWns/WvEzMr78qVxmJhJstDJHlh1ISUUF4muMUxD
         ZDNXR2UAOCN3YiPB3AtrNe+tuyyeENSzUkf73Jro5qef0Y1ELuy3hvg1F4yN6lkbsy5F
         YivWlSpiQZlJ7QYJwMrSWg9ZXbTE8rbi8IcSXZpq9vCFAeh0bc/0VmWcTWcRCz/xQa0+
         W21HZE7U+Ivi1Gm7IDpSmN8PcwIuz6IxArXHMDNFbBlJZY796HYT6/dTNuRoUHiVnu6F
         Xzy0AbOvdwZuFSjAEpTGf46tpkpQEN1UamM8MMLIS+BxF5K2QPCyuLVXgKZNzC1Iy/+U
         R6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771873855; x=1772478655;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cJ0oJqnbxwoxgHJVLtPPhyhuNFvTLFXLHOGqp8GIsxk=;
        b=lNZlatXgSYUHemigUZ1iDa2HmIjXZ5iDkNRyWxTd7VCzkjWqHG5bswn8SVh3Y4JM7x
         sIsvdrTbBV+Aol3UOJ6IyrLioI4jlgpiLjHTW2EegGO+bFhYS01yZ9Sx+VaJ68deJSMR
         iWDSbT0p+k+8AsB9htpkzQMm+K1EWdF94ueVuf1gJldf0WFyh4LpiiJA9NkMIGb9rMc+
         gLE3+smA9IC6ycb4qzLzdQR9WqmnmympbmB/JkMN7jWT4fr3BnrVuFK3++CYqTuKC0Gd
         CDhOEluyebGLQTyQe67bWlhN77HkVL0SJPaxurD5DOynsxt0XLndxOHvNf/TJFsJa0dn
         Ze/g==
X-Forwarded-Encrypted: i=1; AJvYcCVsP8WUH0eGUr27Dk0itoZHDHCDk9o+ZANPBp38VX29NWwjgX0+QzPunMDDtwpy9rIcFX3MYENWAA6M5D5j@lists.linaro.org
X-Gm-Message-State: AOJu0Yxyi+O+64ynun7DaWpAsNjqq+j9opE6sGCbqipQEEpWqCy1wG+o
	iV/JPH3CxqbTqP/kOLnvFF7IsK2Qf0zFulwWMOlsPF0fBV0x3gK865+ix1y1ZQ1AF4OMDyHuJt2
	1ONOOfROKdsSqNRQ8gnn80jlH1HI7S+Xn0BqtGco2ctOU6Ih3TfJ4VAxSw1k2HXXDniOJ9Q==
X-Gm-Gg: ATEYQzxdyHnUoWBBMZBIQYxZMCJHsGWQ2t+pUnJOepTwutgaQZNjiSqvGIQd2AU8BKq
	Af6sWjwIwq4jGTzv3PHZyUzHlo+l6XPXqdnJ+SqEDNEXGwa/+gzNmCBT/BtivVwpNUZnrEy7AAf
	C1ppARS6nt2I10BH2EuMdzkTHm5NorqQ/fccBOoQ0YUoApCjUAv/FDGcG/jSIeOh+IYeSmadGEN
	pbvkDHsCMAK+F97oF8wJCYalTdg9dyvy7eqy5W+y79wP7JF9sSTJaB66A/a8T2k0gg3uSJ7R2ZQ
	1sFvYQBnRVyMIseQRQN4I/fe3RLIY99Ib2Az6eV7V0dFlnEtdC+p1Dx5ju9REFVBZ54a9TKZZOB
	BW5gq/CYzXgZSHyoAna6scNSeGRIjJVHxrqn82M/hIK8AgCFxxnxgwQ==
X-Received: by 2002:a17:902:e851:b0:2aa:e238:e20c with SMTP id d9443c01a7336-2ad742acbf0mr84551525ad.19.1771873851723;
        Mon, 23 Feb 2026 11:10:51 -0800 (PST)
X-Received: by 2002:a17:902:e851:b0:2aa:e238:e20c with SMTP id d9443c01a7336-2ad742acbf0mr84551275ad.19.1771873851123;
        Mon, 23 Feb 2026 11:10:51 -0800 (PST)
Received: from hu-ekangupt-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e34e18sm83501505ad.10.2026.02.23.11.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:10:50 -0800 (PST)
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 00:39:06 +0530
MIME-Version: 1.0
Message-Id: <20260224-qda-firstpost-v1-12-fe46a9c1a046@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771873753; l=21201;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=7mQ77ZyIRIZpix+MEkpRhzH3l7JakwhyX4cr6888lx8=;
 b=kvlxSsSTu5ZFmzliiB7GHjfovysmfYNJDznymXxqrq4DKVH4R7zB3Cd4/b/ittKmcGlRKuQuV
 gyFRiLS4ygnDvG4K6x8v13GqxZIcQ/jiEPHYypkTCOfQsqiHh7x6/CX
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2NiBTYWx0ZWRfX/HCvO9IFQNWc
 Lu5FsEqJ5WUEDkOdWWgzzIlEIlN/33QN5u0G6Q4WKtcDCKloZ9DjvjlmZVy3LVz4hNSQURKQPw7
 C/h2JBSbpNKyrNB/eJC9Ru2CEGeqkWr7sWJRnNCJQdxfM+2YblYPQXZUUttMkfQ9alTihpO43lW
 9s6QOirMXqa8GJO/BKNcxXaDFgT3UFB01Fi5uDDP6PMgZDsvqpTBS7oV59oWUTYhswhcMmhYOzU
 Q4cDLYT7u+dTOknWMUBDctbRpO0DPatbDn14em6Ffvbws0Dm8ShbxNqgjMctrXnt1wUZ9Yr5Hb+
 de945LKzEBuLS2uVQ6kz/TDtXcL3brOphLftzBk+ELqSQOa/z+v3IMrrUykOy85ezzjTKwfUoDy
 /422MEiJ8aGK0DdS480sCP+lTdOoq0KXaDf3X5pF14cxfgj7B4JMVmOcIommMFFlXmND7UpvQR0
 0SNm14MXsHIIU/TtMgA==
X-Authority-Analysis: v=2.4 cv=edYwvrEH c=1 sm=1 tr=0 ts=699ca640 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=8l03lAX63Vq187oFkXoA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 90agL8tFIXC_Sjcw_f0TULyF60NWKpyf
X-Proofpoint-ORIG-GUID: 90agL8tFIXC_Sjcw_f0TULyF60NWKpyf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230166
X-Spamd-Bar: ----
X-MailFrom: ekansh.gupta@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RY55EAU7ENI3YBN3CSRUDIHN446ALOS7
X-Message-ID-Hash: RY55EAU7ENI3YBN3CSRUDIHN446ALOS7
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:45 +0000
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 12/18] accel/qda: Add PRIME dma-buf import support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RY55EAU7ENI3YBN3CSRUDIHN446ALOS7/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,oss.qualcomm.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 347EB41209D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add PRIME dma-buf import support for QDA GEM buffer objects and integrate
it with the existing per-process memory manager and IOMMU device model.

The implementation extends qda_gem_obj to represent imported dma-bufs,
including dma_buf references, attachment state, scatter-gather tables
and an imported DMA address used for DSP-facing book-keeping. The
qda_gem_prime_import() path handles reimports of buffers originally
exported by QDA as well as imports of external dma-bufs, attaching them
to the assigned IOMMU device and mapping them through the memory manager
for DSP access. The GEM free path is updated to unmap and detach
imported buffers while preserving the existing behaviour for locally
allocated memory.

The PRIME fd-to-handle path is implemented in qda_prime_fd_to_handle(),
which records the calling drm_file in a driver-private import context
before invoking the core DRM helpers. The GEM import callback retrieves
this context to ensure that an IOMMU device is assigned to the process
and that imported buffers follow the same per-process IOMMU selection
rules as natively allocated GEM objects.

This patch prepares the driver for interoperable buffer sharing between
QDA and other dma-buf capable subsystems while keeping IOMMU mapping and
lifetime handling consistent with the existing GEM allocation flow.

Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/accel/qda/Makefile             |   1 +
 drivers/accel/qda/qda_drv.c            |   8 ++
 drivers/accel/qda/qda_drv.h            |   4 +
 drivers/accel/qda/qda_gem.c            |  60 +++++++---
 drivers/accel/qda/qda_gem.h            |  10 ++
 drivers/accel/qda/qda_ioctl.c          |   7 ++
 drivers/accel/qda/qda_ioctl.h          |  15 +++
 drivers/accel/qda/qda_memory_manager.c |  42 ++++++-
 drivers/accel/qda/qda_memory_manager.h |  14 +++
 drivers/accel/qda/qda_prime.c          | 194 +++++++++++++++++++++++++++++++++
 drivers/accel/qda/qda_prime.h          |  43 ++++++++
 11 files changed, 377 insertions(+), 21 deletions(-)

diff --git a/drivers/accel/qda/Makefile b/drivers/accel/qda/Makefile
index 88c324fa382c..8286f5279748 100644
--- a/drivers/accel/qda/Makefile
+++ b/drivers/accel/qda/Makefile
@@ -13,5 +13,6 @@ qda-y := \
 	qda_ioctl.o \
 	qda_gem.o \
 	qda_memory_dma.o \
+	qda_prime.o \
 
 obj-$(CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS) += qda_compute_bus.o
diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
index 0dd0e2bb2c0f..4adee00b1f2c 100644
--- a/drivers/accel/qda/qda_drv.c
+++ b/drivers/accel/qda/qda_drv.c
@@ -10,9 +10,11 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_ioctl.h>
 #include <drm/qda_accel.h>
+#include <drm/drm_prime.h>
 
 #include "qda_drv.h"
 #include "qda_gem.h"
+#include "qda_prime.h"
 #include "qda_ioctl.h"
 #include "qda_rpmsg.h"
 
@@ -166,6 +168,8 @@ static struct drm_driver qda_drm_driver = {
 	.postclose		= qda_postclose,
 	.ioctls = qda_ioctls,
 	.num_ioctls = ARRAY_SIZE(qda_ioctls),
+	.gem_prime_import = qda_gem_prime_import,
+	.prime_fd_to_handle = qda_ioctl_prime_fd_to_handle,
 	.name = DRIVER_NAME,
 	.desc = "Qualcomm DSP Accelerator Driver",
 };
@@ -174,6 +178,7 @@ static void cleanup_drm_private(struct qda_dev *qdev)
 {
 	if (qdev->drm_priv) {
 		qda_dbg(qdev, "Cleaning up DRM private data\n");
+		mutex_destroy(&qdev->drm_priv->import_lock);
 		kfree(qdev->drm_priv);
 	}
 }
@@ -240,6 +245,9 @@ static int init_drm_private(struct qda_dev *qdev)
 	if (!qdev->drm_priv)
 		return -ENOMEM;
 
+	mutex_init(&qdev->drm_priv->import_lock);
+	qdev->drm_priv->current_import_file_priv = NULL;
+
 	qda_dbg(qdev, "DRM private data initialized successfully\n");
 	return 0;
 }
diff --git a/drivers/accel/qda/qda_drv.h b/drivers/accel/qda/qda_drv.h
index 8a2cd474958b..bb0dd7e284c6 100644
--- a/drivers/accel/qda/qda_drv.h
+++ b/drivers/accel/qda/qda_drv.h
@@ -64,6 +64,10 @@ struct qda_drm_priv {
 	struct qda_memory_manager *iommu_mgr;
 	/* Back-pointer to qda_dev */
 	struct qda_dev *qdev;
+	/* Lock protecting import context */
+	struct mutex import_lock;
+	/* Current file_priv during prime import */
+	struct drm_file *current_import_file_priv;
 };
 
 /* struct qda_dev - Main device structure for QDA driver */
diff --git a/drivers/accel/qda/qda_gem.c b/drivers/accel/qda/qda_gem.c
index bbd54e2502d3..37279e8b46fe 100644
--- a/drivers/accel/qda/qda_gem.c
+++ b/drivers/accel/qda/qda_gem.c
@@ -8,6 +8,7 @@
 #include "qda_gem.h"
 #include "qda_memory_manager.h"
 #include "qda_memory_dma.h"
+#include "qda_prime.h"
 
 static int validate_gem_obj_for_mmap(struct qda_gem_obj *qda_gem_obj)
 {
@@ -15,23 +16,29 @@ static int validate_gem_obj_for_mmap(struct qda_gem_obj *qda_gem_obj)
 		qda_err(NULL, "Invalid GEM object size\n");
 		return -EINVAL;
 	}
-	if (!qda_gem_obj->iommu_dev || !qda_gem_obj->iommu_dev->dev) {
-		qda_err(NULL, "Allocated buffer missing IOMMU device\n");
-		return -EINVAL;
-	}
-	if (!qda_gem_obj->iommu_dev->dev) {
-		qda_err(NULL, "Allocated buffer missing IOMMU device\n");
-		return -EINVAL;
-	}
-	if (!qda_gem_obj->virt) {
-		qda_err(NULL, "Allocated buffer missing virtual address\n");
-		return -EINVAL;
-	}
-	if (qda_gem_obj->dma_addr == 0) {
-		qda_err(NULL, "Allocated buffer missing DMA address\n");
-		return -EINVAL;
+	if (qda_gem_obj->is_imported) {
+		if (!qda_gem_obj->sgt) {
+			qda_err(NULL, "Imported buffer missing sgt\n");
+			return -EINVAL;
+		}
+		if (!qda_gem_obj->iommu_dev || !qda_gem_obj->iommu_dev->dev) {
+			qda_err(NULL, "Imported buffer missing IOMMU device\n");
+			return -EINVAL;
+		}
+	} else {
+		if (!qda_gem_obj->iommu_dev || !qda_gem_obj->iommu_dev->dev) {
+			qda_err(NULL, "Allocated buffer missing IOMMU device\n");
+			return -EINVAL;
+		}
+		if (!qda_gem_obj->virt) {
+			qda_err(NULL, "Allocated buffer missing virtual address\n");
+			return -EINVAL;
+		}
+		if (qda_gem_obj->dma_addr == 0) {
+			qda_err(NULL, "Allocated buffer missing DMA address\n");
+			return -EINVAL;
+		}
 	}
-
 	return 0;
 }
 
@@ -60,9 +67,21 @@ void qda_gem_free_object(struct drm_gem_object *gem_obj)
 	struct qda_gem_obj *qda_gem_obj = to_qda_gem_obj(gem_obj);
 	struct qda_drm_priv *drm_priv = get_drm_priv_from_device(gem_obj->dev);
 
-	if (qda_gem_obj->virt) {
-		if (drm_priv && drm_priv->iommu_mgr)
+	if (qda_gem_obj->is_imported) {
+		if (qda_gem_obj->attachment && qda_gem_obj->sgt)
+			dma_buf_unmap_attachment_unlocked(qda_gem_obj->attachment,
+							  qda_gem_obj->sgt, DMA_BIDIRECTIONAL);
+		if (qda_gem_obj->attachment)
+			dma_buf_detach(qda_gem_obj->dma_buf, qda_gem_obj->attachment);
+		if (qda_gem_obj->dma_buf)
+			dma_buf_put(qda_gem_obj->dma_buf);
+		if (qda_gem_obj->iommu_dev && drm_priv && drm_priv->iommu_mgr)
 			qda_memory_manager_free(drm_priv->iommu_mgr, qda_gem_obj);
+	} else {
+		if (qda_gem_obj->virt) {
+			if (drm_priv && drm_priv->iommu_mgr)
+				qda_memory_manager_free(drm_priv->iommu_mgr, qda_gem_obj);
+		}
 	}
 
 	drm_gem_object_release(gem_obj);
@@ -174,6 +193,11 @@ struct drm_gem_object *qda_gem_create_object(struct drm_device *drm_dev,
 	qda_gem_obj = qda_gem_alloc_object(drm_dev, aligned_size);
 	if (IS_ERR(qda_gem_obj))
 		return (struct drm_gem_object *)qda_gem_obj;
+	qda_gem_obj->is_imported = false;
+	qda_gem_obj->dma_buf = NULL;
+	qda_gem_obj->attachment = NULL;
+	qda_gem_obj->sgt = NULL;
+	qda_gem_obj->imported_dma_addr = 0;
 
 	ret = qda_memory_manager_alloc(iommu_mgr, qda_gem_obj, file_priv);
 	if (ret) {
diff --git a/drivers/accel/qda/qda_gem.h b/drivers/accel/qda/qda_gem.h
index cbd5d0a58fa4..3566c5b2ad88 100644
--- a/drivers/accel/qda/qda_gem.h
+++ b/drivers/accel/qda/qda_gem.h
@@ -31,6 +31,16 @@ struct qda_gem_obj {
 	size_t size;
 	/* IOMMU device that performed the allocation */
 	struct qda_iommu_device *iommu_dev;
+	/* True if buffer is imported, false if allocated */
+	bool is_imported;
+	/* Reference to imported dma_buf */
+	struct dma_buf *dma_buf;
+	/* DMA buf attachment */
+	struct dma_buf_attachment *attachment;
+	/* Scatter-gather table */
+	struct sg_table *sgt;
+	/* DMA address of imported buffer */
+	dma_addr_t imported_dma_addr;
 };
 
 /*
diff --git a/drivers/accel/qda/qda_ioctl.c b/drivers/accel/qda/qda_ioctl.c
index ef3c9c691cb7..d91983048d6c 100644
--- a/drivers/accel/qda/qda_ioctl.c
+++ b/drivers/accel/qda/qda_ioctl.c
@@ -5,6 +5,7 @@
 #include <drm/qda_accel.h>
 #include "qda_drv.h"
 #include "qda_ioctl.h"
+#include "qda_prime.h"
 
 static int qda_validate_and_get_context(struct drm_device *dev, struct drm_file *file_priv,
 					struct qda_dev **qdev, struct qda_user **qda_user)
@@ -78,3 +79,9 @@ int qda_ioctl_gem_mmap_offset(struct drm_device *dev, void *data, struct drm_fil
 	drm_gem_object_put(gem_obj);
 	return ret;
 }
+
+int qda_ioctl_prime_fd_to_handle(struct drm_device *dev, struct drm_file *file_priv, int prime_fd,
+				 u32 *handle)
+{
+	return qda_prime_fd_to_handle(dev, file_priv, prime_fd, handle);
+}
diff --git a/drivers/accel/qda/qda_ioctl.h b/drivers/accel/qda/qda_ioctl.h
index 6bf3bcd28c0e..d454256f5fc5 100644
--- a/drivers/accel/qda/qda_ioctl.h
+++ b/drivers/accel/qda/qda_ioctl.h
@@ -23,4 +23,19 @@
  */
 int qda_ioctl_query(struct drm_device *dev, void *data, struct drm_file *file_priv);
 
+/**
+ * qda_ioctl_prime_fd_to_handle - IOCTL handler for PRIME FD to handle conversion
+ * @dev: DRM device structure
+ * @file_priv: DRM file private data
+ * @prime_fd: File descriptor of the PRIME buffer
+ * @handle: Output parameter for the GEM handle
+ *
+ * This IOCTL handler converts a PRIME file descriptor to a GEM handle.
+ * It serves as both the DRM driver callback and can be used directly.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int qda_ioctl_prime_fd_to_handle(struct drm_device *dev, struct drm_file *file_priv,
+				 int prime_fd, u32 *handle);
+
 #endif /* _QDA_IOCTL_H */
diff --git a/drivers/accel/qda/qda_memory_manager.c b/drivers/accel/qda/qda_memory_manager.c
index e225667557ee..3fd20f17c57b 100644
--- a/drivers/accel/qda/qda_memory_manager.c
+++ b/drivers/accel/qda/qda_memory_manager.c
@@ -154,8 +154,8 @@ static struct qda_iommu_device *get_process_iommu_device(struct qda_memory_manag
 	return qda_priv->assigned_iommu_dev;
 }
 
-static int qda_memory_manager_assign_device(struct qda_memory_manager *mem_mgr,
-					    struct drm_file *file_priv)
+int qda_memory_manager_assign_device(struct qda_memory_manager *mem_mgr,
+				     struct drm_file *file_priv)
 {
 	struct qda_file_priv *qda_priv;
 	struct qda_iommu_device *selected_dev = NULL;
@@ -223,6 +223,35 @@ static struct qda_iommu_device *get_or_assign_iommu_device(struct qda_memory_man
 	return NULL;
 }
 
+static int qda_memory_manager_map_imported(struct qda_memory_manager *mem_mgr,
+					   struct qda_gem_obj *gem_obj,
+					   struct qda_iommu_device *iommu_dev)
+{
+	struct scatterlist *sg;
+	dma_addr_t dma_addr;
+	int ret = 0;
+
+	if (!gem_obj->is_imported || !gem_obj->sgt || !iommu_dev) {
+		qda_err(NULL, "Invalid parameters for imported buffer mapping\n");
+		return -EINVAL;
+	}
+
+	gem_obj->iommu_dev = iommu_dev;
+
+	sg = gem_obj->sgt->sgl;
+	if (sg) {
+		dma_addr = sg_dma_address(sg);
+		dma_addr += ((u64)iommu_dev->sid << 32);
+
+		gem_obj->imported_dma_addr = dma_addr;
+	} else {
+		qda_err(NULL, "Invalid scatter-gather list for imported buffer\n");
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
 int qda_memory_manager_alloc(struct qda_memory_manager *mem_mgr, struct qda_gem_obj *gem_obj,
 			     struct drm_file *file_priv)
 {
@@ -248,7 +277,10 @@ int qda_memory_manager_alloc(struct qda_memory_manager *mem_mgr, struct qda_gem_
 		return -ENOMEM;
 	}
 
-	ret = qda_dma_alloc(selected_dev, gem_obj, size);
+	if (gem_obj->is_imported)
+		ret = qda_memory_manager_map_imported(mem_mgr, gem_obj, selected_dev);
+	else
+		ret = qda_dma_alloc(selected_dev, gem_obj, size);
 
 	if (ret) {
 		qda_err(NULL, "Allocation failed: size=%zu, device_id=%u, ret=%d\n",
@@ -268,6 +300,10 @@ void qda_memory_manager_free(struct qda_memory_manager *mem_mgr, struct qda_gem_
 		return;
 	}
 
+	if (gem_obj->is_imported) {
+		qda_dbg(NULL, "Freed imported buffer tracking (no DMA free needed)\n");
+		return;
+	}
 	qda_dma_free(gem_obj);
 }
 
diff --git a/drivers/accel/qda/qda_memory_manager.h b/drivers/accel/qda/qda_memory_manager.h
index bac44284ef98..f6c7963cec42 100644
--- a/drivers/accel/qda/qda_memory_manager.h
+++ b/drivers/accel/qda/qda_memory_manager.h
@@ -106,6 +106,20 @@ int qda_memory_manager_register_device(struct qda_memory_manager *mem_mgr,
 void qda_memory_manager_unregister_device(struct qda_memory_manager *mem_mgr,
 					  struct qda_iommu_device *iommu_dev);
 
+/**
+ * qda_memory_manager_assign_device() - Assign an IOMMU device to a process
+ * @mem_mgr: Pointer to memory manager
+ * @file_priv: DRM file private data for process association
+ *
+ * Assigns an IOMMU device to the calling process. If the process already has
+ * a device assigned, returns success. If another file descriptor from the same
+ * PID has a device, reuses it. Otherwise, finds an available device and assigns it.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int qda_memory_manager_assign_device(struct qda_memory_manager *mem_mgr,
+				     struct drm_file *file_priv);
+
 /**
  * qda_memory_manager_alloc() - Allocate memory for a GEM object
  * @mem_mgr: Pointer to memory manager
diff --git a/drivers/accel/qda/qda_prime.c b/drivers/accel/qda/qda_prime.c
new file mode 100644
index 000000000000..3d23842e48bb
--- /dev/null
+++ b/drivers/accel/qda/qda_prime.c
@@ -0,0 +1,194 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+#include <drm/drm_gem.h>
+#include <drm/drm_prime.h>
+#include <linux/slab.h>
+#include <linux/dma-mapping.h>
+#include "qda_drv.h"
+#include "qda_gem.h"
+#include "qda_prime.h"
+#include "qda_memory_manager.h"
+
+static struct drm_gem_object *check_own_buffer(struct drm_device *dev, struct dma_buf *dma_buf)
+{
+	if (dma_buf->priv) {
+		struct drm_gem_object *existing_gem = dma_buf->priv;
+
+		if (existing_gem->dev == dev) {
+			struct qda_gem_obj *existing_qda_gem = to_qda_gem_obj(existing_gem);
+
+			if (!existing_qda_gem->is_imported) {
+				drm_gem_object_get(existing_gem);
+				return existing_gem;
+			}
+		}
+	}
+	return NULL;
+}
+
+static struct qda_iommu_device *get_iommu_device_for_import(struct qda_drm_priv *drm_priv,
+							    struct drm_file **file_priv_out,
+							    struct qda_dev *qdev)
+{
+	struct drm_file *file_priv;
+	struct qda_file_priv *qda_file_priv;
+	struct qda_iommu_device *iommu_dev = NULL;
+	int ret;
+
+	file_priv = drm_priv->current_import_file_priv;
+	*file_priv_out = file_priv;
+
+	if (!file_priv || !file_priv->driver_priv)
+		return NULL;
+
+	qda_file_priv = (struct qda_file_priv *)file_priv->driver_priv;
+	iommu_dev = qda_file_priv->assigned_iommu_dev;
+
+	if (!iommu_dev) {
+		ret = qda_memory_manager_assign_device(drm_priv->iommu_mgr, file_priv);
+		if (ret) {
+			qda_err(qdev, "Failed to assign IOMMU device: %d\n", ret);
+			return NULL;
+		}
+
+		iommu_dev = qda_file_priv->assigned_iommu_dev;
+	}
+
+	return iommu_dev;
+}
+
+static int setup_dma_buf_mapping(struct qda_gem_obj *qda_gem_obj, struct dma_buf *dma_buf,
+				 struct device *attach_dev, struct qda_dev *qdev)
+{
+	struct dma_buf_attachment *attachment;
+	struct sg_table *sgt;
+	int ret;
+
+	attachment = dma_buf_attach(dma_buf, attach_dev);
+	if (IS_ERR(attachment)) {
+		ret = PTR_ERR(attachment);
+		qda_err(qdev, "Failed to attach dma_buf: %d\n", ret);
+		return ret;
+	}
+	qda_gem_obj->attachment = attachment;
+
+	sgt = dma_buf_map_attachment_unlocked(attachment, DMA_BIDIRECTIONAL);
+	if (IS_ERR(sgt)) {
+		ret = PTR_ERR(sgt);
+		qda_err(qdev, "Failed to map dma_buf attachment: %d\n", ret);
+		dma_buf_detach(dma_buf, attachment);
+		return ret;
+	}
+	qda_gem_obj->sgt = sgt;
+
+	return 0;
+}
+
+struct drm_gem_object *qda_gem_prime_import(struct drm_device *dev, struct dma_buf *dma_buf)
+{
+	struct qda_drm_priv *drm_priv;
+	struct qda_gem_obj *qda_gem_obj;
+	struct drm_file *file_priv;
+	struct qda_iommu_device *iommu_dev;
+	struct qda_dev *qdev;
+	struct drm_gem_object *existing_gem;
+	size_t aligned_size;
+	int ret;
+
+	drm_priv = get_drm_priv_from_device(dev);
+	if (!drm_priv || !drm_priv->iommu_mgr) {
+		qda_err(NULL, "Invalid drm_priv or iommu_mgr\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	qdev = drm_priv->qdev;
+
+	existing_gem = check_own_buffer(dev, dma_buf);
+	if (existing_gem)
+		return existing_gem;
+
+	iommu_dev = get_iommu_device_for_import(drm_priv, &file_priv, qdev);
+	if (!iommu_dev || !iommu_dev->dev) {
+		qda_err(qdev, "No IOMMU device assigned for prime import\n");
+		return ERR_PTR(-ENODEV);
+	}
+
+	qda_dbg(qdev, "Using IOMMU device %u for prime import\n", iommu_dev->id);
+
+	aligned_size = PAGE_ALIGN(dma_buf->size);
+	qda_gem_obj = qda_gem_alloc_object(dev, aligned_size);
+	if (IS_ERR(qda_gem_obj))
+		return (struct drm_gem_object *)qda_gem_obj;
+
+	qda_gem_obj->is_imported = true;
+	qda_gem_obj->dma_buf = dma_buf;
+	qda_gem_obj->virt = NULL;
+	qda_gem_obj->dma_addr = 0;
+	qda_gem_obj->imported_dma_addr = 0;
+	qda_gem_obj->iommu_dev = iommu_dev;
+
+	get_dma_buf(dma_buf);
+
+	ret = setup_dma_buf_mapping(qda_gem_obj, dma_buf, iommu_dev->dev, qdev);
+	if (ret)
+		goto err_put_dma_buf;
+
+	ret = qda_memory_manager_alloc(drm_priv->iommu_mgr, qda_gem_obj, file_priv);
+	if (ret) {
+		qda_err(qdev, "Failed to allocate IOMMU mapping: %d\n", ret);
+		goto err_unmap;
+	}
+
+	qda_dbg(qdev, "Prime import completed successfully size=%zu\n", aligned_size);
+	return &qda_gem_obj->base;
+
+err_unmap:
+	dma_buf_unmap_attachment_unlocked(qda_gem_obj->attachment,
+					  qda_gem_obj->sgt, DMA_BIDIRECTIONAL);
+	dma_buf_detach(dma_buf, qda_gem_obj->attachment);
+err_put_dma_buf:
+	dma_buf_put(dma_buf);
+	qda_gem_cleanup_object(qda_gem_obj);
+	return ERR_PTR(ret);
+}
+
+int qda_prime_fd_to_handle(struct drm_device *dev, struct drm_file *file_priv,
+			   int prime_fd, u32 *handle)
+{
+	struct qda_drm_priv *drm_priv;
+	struct qda_dev *qdev;
+	int ret;
+
+	drm_priv = get_drm_priv_from_device(dev);
+	if (!drm_priv) {
+		qda_dbg(NULL, "Failed to get drm_priv from device\n");
+		return -EINVAL;
+	}
+
+	qdev = drm_priv->qdev;
+
+	if (file_priv && file_priv->driver_priv) {
+		struct qda_file_priv *qda_file_priv;
+
+		qda_file_priv = (struct qda_file_priv *)file_priv->driver_priv;
+	} else {
+		qda_dbg(qdev, "Called with NULL file_priv or driver_priv\n");
+	}
+
+	mutex_lock(&drm_priv->import_lock);
+	drm_priv->current_import_file_priv = file_priv;
+
+	ret = drm_gem_prime_fd_to_handle(dev, file_priv, prime_fd, handle);
+
+	drm_priv->current_import_file_priv = NULL;
+	mutex_unlock(&drm_priv->import_lock);
+
+	if (!ret)
+		qda_dbg(qdev, "Completed with ret=%d, handle=%u\n", ret, *handle);
+	else
+		qda_dbg(qdev, "Completed with ret=%d\n", ret);
+
+	return ret;
+}
+
+MODULE_IMPORT_NS("DMA_BUF");
diff --git a/drivers/accel/qda/qda_prime.h b/drivers/accel/qda/qda_prime.h
new file mode 100644
index 000000000000..939902454dcd
--- /dev/null
+++ b/drivers/accel/qda/qda_prime.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _QDA_PRIME_H
+#define _QDA_PRIME_H
+
+#include <drm/drm_device.h>
+#include <drm/drm_file.h>
+#include <drm/drm_gem.h>
+#include <linux/dma-buf.h>
+
+/**
+ * qda_gem_prime_import - Import a DMA-BUF as a GEM object
+ * @dev: DRM device structure
+ * @dma_buf: DMA-BUF to import
+ *
+ * This function imports an external DMA-BUF into the QDA driver as a GEM
+ * object. It handles both re-imports of buffers originally from this driver
+ * and imports of external buffers from other drivers.
+ *
+ * Return: Pointer to the imported GEM object on success, ERR_PTR on failure
+ */
+struct drm_gem_object *qda_gem_prime_import(struct drm_device *dev, struct dma_buf *dma_buf);
+
+/**
+ * qda_prime_fd_to_handle - Core implementation for PRIME FD to GEM handle conversion
+ * @dev: DRM device structure
+ * @file_priv: DRM file private data
+ * @prime_fd: File descriptor of the PRIME buffer
+ * @handle: Output parameter for the GEM handle
+ *
+ * This core function sets up the necessary context before calling the
+ * DRM framework's prime FD to handle conversion. It ensures proper IOMMU
+ * device assignment and tracking for the import operation.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int qda_prime_fd_to_handle(struct drm_device *dev, struct drm_file *file_priv,
+			   int prime_fd, u32 *handle);
+
+#endif /* _QDA_PRIME_H */

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
