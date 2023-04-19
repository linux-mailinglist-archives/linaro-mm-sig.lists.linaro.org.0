Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EE56F55EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:20:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53392402AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:20:33 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by lists.linaro.org (Postfix) with ESMTPS id CF83A3E923
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 12:22:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=M3A9a6Wt;
	spf=pass (lists.linaro.org: domain of hackyzh002@gmail.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=hackyzh002@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id kx14so8232818pjb.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 05:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681906943; x=1684498943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Cvi/8BFVMUmJHt4WjuHDaXoszJBRcvvbnSWyynNb4dw=;
        b=M3A9a6WtOWXdYHHcfybW8ymSEnpEjD5R0HfAB1fZbrJ4eb18z3BbaIQkiZch+E3XFN
         gtImBttegWoB8LCoLFNJDhiiSl267YU1V1Nsc33I4Y18p03z0gGfjf/VdKUhfjZcBXD5
         aq+woQSFxs2Vu2JdQq610eO1TMJ0DviQoiqjfPoAGc/JAkBZ7fiCJzgpbt/FhH5BE7Zm
         0vjqLsxUHKPd4lYUtp5GXOSKExiXmujz3dv9bAp68j4aoXlww1GZg/PJ3faT06bwcuTO
         4QQaNsK1vvXfQuNxUKLhbD5rkeXzfHeIk527XpKrudr38a8q5hrfpyRQWEWtLb0bfx1u
         1w9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681906943; x=1684498943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cvi/8BFVMUmJHt4WjuHDaXoszJBRcvvbnSWyynNb4dw=;
        b=eeh5ab3WzinIJo3OdPI3+Nwq2fgYerlLDqB4DlW1rx04M9O+uWpuMpC+v/HuPhJ6dF
         iwS7eW4r3bQ03IQS08OZNwU5Qll4ibZF+FtKFt+kyrR52UtD0JUb1teRLwUs3Xwpoxow
         Lsee8ri7gAju4+5WgV8AsORu4MOz2+X/VA+NOS4D0t6XJsCZvvzfabi67gXExTmxZfRG
         Pgj1XHFI+95xuZAqBW3IpP0WJ4EqiohAEbu2a7Hn2mFztMiahpOA3W60F3EOBaBdmAFF
         03jWze4y+LAwgN3nLfd2d5YnQQB0CcP6Fsa6zLY7NKmhY9aGBtE6GuAFVuR1CHzYWNF6
         WpGw==
X-Gm-Message-State: AAQBX9euwnUPkGruFNhJeCP421wcHFpAfPsbiqVzLuYd5nhbyXU5OUNA
	Hja8vsOk80PcSo6rjQyAqyw=
X-Google-Smtp-Source: AKy350YunIiQ3rSxoOx6P/gwromJ6KqxNFKy+BHVTeuXJi6xVHlbz9D1gBHrAJqbGAdA5qNa2rmVAg==
X-Received: by 2002:a05:6a20:3d1a:b0:ee:7694:f069 with SMTP id y26-20020a056a203d1a00b000ee7694f069mr3643470pzi.41.1681906942789;
        Wed, 19 Apr 2023 05:22:22 -0700 (PDT)
Received: from hackyzh-virtual-machine.localdomain ([112.64.53.154])
        by smtp.gmail.com with ESMTPSA id ft2-20020a17090b0f8200b002471f34d5ddsm1279106pjb.55.2023.04.19.05.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 05:22:22 -0700 (PDT)
From: hackyzh002 <hackyzh002@gmail.com>
To: alexander.deucher@amd.com
Date: Wed, 19 Apr 2023 20:20:58 +0800
Message-Id: <20230419122058.3420-1-hackyzh002@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[112.64.53.154:received,209.85.216.50:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.50:from];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CF83A3E923
X-Spamd-Bar: ----
X-MailFrom: hackyzh002@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BSA4NJHQJ3GSBINJC4VEBU6NLDCCPGUO
X-Message-ID-Hash: BSA4NJHQJ3GSBINJC4VEBU6NLDCCPGUO
X-Mailman-Approved-At: Wed, 03 May 2023 10:16:13 +0000
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, hackyzh002 <hackyzh002@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V3 1/2] drm/radeon: Fix integer overflow in radeon_cs_parser_init
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BSA4NJHQJ3GSBINJC4VEBU6NLDCCPGUO/>
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
 drivers/gpu/drm/radeon/radeon_cs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/radeon/radeon_cs.c b/drivers/gpu/drm/radeon/radeon_cs.c
index 46a27ebf4..a6700d727 100644
--- a/drivers/gpu/drm/radeon/radeon_cs.c
+++ b/drivers/gpu/drm/radeon/radeon_cs.c
@@ -270,7 +270,8 @@ int radeon_cs_parser_init(struct radeon_cs_parser *p, void *data)
 {
 	struct drm_radeon_cs *cs = data;
 	uint64_t *chunk_array_ptr;
-	unsigned size, i;
+	u64 size;
+	unsigned i;
 	u32 ring = RADEON_CS_RING_GFX;
 	s32 priority = 0;
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
