Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE716F55DE
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:19:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F7E73F959
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:19:16 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	by lists.linaro.org (Postfix) with ESMTPS id 2D2023EB81
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 04:52:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=d+4BWM18;
	spf=pass (lists.linaro.org: domain of hackyzh002@gmail.com designates 209.85.210.181 as permitted sender) smtp.mailfrom=hackyzh002@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-63b87d23729so1787791b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 21:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681879936; x=1684471936;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ek00L1cc21EOyKRafT/BGo0L28SeYIDeaJNfXSoDXCk=;
        b=d+4BWM18QNx9T8dgCdsk3UsYNuvnf21SDCQFyquG/W2sADMBujm+iIWajisCKuKoxG
         R1VSJCKr1sX5EaaIxiWJ9XO0RVuA33BMi4vOnetn4QAV09WkxRK8PCOkuIi6ItRXhGKh
         q8A6NjgJujvmHHhkGqmnks1KiR23uvckaBpED9UuP27afZdSTNWqqCnJyt02KL3MDhJ7
         v909j7ReBDq8PNdCrjoqk7IwZdirR07mN/VwA4lJsdBY6K6u3pjpZIdiKGC0536W6i7q
         pzXBMTKpacWNp/o5Nj4/aCBbCz6k8k/EhmtDUpnzDe3V4oiVzNUPB2OYLhCtphGf28uy
         9AGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681879936; x=1684471936;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ek00L1cc21EOyKRafT/BGo0L28SeYIDeaJNfXSoDXCk=;
        b=S2bhem1s6rBTyih6GKGr87JYEnLam/z5apLy0Xd4XspgxtFiWtMZ5nV6tWCUIAclT2
         A4vBNOHsSvb1hctXzH5eLVz2MOZ6cGLb57eqmjgZUILADuTP59C9JfuJzCIfLOLqE+rU
         JDXFTIaNtkT57fAX/STYmcHMfTvfPIeUjGZzsNYkPgb2RfdvtSd9is3K2x+PGf8X9opp
         pxCv/0dc3cATvab0ry+dN6RunrL1Q0q98mxPjSDtbuEVw6kfOhi1OIpudzpL3cxectIV
         +DHOmRM+PLJhTUcmmRksQnyykhyTKTgYfjV73OxuxvCsdmg6uqaLkwCHgbgiHNMG4N4d
         1UcQ==
X-Gm-Message-State: AAQBX9fcVpATGSsG+Rmti81cwYqn63F610cqZYKSCtC4+JK3rjpmJclo
	ooTqIvNYGfnvlvBktcTDbCM=
X-Google-Smtp-Source: AKy350aYkXkO5nxw+E17pu3EKWjttrdTBgY/iJvBuAu1+xFva4iSl0hDCqJM6NsevZ9568vkBqdsJg==
X-Received: by 2002:a17:902:8503:b0:19e:500b:517a with SMTP id bj3-20020a170902850300b0019e500b517amr3719378plb.69.1681879936118;
        Tue, 18 Apr 2023 21:52:16 -0700 (PDT)
Received: from hackyzh-virtual-machine.localdomain ([58.34.53.146])
        by smtp.gmail.com with ESMTPSA id ix9-20020a170902f80900b001a64dbfc5d7sm10433184plb.145.2023.04.18.21.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 21:52:15 -0700 (PDT)
From: hackyzh002 <hackyzh002@gmail.com>
To: alexander.deucher@amd.com
Date: Wed, 19 Apr 2023 12:51:57 +0800
Message-Id: <20230419045157.69829-1-hackyzh002@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.181:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2D2023EB81
X-Spamd-Bar: --
X-MailFrom: hackyzh002@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VH45CHDGGZSYR7Q5XRBKTKI3YF2VOKGJ
X-Message-ID-Hash: VH45CHDGGZSYR7Q5XRBKTKI3YF2VOKGJ
X-Mailman-Approved-At: Wed, 03 May 2023 10:16:12 +0000
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, hackyzh002 <hackyzh002@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/2] drm/amdgpu: Fix integer overflow in amdgpu_cs_pass1
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VH45CHDGGZSYR7Q5XRBKTKI3YF2VOKGJ/>
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
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
index 08eced097..c17b3af85 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
@@ -192,7 +192,7 @@ static int amdgpu_cs_pass1(struct amdgpu_cs_parser *p,
 	uint64_t *chunk_array_user;
 	uint64_t *chunk_array;
 	uint32_t uf_offset = 0;
-	unsigned int size;
+	uint64_t int size;
 	int ret;
 	int i;
 
@@ -235,7 +235,7 @@ static int amdgpu_cs_pass1(struct amdgpu_cs_parser *p,
 		size = p->chunks[i].length_dw;
 		cdata = u64_to_user_ptr(user_chunk.chunk_data);
 
-		p->chunks[i].kdata = kvmalloc_array(size, sizeof(uint32_t),
+		p->chunks[i].kdata = kvcalloc(size, sizeof(uint32_t),
 						    GFP_KERNEL);
 		if (p->chunks[i].kdata == NULL) {
 			ret = -ENOMEM;
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
