Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFBD6F55F0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:21:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 072C640306
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:21:03 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id CA3D53E923
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 12:23:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=iHj2EFKw;
	spf=pass (lists.linaro.org: domain of hackyzh002@gmail.com designates 209.85.214.179 as permitted sender) smtp.mailfrom=hackyzh002@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1a682eee3baso19529585ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 05:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681906991; x=1684498991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vuo1R6zgWP4V7fxSrNGqI53skR4NUxsCW4UKtSQFHoQ=;
        b=iHj2EFKwjqQG5zGuh91t/HLTjhn98+Tm/JgEUgdtKzQYUcMmigmjFwJZQ27nAG8Bnn
         RHiWrB3TM8X4DXmmFUxo4NXSXOgDWYjPdgXCG/SYRg/5s9pd4KEAOJnc20QtgnF8qg52
         AUf1b2vXcFFtExWm9wshnbebzGLoILPKk6KmWinlkzij5YLgVKCJ7g26LmkyIfbTFQqg
         FLt59XmV42XHJ8E+dQGIJaHimuxqMmRFmogeMWa+pdUIzr2GIVnbyyyvr0DFJqmTfMVp
         0L9i+faJHasd1uXPnVTW5t6+PMtY5Nt+W/N4+KxTV6QfESQ7rL+ImLHb+Q4igKn6JFDk
         v/TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681906991; x=1684498991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vuo1R6zgWP4V7fxSrNGqI53skR4NUxsCW4UKtSQFHoQ=;
        b=UsT/z7xW6IdgGFW25R6ntU8lUfAIIuXoGq9/GerPjDSbWODo9/iPqL1Wb5Wc88glxw
         5VrYBqPqq9o1rdxqh7hLbFtyu7sSkT9mvuy9LkEy9VyOl2964ouT+/cURJhyxeXbZILn
         Hab2jkXEXw2ZFe0Shc2F0TOXOmKbvhrsDT3YvDj5JBC3JtlPoloQUFySy3PVHFTw0EoN
         qSd8/CDlgRt9eJMlsIQpKxlWaf3VUQR7XjaAbyEvAQ/64P+pNTfabs/65IM895GSUjjo
         uB/PwMRfFhX+bkfjArI/bLbuaQJBBcj1NwEv9RQdRZDgNqB6R+85NyM9w75MCo8DaZMb
         ar3g==
X-Gm-Message-State: AAQBX9dWKa9WQWPnMMXsrgvRI2V3t4SilbdUBvxTiMLM7nWYW03rYTjQ
	P1+OzODCVJSyzpKziyH3kb0=
X-Google-Smtp-Source: AKy350ZOvvzEVtaSNhWFtkSL5aX841ukA5rD+bJ6S5wFb5ZiUTOGTwRiL0CFdwfo4kCozHg/35yMcw==
X-Received: by 2002:a17:902:c410:b0:1a1:f0ad:8657 with SMTP id k16-20020a170902c41000b001a1f0ad8657mr7207596plk.37.1681906990803;
        Wed, 19 Apr 2023 05:23:10 -0700 (PDT)
Received: from hackyzh-virtual-machine.localdomain ([112.64.53.154])
        by smtp.gmail.com with ESMTPSA id l11-20020a170902d34b00b0019c32968271sm9053670plk.11.2023.04.19.05.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 05:23:10 -0700 (PDT)
From: hackyzh002 <hackyzh002@gmail.com>
To: alexander.deucher@amd.com
Date: Wed, 19 Apr 2023 20:22:33 +0800
Message-Id: <20230419122233.3440-1-hackyzh002@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[112.64.53.154:received,209.85.214.179:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.179:from];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[12];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CA3D53E923
X-Spamd-Bar: ----
X-MailFrom: hackyzh002@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LNX5IBRVEU2JN7QBHJSO6OZZD4ABRUP6
X-Message-ID-Hash: LNX5IBRVEU2JN7QBHJSO6OZZD4ABRUP6
X-Mailman-Approved-At: Wed, 03 May 2023 10:16:13 +0000
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, hackyzh002 <hackyzh002@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 2/2] drm/amdgpu: Fix integer overflow in amdgpu_cs_pass1
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LNX5IBRVEU2JN7QBHJSO6OZZD4ABRUP6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The type of size is unsigned int, if size is 0x40000000, there will
be an integer overflow, size will be zero after size *= sizeof(uint32_t),
will cause uninitialized memory to be referenced later.

Signed-off-by: hackyzh002 <hackyzh002@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
index 08eced097..89bcacc65 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
@@ -192,7 +192,7 @@ static int amdgpu_cs_pass1(struct amdgpu_cs_parser *p,
 	uint64_t *chunk_array_user;
 	uint64_t *chunk_array;
 	uint32_t uf_offset = 0;
-	unsigned int size;
+	size_t size;
 	int ret;
 	int i;
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
