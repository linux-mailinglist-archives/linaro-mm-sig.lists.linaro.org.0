Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OP0nMSRwVmpF5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:21:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 662E07575A7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:21:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=qualcomm.com header.s=qcppdkim1 header.b=oVQnNPb9;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=qualcomm.com (policy=reject)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C1AF40A3F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:21:39 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lists.linaro.org (Postfix) with ESMTPS id 733AE4015A
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 Jul 2026 13:46:31 +0000 (UTC)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6651sWYL271623
	for <linaro-mm-sig@lists.linaro.org>; Sun, 5 Jul 2026 13:46:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=F8RSssedjjcA0BbJ/AkIl+cH9if7eTgYDQP
	dShqUqK4=; b=oVQnNPb9YToXVMt4x+VsBUP9+iH849/c3JcaZbPHLkp/x7u8XwK
	TTHZXO91U/+SNnMeVkuxiDyA4Nnx0uZuxQ25RTy6p7r9bbKG16un0suYeh7gb1F+
	wyW6zSISqFCdqgZNVLIPjpkphQq5SxLdaBoAl3SdEvR/VJP+AWwfOPipeLEfPq/e
	n2oaqaZVvAkLnKGIZRmxDSIGMROlzRByx1umnVi0T5eH04inYppViWrqpoN2GR6i
	uL2gmL61F4Emu1XsHIb1T586o38+vWQkvcXsfMFeZZHhUeB8n4VC3wpi6nAQL0u/
	ODL6P6Mu2sxE8pzzSv0d3VVZNY/6oP1M0fA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6uf82m1u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linaro-mm-sig@lists.linaro.org>; Sun, 05 Jul 2026 13:46:30 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c88e0d11a3fso1337004a12.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 Jul 2026 06:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783259189; x=1783863989; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=F8RSssedjjcA0BbJ/AkIl+cH9if7eTgYDQPdShqUqK4=;
        b=HHXxZ8EjnHPb/SkwhVMUqO5XvWDKSrs3gLi3G9ibN/+7vRgGgppe/5TI5rq18gl+y+
         oGlbrXAFwAYr3iiwOmuen72UfpKNQcodsUNFX1Iqk8rGZRTKXS+bu4qkCQ/zu4nfgpVn
         XXTdWM0aqG9td7vPVWgmC8FpeB5YRRC15THLVcoGAqfJr79DrUwNP5gRKmBZHTbsQvhs
         BD6tKsqFR2InzDaqIOytZrGNdXAX3bdH80F1k/1eoDbR+o/+++GGLJsKe50v0HVo/P9x
         okU5eXsggtPA9A9/3918q/aQWGUfjdGes35APMf69vHj/KdjPSgqRItF57fY7Qwdit5I
         /8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783259189; x=1783863989;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F8RSssedjjcA0BbJ/AkIl+cH9if7eTgYDQPdShqUqK4=;
        b=AgHRfpBYVismooVsK8nBANwn5I5FomzsGOiLP+b0O1JEtfNZrFFgyo5CXacXgs3HOE
         xC5vChmYlO0HUO/cvI9O6vR5MmkPTqNFrkC2ZrZaaRXu0KGrFeqCNhm8QURgeNkbAjp3
         9/P4hP4hOtZ6zKUK6SGHcmJWQ9Md11CzUGZdVye278e79ws4RX71PS6H0rxoeTV7han2
         AQ5Hx1X4wvAueOH2fK2iQ9hTP+QkClFtScGLimx6HeDrw7sPPeNYRiF5xKfuTgHEwcII
         X9M3t/yuiw4j0cXkIoiTAg3Szf4gDKhRgdU1qJpCCkBi4bK6xq6Kdn3c0ExIq3Ut8dRY
         lfeQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrgd4hUVIyON5d8JluLK6/T4ywBoHPaqVraBAiYX9Du/oUuZ017qaT9re578J19QtpsDOkZ1pXsRj7MEWO0@lists.linaro.org
X-Gm-Message-State: AOJu0Yx/dQleIdDFCH6ynQRbeVSrNGFHLTlSWipx20Rt6CSqY6bA2/30
	t1XSoL92hpL56dQZShRYTsQB/RRLxb6SigJcwd03sD5mssfTq0SrxFgTXSWrKufSG8ga56xJB1w
	8T1bH+j3UdBO9xhiEYnvY+mF/zsnW3ORkSLd9YERaASC8PMHaJmQX7svmWeA4kEuOaDFtIg==
