Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 582936CED79
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 17:51:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5155F3EC5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 15:51:01 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id BDB693F658
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Mar 2023 15:50:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.41:58922.1411433373
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.41])
	by 189.cn (HERMES) with SMTP id B5F0C1002C4;
	Wed, 29 Mar 2023 23:50:40 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-bkw2h with ESMTP id eb6e9529e38f423c95b77fa78b2c7ae2 for maarten.lankhorst@linux.intel.com;
	Wed, 29 Mar 2023 23:50:41 CST
X-Transaction-ID: eb6e9529e38f423c95b77fa78b2c7ae2
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
From: Sui Jingfeng <15330273260@189.cn>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	suijingfeng <suijingfeng@loongson.cn>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian Koenig <christian.koenig@amd.com>
Date: Wed, 29 Mar 2023 23:50:32 +0800
Message-Id: <20230329155033.1303550-2-15330273260@189.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230329155033.1303550-1-15330273260@189.cn>
References: <20230329155033.1303550-1-15330273260@189.cn>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BDB693F658
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.573];
	FREEMAIL_FROM(0.00)[189.cn];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 7F55V2RVZWMNZRWPDHF4XYWKQBOLHXEL
X-Message-ID-Hash: 7F55V2RVZWMNZRWPDHF4XYWKQBOLHXEL
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: nathan@kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 1/2] MAINTAINERS: add maintainers for DRM LOONGSON driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7F55V2RVZWMNZRWPDHF4XYWKQBOLHXEL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Sui Jingfeng <suijingfeng@loongson.cn>

 This patch add myself as maintainer to drm loongson driver

Signed-off-by: Sui Jingfeng <suijingfeng@loongson.cn>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9736e04d3bd3..d258c5b54407 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6919,6 +6919,13 @@ T:	git git://anongit.freedesktop.org/drm/drm-misc
 F:	drivers/gpu/drm/lima/
 F:	include/uapi/drm/lima_drm.h
 
+DRM DRIVERS FOR LOONGSON
+M:	Sui Jingfeng <suijingfeng@loongson.cn>
+L:	dri-devel@lists.freedesktop.org
+S:	Supported
+T:	git git://anongit.freedesktop.org/drm/drm-misc
+F:	drivers/gpu/drm/loongson/
+
 DRM DRIVERS FOR MEDIATEK
 M:	Chun-Kuang Hu <chunkuang.hu@kernel.org>
 M:	Philipp Zabel <p.zabel@pengutronix.de>
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
