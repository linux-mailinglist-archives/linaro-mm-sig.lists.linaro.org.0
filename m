Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 373C1720E8A
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  3 Jun 2023 09:44:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC54843BB1
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  3 Jun 2023 07:43:58 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	by lists.linaro.org (Postfix) with ESMTPS id 14B013EA46
	for <linaro-mm-sig@lists.linaro.org>; Sat,  3 Jun 2023 07:43:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=HdR32jWE;
	spf=pass (lists.linaro.org: domain of lm0963hack@gmail.com designates 209.85.210.169 as permitted sender) smtp.mailfrom=lm0963hack@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-64d61fff78aso354546b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 03 Jun 2023 00:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685778233; x=1688370233;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AWur87b6+FWCBKqxfBacalad+HJLdADtjiXHWwWG+kk=;
        b=HdR32jWEiMDgRFNHZ4AmO+HfNOYRhIeMt1Z5uNTHesSQqHDELs6TlofSvDyhAYT35y
         JtaJAitoMYef8byzb4Q/v3Q1X37KaWjsPrprQlD57U3+I6XKSx204zCQ1EOG7U21K4fq
         fXT6MUWv5fX/6d68aknWQA62HaAXaJ7DT2OMuNznhhusSLzEaG5OodKAGVCBaeTD9In5
         UhGE6Caok7XVhyUI2FU8bRU0U+QCu7mWwwuYcu4PH+H+U4yRVxt3yqk20JfkptJRMas7
         0UZzD5imjL3NijdOtD+bWCh0OhMtk0o+uTjgUT+aeEfbUcXYkTQbxshWNa3CPUXt94Qk
         PETw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685778233; x=1688370233;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AWur87b6+FWCBKqxfBacalad+HJLdADtjiXHWwWG+kk=;
        b=Hu3wdkHxzJcp4dhsA8VfsQII+byGurACQZWd7f73Gex0i/P0m3QybnO+/dXeZPxT1Y
         9GjZKJcdG9os8fO6AJ3gAgbDyvnkr0+IXuG6IC2UsoqOwzwrJitnkU7VUmWcss5FRvJG
         O1ZBl/RxLkGs37pN4wiNtC9NJ+xVf/IIz6hVm83acmO9VBThf/UOihg9Gc3gmH2DrMVs
         pzZTVBZua8ICFJX1m6FVoLjAGA6R2zpOHKupqXKgUWpZEqeCwCEb7dUejpdR4mwNQ7b6
         D+Yz1OrVIIs35jxQovkk05lqAcB8J+0e45yq9KTz+NAeEb04eqtMGlnmNnf1gYy/NRco
         Ljdw==
X-Gm-Message-State: AC+VfDx63h5bU65rv9aZQitsP/yOba7ZWg/q0Gj2ed05bN/j6/ROUJ96
	4OpwPigVTIXw0w4UEghHlY4=
X-Google-Smtp-Source: ACHHUZ7Sb3282pwyR3Z2zP7ICZ4Es7PNecGCmDTkrXI02OgZnCeM/hb458Wo12XIa+dX4RK3fGmPTQ==
X-Received: by 2002:a17:902:ecc5:b0:1ae:1364:6086 with SMTP id a5-20020a170902ecc500b001ae13646086mr12068845plh.2.1685778232982;
        Sat, 03 Jun 2023 00:43:52 -0700 (PDT)
Received: from ubuntu.localdomain ([183.208.21.185])
        by smtp.gmail.com with ESMTPSA id 12-20020a170902c10c00b001afd275e186sm2525846pli.286.2023.06.03.00.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 00:43:52 -0700 (PDT)
From: Min Li <lm0963hack@gmail.com>
To: alexander.deucher@amd.com
Date: Sat,  3 Jun 2023 15:43:45 +0800
Message-Id: <20230603074345.17907-1-lm0963hack@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[183.208.21.185:received,209.85.210.169:from];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.169:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.981];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 14B013EA46
X-Spamd-Bar: ----
Message-ID-Hash: YOQA56HZXZITL7YNZG5Q2M7TQFOUKULM
X-Message-ID-Hash: YOQA56HZXZITL7YNZG5Q2M7TQFOUKULM
X-MailFrom: lm0963hack@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] drm/radeon: fix race condition UAF in  radeon_gem_set_domain_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YOQA56HZXZITL7YNZG5Q2M7TQFOUKULM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Userspace can race to free the gobj(robj converted from), robj should not
be accessed again after drm_gem_object_put, otherwith it will result in
use-after-free.

Signed-off-by: Min Li <lm0963hack@gmail.com>
---
Changes in v2:
- Remove unused robj, avoid compile complain

 drivers/gpu/drm/radeon/radeon_gem.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/radeon/radeon_gem.c b/drivers/gpu/drm/radeon/radeon_gem.c
index bdc5af23f005..d3f5ddbc1704 100644
--- a/drivers/gpu/drm/radeon/radeon_gem.c
+++ b/drivers/gpu/drm/radeon/radeon_gem.c
@@ -459,7 +459,6 @@ int radeon_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	struct radeon_device *rdev = dev->dev_private;
 	struct drm_radeon_gem_set_domain *args = data;
 	struct drm_gem_object *gobj;
-	struct radeon_bo *robj;
 	int r;
 
 	/* for now if someone requests domain CPU -
@@ -472,13 +471,12 @@ int radeon_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 		up_read(&rdev->exclusive_lock);
 		return -ENOENT;
 	}
-	robj = gem_to_radeon_bo(gobj);
 
 	r = radeon_gem_set_domain(gobj, args->read_domains, args->write_domain);
 
 	drm_gem_object_put(gobj);
 	up_read(&rdev->exclusive_lock);
-	r = radeon_gem_handle_lockup(robj->rdev, r);
+	r = radeon_gem_handle_lockup(rdev, r);
 	return r;
 }
 
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