X-Gm-Gg: AfdE7ckkaddMHrxlU030LPozkLCf1PwWgmtCmHp161AlR1NbN8ElDNBhD9Df0b365hB
	ZVyh5SiYW5fIsGpB/+VlqjdVoTlN1+Qqrv2nZOfmiSPvC52YSlL9C8hNLbGSQkAQKIN+rYM7ysf
	xaeQFZMdxYJTIIkxVsyapgcjM0qdbvNBGgV1jKajW34NWBWrYNvNgecSomC/KwT7MyreSif3zgX
	7Ya3/VqxsmFhjnJeWS9XS5xlm0RlgL1UeKE6mfNEgptDIiHut6MkZv5lkB2vtcwGBPVHi71bt7/
	hrGgA6A5M5DETHzr91uoeY6Nzn7fPzGHSQf97AO+TtCKR2w7EoeHJFLv0U2tNjrQDq9Q8AeGWiu
	drXVLEOtOxOWcCWOfjmkBtFJ56yl0UQNCeMSQSgg0XYlwaQ==
X-Received: by 2002:a05:6a21:4593:b0:3bf:bde7:d66f with SMTP id adf61e73a8af0-3c03e1ff3a4mr6390572637.2.1783259189281;
        Sun, 05 Jul 2026 06:46:29 -0700 (PDT)
X-Received: by 2002:a05:6a21:4593:b0:3bf:bde7:d66f with SMTP id adf61e73a8af0-3c03e1ff3a4mr6390550637.2.1783259188756;
        Sun, 05 Jul 2026 06:46:28 -0700 (PDT)
Received: from hu-arandive-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30f0b7bb8fasm40905271eec.1.2026.07.05.06.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 06:46:28 -0700 (PDT)
From: Aniket Randive <aniket.randive@oss.qualcomm.com>
To: mukesh.savaliya@oss.qualcomm.com, viken.dadhaniya@oss.qualcomm.com,
        andi.shyti@kernel.org, sumit.semwal@linaro.org,
        christian.koenig@amd.com
Date: Sun,  5 Jul 2026 19:16:19 +0530
Message-Id: <20260705134619.4030745-1-aniket.randive@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 3ougVE5lpX9GvntBHff89AdYiP6X_q6O
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA1MDE0NiBTYWx0ZWRfX6tPVzR2xNrAL
 zuy45bfpfZd+IhHr5RqLlcCvdJ1vMAWPUi80FDSxWrMvKroYsieNoQT7imsqCl/8dOjQ4Ka5Cwi
 hv/Dv7aEMnEaeF0zRJef9/WNiFqqa14=
X-Authority-Analysis: v=2.4 cv=Z4Tc2nRA c=1 sm=1 tr=0 ts=6a4a6036 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=mbwoLaagdJ-VvVSO4aUA:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: 3ougVE5lpX9GvntBHff89AdYiP6X_q6O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA1MDE0NiBTYWx0ZWRfX2PnSW3rBxoqR
 1yMTrnsoiYWeXGTPvCnYxSoi5sV7iHyDpE9XEi9OmgHltarda/bQ7ymHSyOLQD5wkjuImE0aehp
 HN8hiK6lgRbkoIknPaqJeQrgJnnpsZA8LhE/lvsyWy3O9IYRnp9holYBJtzC/PF6SNvLhUoVkxG
 rMPGifZrmPaCFDl93xH2DzFm5o7RSFTd7fjCNg6fb/tJldk6Ivf4won4SPkmrAdxuth3/xUN4ls
 HY9v1d6L11Uh6G0FMVVpMHYZyCWgo1mVhWPmuNDqn/2Yq+e+SvzJjECk18BeK/FZ5Yy5LAJGAzj
 Uu7fRS0emdMefhG0Y7JuEsuI3hK3v93jUvsp3slXZR0OhhVCSTab3Js7VnT8WXN7O0kfo3frZS3
 4Vdoe1x83riiWts6HkBxySRQo3ckEmQ50w5x6UEA6W6dYbmCu55hF2K6B0zqLp5ODJyFb12mrlA
 Z4Dh3YbtPLXVl7bLO5Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-04_03,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607050146
