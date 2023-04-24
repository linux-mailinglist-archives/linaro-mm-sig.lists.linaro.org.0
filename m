Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FF76F55F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:22:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E46283F6F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:22:08 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by lists.linaro.org (Postfix) with ESMTPS id 16E693EC73
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Apr 2023 05:59:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of sukrut.bellary@gmail.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=sukrut.bellary@gmail.com;
	dmarc=none
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1a66911f5faso34058235ad.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Apr 2023 22:59:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682315960; x=1684907960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rZ2SfSlApMPG0JQkvL0AAuqyfaSDxsc4TPleUHWHX54=;
        b=lAQj050KpT8P5vn83RGwvlkdPsG4VXi6dh1/exNVjDezX8aPInVOHVZLw73nYiK5vs
         Pkrfd+PHTm2P9DJChw1maolBkMfv1uGFFOeE22ktH74pg9S4uMwaOqAuDXWc07bsCUvr
         1IfSn2OCbdN1N5YTOVtUBSymT/piMziPjM2HcQfE5sB7r+0MRv4Fg81RZJwusYXzwNU/
         D7E/ElGS0MdbqXbXBeVzsKVoBy0/v8iK3nUgjC4DSgRS2x/ISFLffepcg1S2y0eQ2ksB
         RIc85OWU4qwW+jg9n8GahLpZfKrUdD2hbGg756VvLe2qEsRHe8Z1y599UaS7QXM1Hx60
         VJgQ==
X-Gm-Message-State: AAQBX9fjD1nhVeW5LukwtRpxeQjOwESARB5U2SKwgJpp+XUQEV+TEwRa
	afj82CxDw+CYBlBqK49dhfU=
X-Google-Smtp-Source: AKy350bZL1arZEunooIRRXsnKZi0bPLlYztinlCxzZ/LrCosNr+NxtGmjW+3SAzNg1ES3iuKdejZ3A==
X-Received: by 2002:a17:903:30c3:b0:1a6:f1f3:e475 with SMTP id s3-20020a17090330c300b001a6f1f3e475mr10319987plc.55.1682315960069;
        Sun, 23 Apr 2023 22:59:20 -0700 (PDT)
Received: from dev-linux.lan (cpe-70-95-21-110.san.res.rr.com. [70.95.21.110])
        by smtp.gmail.com with ESMTPSA id y7-20020a170902d64700b001a979121444sm850808plh.207.2023.04.23.22.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Apr 2023 22:59:19 -0700 (PDT)
From: Sukrut Bellary <sukrut.bellary@linux.com>
To: daniel@ffwll.ch,
	airlied@gmail.com,
	sumit.semwal@linaro.org,
	Hawking.Zhang@amd.com,
	Julia.Lawall@inria.fr,
	dri-devel@lists.freedesktop.org
Date: Sun, 23 Apr 2023 22:59:10 -0700
Message-Id: <20230424055910.15683-1-sukrut.bellary@linux.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	FORGED_SENDER(0.30)[sukrut.bellary@linux.com,sukrutbellary@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.180:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.305];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,linaro.org,amd.com,inria.fr,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sukrut.bellary@linux.com,sukrutbellary@gmail.com];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[linux.com];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 16E693EC73
X-Spamd-Bar: -
X-MailFrom: sukrut.bellary@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WHV6BFGV3HDH7NSXBNBOXP6GSMGDMKLE
X-Message-ID-Hash: WHV6BFGV3HDH7NSXBNBOXP6GSMGDMKLE
X-Mailman-Approved-At: Wed, 03 May 2023 10:16:51 +0000
CC: Sukrut Bellary <sukrut.bellary@linux.com>, alexander.deucher@amd.com, christian.koenig@amd.com, Xinhui.Pan@amd.com, amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm:amd:amdgpu: Fix missing bo unlock in failure path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WHV6BFGV3HDH7NSXBNBOXP6GSMGDMKLE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

smatch warning - inconsistent handling of buffer object reserve
and unreserve.

Signed-off-by: Sukrut Bellary <sukrut.bellary@linux.com>
---
 drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c
index 278416acf060..5de44d7e92de 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c
@@ -4686,8 +4686,10 @@ static int gfx_v8_0_kiq_resume(struct amdgpu_device *adev)
 		return r;
 
 	r = amdgpu_bo_kmap(ring->mqd_obj, &ring->mqd_ptr);
-	if (unlikely(r != 0))
+	if (unlikely(r != 0)) {
+		amdgpu_bo_unreserve(ring->mqd_obj);
 		return r;
+	}
 
 	gfx_v8_0_kiq_init_queue(ring);
 	amdgpu_bo_kunmap(ring->mqd_obj);
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
