Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 776817D6924
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 12:42:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 802CC3F06F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 10:42:07 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lists.linaro.org (Postfix) with ESMTP id 31BA840BB1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Oct 2023 10:40:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.71 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 9330F83D4;
	Wed, 25 Oct 2023 18:39:59 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:59 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:59 +0800
From: Keith Zhao <keith.zhao@starfivetech.com>
To: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
Date: Wed, 25 Oct 2023 18:39:54 +0800
Message-ID: <20231025103957.3776-4-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231025103957.3776-1-keith.zhao@starfivetech.com>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
MIME-Version: 1.0
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 31BA840BB1
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_TWELVE(0.00)[30];
	DMARC_NA(0.00)[starfivetech.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	DNSWL_BLOCKED(0.00)[175.102.18.54:received,180.164.60.184:received];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com]
X-Rspamd-Action: no action
Message-ID-Hash: QLRFVBYPV6JHXO275HAQMXIMXBXDMSNM
X-Message-ID-Hash: QLRFVBYPV6JHXO275HAQMXIMXBXDMSNM
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Keith Zhao <keith.zhao@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 3/6] drm/fourcc: Add drm/vs tiled modifiers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QLRFVBYPV6JHXO275HAQMXIMXBXDMSNM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For each modifier, add the corresponding description

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
---
 include/uapi/drm/drm_fourcc.h | 57 +++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 8db7fd3f7..a580a848c 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -419,6 +419,7 @@ extern "C" {
 #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
 #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
 #define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
+#define DRM_FORMAT_MOD_VENDOR_VERISILICON 0x0b
 
 /* add more to the end as needed */
 
@@ -1562,6 +1563,62 @@ drm_fourcc_canonicalize_nvidia_format_mod(__u64 modifier)
 #define AMD_FMT_MOD_CLEAR(field) \
 	(~((__u64)AMD_FMT_MOD_##field##_MASK << AMD_FMT_MOD_##field##_SHIFT))
 
+#define DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL					0x00
+#define DRM_FORMAT_MOD_VERISILICON_TYPE_MASK					((__u64)0x3 << 54)
+
+#define fourcc_mod_vs_code(type, val) \
+	fourcc_mod_code(VERISILICON, ((((__u64)type) << 54) | (val)))
+
+#define DRM_FORMAT_MOD_VERISILICON_NORM_MODE_MASK				0x1F
+
+/*
+ * An x-major 8x8 super tile consists of 64 8x8 sub-tiles in total.
+ * Each 8x8 sub-tile consists of four standard tiles .
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_XMAJOR_8X8		0x02
+
+/*
+ * A y-major 8x8 super tile consists of 64 8x8 sub-tiles in total.
+ * Each 8x8 sub-tile consists of four standard tiles .
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_YMAJOR_8X8		0x03
+
+/*
+ * An 8x8 tile consists of four standard tiles
+ * that are organized in Z-order.
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_TILE_8X8						0x04
+
+/*
+ * An 8x4 tile consists of two standard tiles
+ * that are organized in Z-order.
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_TILE_8X4						0x07
+
+/*
+ * An x-major 8x4 super tile consists of 128 8x4 sub-tiles in total.
+ * Each 8x4 sub-tile consists of two standard tiles.
+ * two standard tiles also same with DRM_FORMAT_MOD_VS_TILE_8X4
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_XMAJOR_8X4		0x0B
+
+/*
+ * A y-major 4x8 super tile consists of 128 4x8 sub-tiles in total.
+ * Each 4x8 sub-tile consists of two standard tiles.
+ * two standard tiles also same with DRM_FORMAT_MOD_VS_TILE_8X4
+ * standard tiles (see Vivante 4x4 tiling layout)
+ */
+#define DRM_FORMAT_MOD_VERISILICON_SUPER_TILED_YMAJOR_4X8    0x0C
+
+#define fourcc_mod_vs_norm_code(tile) \
+	fourcc_mod_vs_code(DRM_FORMAT_MOD_VERISILICON_TYPE_NORMAL, \
+				(tile))
+
 #if defined(__cplusplus)
 }
 #endif
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
