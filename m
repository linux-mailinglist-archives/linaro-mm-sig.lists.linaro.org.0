Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D6A6F55D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:18:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8BC1A3F6F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:18:32 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by lists.linaro.org (Postfix) with ESMTPS id 2C7DE3EB81
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 04:24:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=P5QTikUG;
	spf=pass (lists.linaro.org: domain of hackyzh002@gmail.com designates 209.85.215.174 as permitted sender) smtp.mailfrom=hackyzh002@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-51b33c72686so2355068a12.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 21:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681878276; x=1684470276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRDCjTOkWMGElxrmUMljuv7R6aYKvTg/GiQ2WWUQLjA=;
        b=P5QTikUGscbdQb7TFjUgKjgzxn/e9+eeyH2qxNQSgYuuAoEj9snd9v+RzKmYKdaFYB
         Z/F/DpJQo7e8vEFO5QQAdNK5pRF0eVSc2Z3LToHwQitYaPnV9WaYhsT+3QPwbYhyhWOo
         LLd698154Ty28I+Z3s6QzAars6oTGXtMF7Mwz23ALjlPE+FLwQNJQD57d2bRIjRKQo5K
         /eSJRxR5Num3TxuE6t60Tjk67JJ/vq5KGCBAlfuitq8wGNFR2BDk07PJ23mAZyYwBO0C
         /IzcPoTQ+SQ5jhA4iU8jpMFsg82p0U9KavFJC2lv3+aIkursUeNhKZ+71h5Piq67P6Qi
         338g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681878276; x=1684470276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZRDCjTOkWMGElxrmUMljuv7R6aYKvTg/GiQ2WWUQLjA=;
        b=QNg0OFOHnPGBkkC8PsjBrlLVyJ3HssGq2kX6o7NfGsE167h67R77zZz3J90wEFILZF
         XG7MJfsvrrdligkLNT/CW7XsVOde2PrHw8w6vUg9eBvaVMofkIo8bmL7oowOxLwAjlP+
         oeY1xoCRhujccXiyjonh1uRzx3eZEx5v45xkdzdJUY55oferoB9hFgF85tztkNSVRVvA
         dY06wY32nROfBHne5GHm3/SKsHrStafUKI1KmXDIhLDp6x+IXUK4MtGYeS+P6OCr/Usz
         5UmWvBlJVwnQyj6v8/aJtv7ff6fMSB1n9eFDXMq63/vx4HS6SHi1Q+R2geCn6retFzX4
         jxYA==
X-Gm-Message-State: AAQBX9e6A3BNNMO116khEKtbue87Axff329mDpbNS7x5QUnJJT0goJha
	D7d+PU3rAh3JOOnloDzNVuM=
X-Google-Smtp-Source: AKy350afI02Fa3Acq0DNx6nJUWrX6aI7RY4q/vg2eOyv/5uPkMM5pF1SRDx4yrymqaBjzv9oWxjrTg==
X-Received: by 2002:a17:90a:fe8c:b0:246:f73c:3aba with SMTP id co12-20020a17090afe8c00b00246f73c3abamr1522019pjb.39.1681878276254;
        Tue, 18 Apr 2023 21:24:36 -0700 (PDT)
Received: from hackyzh-virtual-machine.localdomain ([58.34.53.146])
        by smtp.gmail.com with ESMTPSA id v8-20020a17090a088800b0024779068491sm380205pjc.26.2023.04.18.21.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 21:24:35 -0700 (PDT)
From: hackyzh002 <hackyzh002@gmail.com>
To: alexander.deucher@amd.com
Date: Wed, 19 Apr 2023 12:24:07 +0800
Message-Id: <20230419042407.69001-1-hackyzh002@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.215.174:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2C7DE3EB81
X-Spamd-Bar: --
X-MailFrom: hackyzh002@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RB45AHVV6XL5XNBOQWJVZZ3HQHD44WUJ
X-Message-ID-Hash: RB45AHVV6XL5XNBOQWJVZZ3HQHD44WUJ
X-Mailman-Approved-At: Wed, 03 May 2023 10:15:56 +0000
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, hackyzh002 <hackyzh002@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/2] drm/radeon: Fix integer overflow in radeon_cs_parser_init
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RB45AHVV6XL5XNBOQWJVZZ3HQHD44WUJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The type of size is unsigned, if size is 0x40000000, there will be an
integer overflow, size will be zero after size *= sizeof(uint32_t),
will cause uninitialized memory to be referenced later

Signed-off-by: hackyzh002 <hackyzh002@gmail.com>
---
 drivers/gpu/drm/radeon/radeon_cs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon_cs.c b/drivers/gpu/drm/radeon/radeon_cs.c
index 46a27ebf4..472c29050 100644
--- a/drivers/gpu/drm/radeon/radeon_cs.c
+++ b/drivers/gpu/drm/radeon/radeon_cs.c
@@ -270,7 +270,7 @@ int radeon_cs_parser_init(struct radeon_cs_parser *p, void *data)
 {
 	struct drm_radeon_cs *cs = data;
 	uint64_t *chunk_array_ptr;
-	unsigned size, i;
+	u64 size, i;
 	u32 ring = RADEON_CS_RING_GFX;
 	s32 priority = 0;
 
@@ -347,7 +347,7 @@ int radeon_cs_parser_init(struct radeon_cs_parser *p, void *data)
 				continue;
 		}
 
-		p->chunks[i].kdata = kvmalloc_array(size, sizeof(uint32_t), GFP_KERNEL);
+		p->chunks[i].kdata = kvcalloc(size, sizeof(uint32_t), GFP_KERNEL);
 		size *= sizeof(uint32_t);
 		if (p->chunks[i].kdata == NULL) {
 			return -ENOMEM;
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
