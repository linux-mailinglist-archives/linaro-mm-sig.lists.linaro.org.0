Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B50D76F55E6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:20:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3273402AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:20:13 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by lists.linaro.org (Postfix) with ESMTPS id 844333F08F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 08:58:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=UtlW7QeL;
	spf=pass (lists.linaro.org: domain of hackyzh002@gmail.com designates 209.85.216.48 as permitted sender) smtp.mailfrom=hackyzh002@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id sj1-20020a17090b2d8100b00247bd1a66d4so442562pjb.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 01:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681894686; x=1684486686;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3zpvMjDc8PUDIFIffBUt+CiFgxX1fPBud4Kt6HqJXz8=;
        b=UtlW7QeLG94NWEB+dlWHbmjRnFYxbJOyvIGIfJLxjiZJWo8SZyBMKGSu71KsdnwYkM
         5Embc4NaJ3SRopVgqDxHW19iPNF3jiDTDgNow4AnPZhfVsPAXcYRUDzE1Vg8kwHbGJUD
         Jul3ZOIWXSqS2g+Yx3G3JGBEeRD5s3faZmYLtYfgoeuGOtaIwe0inEdi+yDJ2XrC4o8H
         C6Fmym88uYZ4psi3ZY8pPDaFiFCq2RZWCtlWPWIPlglDjw9gTAEpgU/1MgyiFw6Rw5Y2
         F0XB+yzdy9HPo3WvfTOqm4b5GZvfeXDVeSU9m4fgJCGIpN5Emu8pXWkG/fnCjF7VARx6
         /heA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681894686; x=1684486686;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3zpvMjDc8PUDIFIffBUt+CiFgxX1fPBud4Kt6HqJXz8=;
        b=ZDrMVZPe7ARdlsKj3QWqK+Etq8RMArlzOfj9qyU9WzFaS57DaXjeaD2aekRn8w0kYZ
         zf1Kmc1cAFC85f8IGUv8ltc5Oh6egH3xsGQAL6G7tbGZcjPBEwbCNyv4Sn/tiAZtfpIW
         MvrV5a1UUNqQS6Ab+9JBRH283PkMIDwsJaCw+saIAfuTvYVpQGYEvGaERtiOAkhZ2FNn
         99fVe6Bk+97DGdWKObiPsUqojKvigjp5AkMH2lyMj8ODKAl0E3Drf5Rmp4QjU2TVCTwE
         phtzMwlB966O2ZSgTYIycM1zL2WrRXC7dhKxmlfUvgr7NU4T7eJEibOqqPQi7iNFNyQF
         rNqw==
X-Gm-Message-State: AAQBX9fUeCCWd2M+9qTvcqvHc3yb8Lj7jbuMdE1+qmwSoYX3Bpr09LMW
	rnhQkenLE5GTwIAyEza37xo=
X-Google-Smtp-Source: AKy350ZsGA0KS7CsW/PhUED2oIMNWfU0ei4iNIRQe4Ug65OBD1ljL1KiruI2NorA2j6a8NNhWpDYRA==
X-Received: by 2002:a05:6a20:5493:b0:ef:ecaf:ff6d with SMTP id i19-20020a056a20549300b000efecafff6dmr2062989pzk.12.1681894686508;
        Wed, 19 Apr 2023 01:58:06 -0700 (PDT)
Received: from hackyzh-virtual-machine.localdomain ([58.34.53.146])
        by smtp.gmail.com with ESMTPSA id r10-20020a63d90a000000b0051b72ef978fsm8144902pgg.20.2023.04.19.01.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 01:58:05 -0700 (PDT)
From: hackyzh002 <hackyzh002@gmail.com>
To: alexander.deucher@amd.com
Date: Wed, 19 Apr 2023 16:57:47 +0800
Message-Id: <20230419085747.4720-1-hackyzh002@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[58.34.53.146:received,209.85.216.48:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.48:from];
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
X-Rspamd-Queue-Id: 844333F08F
X-Spamd-Bar: ----
X-MailFrom: hackyzh002@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NMACQ2BEBULSMJA57WWUBDQ5DTHTWDDB
X-Message-ID-Hash: NMACQ2BEBULSMJA57WWUBDQ5DTHTWDDB
X-Mailman-Approved-At: Wed, 03 May 2023 10:16:12 +0000
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, hackyzh002 <hackyzh002@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/2] drm/radeon: Fix integer overflow in radeon_cs_parser_init
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NMACQ2BEBULSMJA57WWUBDQ5DTHTWDDB/>
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
 drivers/gpu/drm/radeon/radeon_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/radeon/radeon_cs.c b/drivers/gpu/drm/radeon/radeon_cs.c
index 46a27ebf4..8e12b406e 100644
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
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
