Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3804D6F61E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 May 2023 01:15:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E0F44422C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 23:15:20 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by lists.linaro.org (Postfix) with ESMTPS id 1D1173ED72
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 May 2023 23:15:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of sukrut.bellary@gmail.com designates 209.85.210.176 as permitted sender) smtp.mailfrom=sukrut.bellary@gmail.com;
	dmarc=none
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-63b5ce4f069so6462949b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 May 2023 16:15:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683155715; x=1685747715;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eff3ZaiYOUbIPy6KT7ZXvjLKnlTgyEyzsJx1SVSksmo=;
        b=Tlp21FnVWotr/txnZhI8lsmnC++Mvhlffo+AaD7Dx+FV5BaCC14QEYkNv7vELfJ9EX
         tfUHYUaZpbWaLQj8Z2GY7EAUBiwbfPu/yMwzs8DT6iAi3vbbqhv4T7LVIApVg00gg8q4
         1Hf0HpX3Uk4ABBI7dcfCkQ+xtLIwlKMFmIeSJswZKBVqxMofCs6J5YIZFfPutXDpSZV6
         0jfmg+1Z5NlGs9wSLePRQkeCOuHb9DjYGuIyMtXT0H4aT56bLWGx5uX1DEBDoiHQzXIr
         ofs+TgncncWIbGs36PpeFpI2h215PXuMtNecd3iD1Hqt/0AnE5WneM5yYeOGqT0Ni/3r
         EM+w==
X-Gm-Message-State: AC+VfDwuzYJFh7wI8HTkukWAJqOs4tRpWVXfgLC616m2FVEiOnH1SKDv
	eJAnGAmQmo1MZ9+ltyI+snQ=
X-Google-Smtp-Source: ACHHUZ58hTtUY+QQn8NPCJbbQAlRhY+rpBOQNZydZYWYHqcJ68pLXlzqj57cIjvp0rpz7qeKe2oKbQ==
X-Received: by 2002:a05:6a21:2d09:b0:cc:5f27:d003 with SMTP id tw9-20020a056a212d0900b000cc5f27d003mr149179pzb.56.1683155714954;
        Wed, 03 May 2023 16:15:14 -0700 (PDT)
Received: from dev-linux.lan (cpe-70-95-21-110.san.res.rr.com. [70.95.21.110])
        by smtp.gmail.com with ESMTPSA id m21-20020a62a215000000b0063f33e216dasm20555097pff.96.2023.05.03.16.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 16:15:14 -0700 (PDT)
From: Sukrut Bellary <sukrut.bellary@linux.com>
To: alexander.deucher@amd.com,
	christian.koenig@amd.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	Xinhui.Pan@amd.com
Date: Wed,  3 May 2023 16:15:07 -0700
Message-Id: <20230503231507.279172-1-sukrut.bellary@linux.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	FORGED_SENDER(0.30)[sukrut.bellary@linux.com,sukrutbellary@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	URIBL_BLOCKED(0.00)[mail-pf1-f176.google.com:rdns,mail-pf1-f176.google.com:helo];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux.com];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sukrut.bellary@linux.com,sukrutbellary@gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.176:from];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch];
	NEURAL_SPAM(0.00)[0.371];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	R_DKIM_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1D1173ED72
X-Spamd-Bar: -
Message-ID-Hash: MPB6IBS4FVBODQ3EEJJG2XTPIBHOZESK
X-Message-ID-Hash: MPB6IBS4FVBODQ3EEJJG2XTPIBHOZESK
X-MailFrom: sukrut.bellary@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sukrut Bellary <sukrut.bellary@linux.com>, sumit.semwal@linaro.org, Hawking.Zhang@amd.com, Jiadong.Zhu@amd.com, ray.huang@amd.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm:amd:amdgpu: Fix missing buffer object unlock in failure path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MPB6IBS4FVBODQ3EEJJG2XTPIBHOZESK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

smatch warning -
1) drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:3615 gfx_v9_0_kiq_resume()
warn: inconsistent returns 'ring->mqd_obj->tbo.base.resv'.

2) drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c:6901 gfx_v10_0_kiq_resume()
warn: inconsistent returns 'ring->mqd_obj->tbo.base.resv'.

Signed-off-by: Sukrut Bellary <sukrut.bellary@linux.com>
---
 drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c | 4 +++-
 drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c  | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c
index 8bd07ff59671..66d5c5d68454 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c
@@ -6891,8 +6891,10 @@ static int gfx_v10_0_kiq_resume(struct amdgpu_device *adev)
 		return r;
 
 	r = amdgpu_bo_kmap(ring->mqd_obj, (void **)&ring->mqd_ptr);
-	if (unlikely(r != 0))
+	if (unlikely(r != 0)) {
+		amdgpu_bo_unreserve(ring->mqd_obj);
 		return r;
+	}
 
 	gfx_v10_0_kiq_init_queue(ring);
 	amdgpu_bo_kunmap(ring->mqd_obj);
diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
index bce6919d666a..d5715d8a4128 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
@@ -3617,8 +3617,10 @@ static int gfx_v9_0_kiq_resume(struct amdgpu_device *adev)
 		return r;
 
 	r = amdgpu_bo_kmap(ring->mqd_obj, (void **)&ring->mqd_ptr);
-	if (unlikely(r != 0))
+	if (unlikely(r != 0)) {
+		amdgpu_bo_unreserve(ring->mqd_obj);
 		return r;
+	}
 
 	gfx_v9_0_kiq_init_queue(ring);
 	amdgpu_bo_kunmap(ring->mqd_obj);
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
