Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9CA6F55E5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:19:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79BDB3EC67
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:19:54 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by lists.linaro.org (Postfix) with ESMTPS id A65DC3F08F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 08:27:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=jDdzGmKU;
	spf=pass (lists.linaro.org: domain of hackyzh002@gmail.com designates 209.85.210.177 as permitted sender) smtp.mailfrom=hackyzh002@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-63b7096e2e4so2384921b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 01:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681892852; x=1684484852;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DZ6u9/CgweQ6jEZks/xNcF/T3qE4BW1KJoYmfltjmnY=;
        b=jDdzGmKUWx25EHLZZrgXq7aDt3wKPN6KbvpQblP4OzUqawFkruB9AZ0pTXtxj5uflb
         0Eg93b+jYxUjYMmYx/jMH4zSUgSvb3+F7scJZWp3r5jgRL+FYxXVDlT3UnX/DsD7JWyg
         2qfZvuXWGG4yxj7YwEr76JeXl8kZVrx7j2kLXxEZs4Ak6V9SYdtll2nEamGBQ2zh4sF5
         g/c4562wmL3t06jZ6GIixFAYw2GwQaEHdKqyq+QRcx+tpC6GAqm5xe9aetaBF9Fdrr5i
         sTEuBvnoZQr7Pm+C8xZTSVDKZS0eBfi7066zLUowoXXFsrwf36jV7pidMne/kJfXRRKB
         nmqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681892852; x=1684484852;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DZ6u9/CgweQ6jEZks/xNcF/T3qE4BW1KJoYmfltjmnY=;
        b=icA8QT9aKM7k90Buw3GVipt9UJ0BcRkCmvUgQy2VkXqntw8XLDMF+iWX9iRy3P/ktO
         HcM3lI0KhywAUg4tT9Mo2fUi9jlRtP1MWgQePLiUpcj03sMYgItVmTzSo+0V4nDTr5oH
         l2nw4PHVp4XE8UB+0T1pdONqgG57TC1ZCMceZYaUnBi7AEr/mX6csVnc96O1Ngap9JPU
         /ajrdYh8X3JADBRQGbY2etQ3tijIJPXa3uE7SMWorfYg1N31hYh0MLZX7dpptaEUbGNu
         WUz13m28OPppJCL1bZoAlqcBCi+rK+qfrmKRiahw+G0pSsPOwDETvQDbnmo07HGaEeaU
         NmuA==
X-Gm-Message-State: AAQBX9e0W0Z5F37WA/yIGHCEdjRxG/x6GhoCPCcCKGCN1JbkmI0pJtlW
	2uG9LOpzLrodiCeAXIRox/8=
X-Google-Smtp-Source: AKy350ag1YslGcDUesBAO6cVpS0tdiEfRtWuJuAlBJdYCw1S/UrhRm6CndcjR0xKt+ywr/rYXpxrtg==
X-Received: by 2002:a17:903:708:b0:1a6:a375:cb49 with SMTP id kk8-20020a170903070800b001a6a375cb49mr3818668plb.39.1681892851691;
        Wed, 19 Apr 2023 01:27:31 -0700 (PDT)
Received: from hackyzh-virtual-machine.localdomain ([58.34.53.146])
        by smtp.gmail.com with ESMTPSA id d19-20020a170902b71300b001a6ebc39fd9sm4411339pls.309.2023.04.19.01.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 01:27:31 -0700 (PDT)
From: hackyzh002 <hackyzh002@gmail.com>
To: alexander.deucher@amd.com
Date: Wed, 19 Apr 2023 16:27:05 +0800
Message-Id: <20230419082705.4110-1-hackyzh002@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.177:from];
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
X-Rspamd-Queue-Id: A65DC3F08F
X-Spamd-Bar: --
X-MailFrom: hackyzh002@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7WKUHSOJ4Z5VAL3JOE4ULKOYBUHRHQGE
X-Message-ID-Hash: 7WKUHSOJ4Z5VAL3JOE4ULKOYBUHRHQGE
X-Mailman-Approved-At: Wed, 03 May 2023 10:16:12 +0000
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, hackyzh002 <hackyzh002@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH V2 2/2] drm/amdgpu: Fix integer overflow in amdgpu_cs_pass1
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7WKUHSOJ4Z5VAL3JOE4ULKOYBUHRHQGE/>
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
+	size_t size;
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
