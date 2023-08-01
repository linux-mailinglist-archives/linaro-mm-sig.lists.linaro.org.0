Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D37CC76B091
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 12:12:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC28E43F26
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 10:12:09 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lists.linaro.org (Postfix) with ESMTP id 21EC743F33
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 10:10:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.75 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com;
	dmarc=none
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 530F024E2F2;
	Tue,  1 Aug 2023 18:10:35 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 1 Aug
 2023 18:10:34 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 1 Aug
 2023 18:10:33 +0800
From: Keith Zhao <keith.zhao@starfivetech.com>
To: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
Date: Tue, 1 Aug 2023 18:10:27 +0800
Message-ID: <20230801101030.2040-5-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801101030.2040-1-keith.zhao@starfivetech.com>
References: <20230801101030.2040-1-keith.zhao@starfivetech.com>
MIME-Version: 1.0
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 21EC743F33
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[starfivetech.com];
	TAGGED_RCPT(0.00)[dt];
	URIBL_BLOCKED(0.00)[ex01.ufhost.com:helo,ex01.ufhost.com:rdns];
	ARC_NA(0.00)[]
Message-ID-Hash: WGXF4VTBYQIKL253OYLUDFF3VHGZTD5D
X-Message-ID-Hash: WGXF4VTBYQIKL253OYLUDFF3VHGZTD5D
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Keith Zhao <keith.zhao@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1 v1 4/7] drm/fourcc: Add drm/vs tiled modifiers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WGXF4VTBYQIKL253OYLUDFF3VHGZTD5D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

These are mainly used internally in vs-drm,
I'm not sure if the new modifiers can be used with the existing ones.
If there is a problem, I will improve it further.

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
---
 include/uapi/drm/drm_fourcc.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 8db7fd3f7..0b884cf50 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -419,6 +419,7 @@ extern "C" {
 #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
 #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
 #define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
+#define DRM_FORMAT_MOD_VENDOR_VS      0x0b
 
 /* add more to the end as needed */
 
@@ -1562,6 +1563,32 @@ drm_fourcc_canonicalize_nvidia_format_mod(__u64 modifier)
 #define AMD_FMT_MOD_CLEAR(field) \
 	(~((__u64)AMD_FMT_MOD_##field##_MASK << AMD_FMT_MOD_##field##_SHIFT))
 
+#define DRM_FORMAT_MOD_VS_TYPE_NORMAL        0x00
+#define DRM_FORMAT_MOD_VS_TYPE_COMPRESSED    0x01
+#define DRM_FORMAT_MOD_VS_TYPE_CUSTOM_10BIT  0x02
+#define DRM_FORMAT_MOD_VS_TYPE_MASK     ((__u64)0x3 << 54)
+
+#define fourcc_mod_vs_code(type, val) \
+	fourcc_mod_code(VS, ((((__u64)type) << 54) | (val)))
+
+#define DRM_FORMAT_MOD_VS_NORM_MODE_MASK        0x1F
+#define DRM_FORMAT_MOD_VS_LINEAR                0x00
+#define DRM_FORMAT_MOD_VS_SUPER_TILED_XMAJOR    0x02
+#define DRM_FORMAT_MOD_VS_SUPER_TILED_YMAJOR    0x03
+#define DRM_FORMAT_MOD_VS_TILE_8X8              0x04
+#define DRM_FORMAT_MOD_VS_TILE_8X4              0x07
+#define DRM_FORMAT_MOD_VS_SUPER_TILED_XMAJOR_8X4    0x0B
+#define DRM_FORMAT_MOD_VS_SUPER_TILED_YMAJOR_4X8    0x0C
+#define DRM_FORMAT_MOD_VS_TILE_MODE4X4          0x15
+
+#define fourcc_mod_vs_norm_code(tile) \
+	fourcc_mod_vs_code(DRM_FORMAT_MOD_VS_TYPE_NORMAL, \
+				(tile))
+
+#define fourcc_mod_vs_custom_code(tile) \
+	fourcc_mod_vs_code(DRM_FORMAT_MOD_VS_TYPE_CUSTOM_10BIT, \
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