X-Spamd-Bar: --
X-MailFrom: aniket.randive@oss.qualcomm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MJBHYG3HIBWWJMNZM4S4HSIXDSBW2IMJ
X-Message-ID-Hash: MJBHYG3HIBWWJMNZM4S4HSIXDSBW2IMJ
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:04 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, naresh.maramaina@oss.qualcomm.com, aniket.randive@oss.qualcomm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1] i2c: qcom-geni: Add dynamic transfer timeout based on transfer length and frequency
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MJBHYG3HIBWWJMNZM4S4HSIXDSBW2IMJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[qualcomm.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[qualcomm.com:s=qcppdkim1];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[219];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mukesh.savaliya@oss.qualcomm.com,m:viken.dadhaniya@oss.qualcomm.com,m:andi.shyti@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-i2c@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:naresh.maramaina@oss.qualcomm.com,m:aniket.randive@oss.qualcomm.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[aniket.randive@oss.qualcomm.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:-];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,qualcomm.com:email,oss.qualcomm.com:from_mime,oss.qualcomm.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 662E07575A7

The driver uses a static XFER_TIMEOUT of HZ (1 second) for all transfers
regardless of message length or bus frequency, causing unnecessary
delays on error paths.

Compute the timeout dynamically from message length and bus frequency
with a 10x safety margin over the theoretical wire time and a 300ms
floor. For GPI multi-descriptor transfers, use the maximum message
length across all queued messages as the per-completion timeout.

Signed-off-by: Aniket Randive <aniket.randive@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig       | 54 +++---------------------------
 drivers/i2c/busses/i2c-qcom-geni.c | 37 +++++++++++++++-----
 2 files changed, 33 insertions(+), 58 deletions(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index faf146441f97..841108ae2d01 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -32,7 +32,6 @@ CONFIG_KALLSYMS_ALL=y
 CONFIG_PROFILING=y
 CONFIG_KEXEC=y
 CONFIG_KEXEC_FILE=y
-CONFIG_CRASH_DUMP=y
 CONFIG_ARCH_ACTIONS=y
 CONFIG_ARCH_AIROHA=y
 CONFIG_ARCH_SUNXI=y
@@ -123,10 +122,8 @@ CONFIG_ACPI_APEI_MEMORY_FAILURE=y
 CONFIG_ACPI_APEI_EINJ=y
 CONFIG_VIRTUALIZATION=y
 CONFIG_KVM=y
-CONFIG_JUMP_LABEL=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
-CONFIG_IOSCHED_BFQ=y
 CONFIG_BLK_INLINE_ENCRYPTION=y
 # CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
 # CONFIG_COMPAT_BRK is not set
@@ -137,19 +134,15 @@ CONFIG_MEMORY_FAILURE=y
 CONFIG_TRANSPARENT_HUGEPAGE=y
 CONFIG_NET=y
 CONFIG_PACKET=y
-CONFIG_UNIX=y
-CONFIG_INET=y
 CONFIG_IP_MULTICAST=y
 CONFIG_IP_PNP=y
 CONFIG_IP_PNP_DHCP=y
 CONFIG_IP_PNP_BOOTP=y
-CONFIG_IPV6=y
 CONFIG_NETFILTER=y
 CONFIG_BRIDGE_NETFILTER=m
 CONFIG_NF_CONNTRACK=m
 CONFIG_NF_CONNTRACK_EVENTS=y
 CONFIG_NETFILTER_XT_MARK=m
-CONFIG_NETFILTER_XT_TARGET_CHECKSUM=m
 CONFIG_NETFILTER_XT_TARGET_LOG=m
 CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
 CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m
@@ -198,7 +191,6 @@ CONFIG_BT_QCOMSMD=m
 CONFIG_BT_NXPUART=m
 CONFIG_CFG80211=m
 CONFIG_MAC80211=m
-CONFIG_MAC80211_LEDS=y
 CONFIG_RFKILL=m
 CONFIG_RFKILL_GPIO=m
 CONFIG_NET_9P=m
@@ -253,8 +245,6 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_ENDPOINT=y
 CONFIG_PCI_ENDPOINT_CONFIGFS=y
 CONFIG_PCI_EPF_TEST=m
-CONFIG_PCI_PWRCTRL_GENERIC=m
-CONFIG_POWER_SEQUENCING_PCIE_M2=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_FW_LOADER_USER_HELPER=y
@@ -262,9 +252,7 @@ CONFIG_HISILICON_LPC=y
 CONFIG_IMX_AIPSTZ=m
 CONFIG_TEGRA_ACONNECT=m
 CONFIG_MHI_BUS_PCI_GENERIC=m
-CONFIG_ARM_SCMI_PROTOCOL=y
 CONFIG_ARM_SCPI_PROTOCOL=y
-CONFIG_RASPBERRYPI_FIRMWARE=y
 CONFIG_INTEL_STRATIX10_SERVICE=y
 CONFIG_INTEL_STRATIX10_RSU=m
 CONFIG_MTK_ADSP_IPC=m
@@ -303,7 +291,6 @@ CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_UBI=m
 CONFIG_MTD_HYPERBUS=m
 CONFIG_HBMC_AM654=m
-CONFIG_OF_OVERLAY=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_NBD=m
 CONFIG_VIRTIO_BLK=y
@@ -336,7 +323,6 @@ CONFIG_AHCI_XGENE=y
 CONFIG_AHCI_QORIQ=y
 CONFIG_SATA_SIL24=y
 CONFIG_SATA_RCAR=y
-CONFIG_PATA_PLATFORM=y
 CONFIG_PATA_OF_PLATFORM=y
 CONFIG_MD=y
 CONFIG_BLK_DEV_MD=m
@@ -423,7 +409,6 @@ CONFIG_MLX5_CORE_EN=y
 # CONFIG_NET_VENDOR_NETRONOME is not set
 # CONFIG_NET_VENDOR_NVIDIA is not set
 # CONFIG_NET_VENDOR_OKI is not set
-# CONFIG_NET_VENDOR_PACKET_ENGINES is not set
 # CONFIG_NET_VENDOR_QLOGIC is not set
 # CONFIG_NET_VENDOR_BROCADE is not set
 CONFIG_QCOM_EMAC=m
@@ -629,7 +614,7 @@ CONFIG_I2C_OWL=y
 CONFIG_I2C_APPLE=m
 CONFIG_I2C_PXA=y
 CONFIG_I2C_QCOM_CCI=m
-CONFIG_I2C_QCOM_GENI=m
+CONFIG_I2C_QCOM_GENI=y
 CONFIG_I2C_QUP=y
 CONFIG_I2C_RIIC=y
 CONFIG_I2C_RK3X=y
@@ -749,6 +734,7 @@ CONFIG_POWER_RESET_SYSCON=y
 CONFIG_POWER_RESET_SYSCON_POWEROFF=y
 CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_NVMEM_REBOOT_MODE=m
+CONFIG_POWER_SEQUENCING_PCIE_M2=m
 CONFIG_BATTERY_QCOM_BATTMGR=m
 CONFIG_BATTERY_SBS=m
 CONFIG_BATTERY_BQ27XXX=y
@@ -787,7 +773,6 @@ CONFIG_MTK_LVTS_THERMAL=m
 CONFIG_BCM2711_THERMAL=m
 CONFIG_BCM2835_THERMAL=m
 CONFIG_BRCMSTB_THERMAL=m
-CONFIG_EXYNOS_THERMAL=y
 CONFIG_RCAR_THERMAL=y
 CONFIG_RCAR_GEN3_THERMAL=y
 CONFIG_RZG2L_THERMAL=y
@@ -959,7 +944,6 @@ CONFIG_DRM=m
 CONFIG_DRM_HDLCD=m
 CONFIG_DRM_MALI_DISPLAY=m
 CONFIG_DRM_KOMEDA=m
-CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_FSL_LDB=m
 CONFIG_DRM_I2C_NXP_TDA998X=m
 CONFIG_DRM_ITE_IT6263=m
@@ -1057,15 +1041,12 @@ CONFIG_DRM_ZYNQMP_DPSUB=m
 CONFIG_DRM_ZYNQMP_DPSUB_AUDIO=y
 CONFIG_FB=y
 CONFIG_FB_EFI=y
-CONFIG_FB_MODE_HELPERS=y
 CONFIG_BACKLIGHT_PWM=m
 CONFIG_BACKLIGHT_APPLE_DWI=m
 CONFIG_BACKLIGHT_QCOM_WLED=m
 CONFIG_BACKLIGHT_LP855X=m
 CONFIG_BACKLIGHT_GPIO=m
 CONFIG_LOGO=y
-# CONFIG_LOGO_LINUX_MONO is not set
-# CONFIG_LOGO_LINUX_VGA16 is not set
 CONFIG_SOUND=m
 CONFIG_SND=m
 CONFIG_SND_ALOOP=m
@@ -1180,8 +1161,6 @@ CONFIG_SND_SOC_WSA884X=m
 CONFIG_SND_SOC_NAU8822=m
 CONFIG_SND_SOC_LPASS_WSA_MACRO=m
 CONFIG_SND_SOC_LPASS_VA_MACRO=m
-CONFIG_SND_SOC_LPASS_RX_MACRO=m
-CONFIG_SND_SOC_LPASS_TX_MACRO=m
 CONFIG_SND_SIMPLE_CARD=m
 CONFIG_SND_AUDIO_GRAPH_CARD=m
 CONFIG_SND_AUDIO_GRAPH_CARD2=m
@@ -1209,8 +1188,8 @@ CONFIG_USB_ACM=m
 CONFIG_USB_STORAGE=y
 CONFIG_USB_CDNS_SUPPORT=m
 CONFIG_USB_CDNS3=m
-CONFIG_USB_CDNS3_GADGET=y
 CONFIG_USB_CDNS3_HOST=y
+CONFIG_USB_CDNS3_GADGET=y
 CONFIG_USB_MTU3=y
 CONFIG_USB_MUSB_HDRC=y
 CONFIG_USB_MUSB_SUNXI=y
@@ -1311,7 +1290,6 @@ CONFIG_SCSI_UFS_RENESAS=m
 CONFIG_SCSI_UFS_TI_J721E=m
 CONFIG_SCSI_UFS_EXYNOS=y
 CONFIG_SCSI_UFS_ROCKCHIP=y
-CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
 CONFIG_LEDS_CLASS_FLASH=m
 CONFIG_LEDS_CLASS_MULTICOLOR=m
@@ -1430,7 +1408,6 @@ CONFIG_EC_LENOVO_YOGA_C630=m
 CONFIG_EC_LENOVO_THINKPAD_T14S=m
 CONFIG_COMMON_CLK_APPLE_NCO=m
 CONFIG_COMMON_CLK_RK808=y
-CONFIG_COMMON_CLK_SCMI=y
 CONFIG_COMMON_CLK_SCPI=y
 CONFIG_COMMON_CLK_CS2000_CP=y
 CONFIG_COMMON_CLK_FSL_SAI=y
@@ -1450,18 +1427,6 @@ CONFIG_CLK_IMX8ULP=y
 CONFIG_CLK_IMX93=y
 CONFIG_CLK_IMX95_BLK_CTL=y
 CONFIG_TI_SCI_CLK=y
-CONFIG_COMMON_CLK_MT8192_AUDSYS=y
-CONFIG_COMMON_CLK_MT8192_CAMSYS=y
-CONFIG_COMMON_CLK_MT8192_IMGSYS=y
-CONFIG_COMMON_CLK_MT8192_IMP_IIC_WRAP=y
-CONFIG_COMMON_CLK_MT8192_IPESYS=y
-CONFIG_COMMON_CLK_MT8192_MDPSYS=y
-CONFIG_COMMON_CLK_MT8192_MFGCFG=y
-CONFIG_COMMON_CLK_MT8192_MMSYS=y
-CONFIG_COMMON_CLK_MT8192_MSDC=y
-CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
-CONFIG_COMMON_CLK_MT8192_VDECSYS=y
-CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
 CONFIG_CLK_ELIZA_DISPCC=m
 CONFIG_CLK_ELIZA_GCC=y
@@ -1670,7 +1635,6 @@ CONFIG_IMX_SCU_PD=y
 CONFIG_QCOM_CPR=y
 CONFIG_QCOM_RPMHPD=y
 CONFIG_QCOM_RPMPD=y
-CONFIG_ROCKCHIP_PM_DOMAINS=y
 CONFIG_TI_SCI_PM_DOMAINS=y
 CONFIG_ARM_IMX_BUS_DEVFREQ=y
 CONFIG_ARM_IMX8M_DDRC_DEVFREQ=m
@@ -1799,9 +1763,9 @@ CONFIG_PHY_SAMSUNG_UFS=y
 CONFIG_PHY_UNIPHIER_USB2=y
 CONFIG_PHY_UNIPHIER_USB3=y
 CONFIG_PHY_TEGRA_XUSB=y
+CONFIG_OMAP_USB2=m
 CONFIG_PHY_AM654_SERDES=m
 CONFIG_PHY_J721E_WIZ=m
-CONFIG_OMAP_USB2=m
 CONFIG_PHY_XILINX_ZYNQMP=m
 CONFIG_ARM_CCI_PMU=m
 CONFIG_ARM_CCN=m
@@ -1852,10 +1816,7 @@ CONFIG_OPTEE=y
 CONFIG_QCOMTEE=m
 CONFIG_MUX_GPIO=m
 CONFIG_MUX_MMIO=y
-CONFIG_SLIMBUS=m
-CONFIG_SLIM_QCOM_CTRL=m
 CONFIG_SLIM_QCOM_NGD_CTRL=m
-CONFIG_INTERCONNECT=y
 CONFIG_INTERCONNECT_IMX=y
 CONFIG_INTERCONNECT_IMX8MM=m
 CONFIG_INTERCONNECT_IMX8MN=m
@@ -1914,14 +1875,12 @@ CONFIG_OVERLAY_FS=m
 CONFIG_VFAT_FS=y
 CONFIG_TMPFS_POSIX_ACL=y
 CONFIG_HUGETLBFS=y
-CONFIG_CONFIGFS_FS=y
 CONFIG_EFIVAR_FS=y
 CONFIG_UBIFS_FS=m
 CONFIG_SQUASHFS=y
 CONFIG_PSTORE_RAM=m
 CONFIG_NFS_FS=y
 CONFIG_NFS_V4=y
-CONFIG_NFS_V4_1=y
 CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
 CONFIG_9P_FS=m
@@ -1932,11 +1891,8 @@ CONFIG_CRYPTO_USER=y
 CONFIG_CRYPTO_BENCHMARK=m
 CONFIG_CRYPTO_CHACHA20=m
 CONFIG_CRYPTO_ECHAINIV=y
-CONFIG_CRYPTO_SHA3=m
-CONFIG_CRYPTO_SM3=m
 CONFIG_CRYPTO_USER_API_RNG=m
 CONFIG_CRYPTO_GHASH_ARM64_CE=y
-CONFIG_CRYPTO_AES_ARM64_CE_BLK=y
 CONFIG_CRYPTO_AES_ARM64_BS=m
 CONFIG_CRYPTO_AES_ARM64_CE_CCM=y
 CONFIG_CRYPTO_DEV_SUN8I_CE=m
@@ -1960,8 +1916,6 @@ CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT=y
 CONFIG_DEBUG_INFO_REDUCED=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_FS=y
-# CONFIG_SCHED_DEBUG is not set
-# CONFIG_DEBUG_PREEMPT is not set
 # CONFIG_FTRACE is not set
 CONFIG_CORESIGHT=m
 CONFIG_CORESIGHT_LINK_AND_SINK_TMC=m
diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 96dbf04138be..43ae2121f01c 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -74,9 +74,12 @@ enum geni_i2c_err_code {
 #define PACKING_BYTES_PW	4
 
 #define ABORT_TIMEOUT		HZ
-#define XFER_TIMEOUT		HZ
 #define RST_TIMEOUT		HZ
 
+/* 9 bits per byte (8 data + 1 ACK), 10x safety margin, 300ms floor */
+#define I2C_TIMEOUT_SAFETY_COEFFICIENT	10
+#define I2C_TIMEOUT_MIN_USEC		300000
+
 struct geni_i2c_desc {
 	bool no_dma_support;
 	unsigned int tx_fifo_depth;
@@ -204,6 +207,16 @@ static int geni_i2c_clk_map_idx(struct geni_i2c_dev *gi2c)
 	return -EINVAL;
 }
 
+static unsigned long geni_i2c_xfer_timeout(struct geni_i2c_dev *gi2c, size_t len)
+{
+	size_t bit_cnt = len * 9;
+	size_t bit_usec = (bit_cnt * USEC_PER_SEC) / gi2c->clk_freq_out;
+	size_t xfer_max_usec = (bit_usec * I2C_TIMEOUT_SAFETY_COEFFICIENT) +
+			       I2C_TIMEOUT_MIN_USEC;
+
+	return usecs_to_jiffies(xfer_max_usec);
+}
+
 static int qcom_geni_i2c_conf(struct geni_se *se, unsigned long freq)
 {
 	struct geni_i2c_dev *gi2c = dev_get_drvdata(se->dev);
@@ -471,7 +484,7 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 	}
 
 	cur = gi2c->cur;
-	time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
+	time_left = wait_for_completion_timeout(&gi2c->done, geni_i2c_xfer_timeout(gi2c, len));
 	if (!time_left)
 		geni_i2c_abort_xfer(gi2c);
 
@@ -513,7 +526,7 @@ static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 		writel_relaxed(1, se->base + SE_GENI_TX_WATERMARK_REG);
 
 	cur = gi2c->cur;
-	time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
+	time_left = wait_for_completion_timeout(&gi2c->done, geni_i2c_xfer_timeout(gi2c, len));
 	if (!time_left)
 		geni_i2c_abort_xfer(gi2c);
 
@@ -591,7 +604,7 @@ static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_
  * geni_i2c_gpi_multi_xfer_timeout_handler() - Handles multi message transfer timeout
  * @dev: Pointer to the corresponding dev node
  * @multi_xfer: Pointer to the geni_i2c_gpi_multi_desc_xfer
- * @transfer_timeout_msecs: Timeout value in milliseconds
+ * @transfer_timeout_msecs: Per-message completion timeout in jiffies
  * @transfer_comp: Completion object of the transfer
  *
  * This function waits for the completion of each processed transfer messages
@@ -601,7 +614,7 @@ static void geni_i2c_gpi_multi_desc_unmap(struct geni_i2c_dev *gi2c, struct i2c_
  */
 static int geni_i2c_gpi_multi_xfer_timeout_handler(struct device *dev,
 						   struct geni_i2c_gpi_multi_desc_xfer *multi_xfer,
-						   u32 transfer_timeout_msecs,
+						   unsigned long timeout_jiffies,
 						   struct completion *transfer_comp)
 {
 	int i;
@@ -612,7 +625,7 @@ static int geni_i2c_gpi_multi_xfer_timeout_handler(struct device *dev,
 
 		if (multi_xfer->msg_idx_cnt != multi_xfer->irq_cnt) {
 			time_left = wait_for_completion_timeout(transfer_comp,
-								transfer_timeout_msecs);
+								timeout_jiffies);
 			if (!time_left) {
 				dev_err(dev, "%s: Transfer timeout\n", __func__);
 				return -ETIMEDOUT;
@@ -736,8 +749,15 @@ static int geni_i2c_gpi(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[],
 		dma_async_issue_pending(gi2c->tx_c);
 
 		if ((msg_idx == (gi2c->num_msgs - 1)) || flags & DMA_PREP_INTERRUPT) {
+			size_t max_len = 0;
+			int j;
+
+			for (j = 0; j < gi2c->num_msgs; j++)
+				max_len = max_t(size_t, max_len, msgs[j].len);
+
 			ret = geni_i2c_gpi_multi_xfer_timeout_handler(gi2c->se.dev, gi2c_gpi_xfer,
-								      XFER_TIMEOUT, &gi2c->done);
+								      geni_i2c_xfer_timeout(
+								      gi2c, max_len), &gi2c->done);
 			if (ret) {
 				dev_err(gi2c->se.dev,
 					"I2C multi write msg transfer timeout: %d\n",
@@ -852,7 +872,8 @@ static int geni_i2c_gpi_xfer(struct geni_i2c_dev *gi2c, struct i2c_msg msgs[], i
 
 		if (!gi2c->is_tx_multi_desc_xfer) {
 			dma_async_issue_pending(gi2c->tx_c);
-			time_left = wait_for_completion_timeout(&gi2c->done, XFER_TIMEOUT);
+			time_left = wait_for_completion_timeout(&gi2c->done, geni_i2c_xfer_timeout(
+								gi2c, msgs[i].len));
 			if (!time_left) {
 				dev_err(gi2c->se.dev, "%s:I2C timeout\n", __func__);
 				gi2c->err = -ETIMEDOUT;
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
