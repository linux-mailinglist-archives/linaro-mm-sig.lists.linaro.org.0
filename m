Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1D3749EA7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 16:11:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 060D6411F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 14:11:20 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by lists.linaro.org (Postfix) with ESMTPS id B06F140F0B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Jul 2023 12:38:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Y7L2k2zU;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.221.50 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3143b88faebso608135f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 06 Jul 2023 05:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688647079; x=1691239079;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F+HUvJ4QTDevtKTASgsl+F3VuwhUQ02Z1WI6sZoHENY=;
        b=Y7L2k2zULEUk2RZkC8o07CD393u9MlrprQK6eCqsaQm8oGvGshM4kpxXUkHfhKO+6/
         QrW0NAZz9RiGY4vTvZulHuyoW6duDzxM474kdiW7bSl5AlSX/XiBDZ5E0Y6RSDo7zGhn
         X201ZRb8prs1psvkVTyvqZlHqP0Q7z9JUK9MPGoapX5+BHU9V8jrzWojlyKQKWXSoJAc
         4Q3MU4gnhk8XdAVH8o2fbfkimoaQ/56A6SEVqxcTmp9emVfUOIh6NJ113EbFaP4KsYNF
         xlewu/EqBTb7T1ZJjwHbtJFx9RVlp1RtsChE07jHCg4sSQRyLYHk+M5VK+Vfe1Wh4Kk9
         5ZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688647079; x=1691239079;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F+HUvJ4QTDevtKTASgsl+F3VuwhUQ02Z1WI6sZoHENY=;
        b=gNNoktNM+37NoVlcEemwjoz0BlUL0a6oxH4S+8t7MDVjQleuBlLpiDV8vqmvDGCJj8
         3OLdHaJo6d9t0I6xOfsAneg7kruOyAicpKufqbh4g5yhJlc6Pgt3dUjEyKll+U3hl75k
         tQ3kKAsbGZMFeAZEF70inW5jiVzCyOf4j3TMZSH6tNSXu5AD9KVgVMVfkrucrUifWamz
         ohULlsjmPNxBTplNA/KUWxAJSnHGqRQboqVoy/iyixblhnDMa+UMOQfy0a5ryxexqYo4
         I/00fAMoSnGYErFyl6TQlU/V2XSzIZgHPAYzk2GulSZyw7uXw7qw9YCc7R6KdTj4tuX8
         9yFw==
X-Gm-Message-State: ABy/qLYboU8oPHwG/OFvSxuek3H4I5XWlcrXvNYQqP9jn+OxO/D5LOS2
	ucAwAkoBUXb49yPLCWapd8yVJWYV
X-Google-Smtp-Source: APBJJlGkLkipEot/qaG0ulR5j4ByuxASZM5urGdZalBCHsWht3pKbPMo60yuiZKbmAXZ7Tgw94X4Pw==
X-Received: by 2002:adf:f989:0:b0:313:fcea:db06 with SMTP id f9-20020adff989000000b00313fceadb06mr1437833wrr.12.1688647079678;
        Thu, 06 Jul 2023 05:37:59 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id o5-20020a056000010500b0030c4d8930b1sm1780435wrx.91.2023.07.06.05.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 05:37:57 -0700 (PDT)
Date: Thu, 6 Jul 2023 15:37:51 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <b09f1996-3838-4fa2-9193-832b68262e43@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Spamd-Result: default: False [-5.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[102.36.222.112:received,209.85.221.50:from];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[padovan.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B06F140F0B
X-Spamd-Bar: -----
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ID5UCAWFS4OTPWT6Z4TP5GZWQ2RBY3YK
X-Message-ID-Hash: ID5UCAWFS4OTPWT6Z4TP5GZWQ2RBY3YK
X-Mailman-Approved-At: Thu, 06 Jul 2023 14:10:58 +0000
CC: Gustavo Padovan <gustavo@padovan.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: fix an error pointer vs NULL bug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ID5UCAWFS4OTPWT6Z4TP5GZWQ2RBY3YK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Smatch detected potential error pointer dereference.

    drivers/gpu/drm/drm_syncobj.c:888 drm_syncobj_transfer_to_timeline()
    error: 'fence' dereferencing possible ERR_PTR()

The error pointer comes from dma_fence_allocate_private_stub().  One
caller expected error pointers and one expected NULL pointers.  Change
it to return NULL and update the caller which expected error pointers,
drm_syncobj_assign_null_handle(), to check for NULL instead.

Fixes: f781f661e8c9 ("dma-buf: keep the signaling time of merged fences v3")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v2: Fix it in dma_fence_allocate_private_stub() instead of
   __dma_fence_unwrap_merge().


 drivers/dma-buf/dma-fence.c   | 2 +-
 drivers/gpu/drm/drm_syncobj.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index ad076f208760..8aa8f8cb7071 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -160,7 +160,7 @@ struct dma_fence *dma_fence_allocate_private_stub(ktime_t timestamp)
 
 	fence = kzalloc(sizeof(*fence), GFP_KERNEL);
 	if (fence == NULL)
-		return ERR_PTR(-ENOMEM);
+		return NULL;
 
 	dma_fence_init(fence,
 		       &dma_fence_stub_ops,
diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 04589a35eb09..e592c5da70ce 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -355,8 +355,8 @@ static int drm_syncobj_assign_null_handle(struct drm_syncobj *syncobj)
 {
 	struct dma_fence *fence = dma_fence_allocate_private_stub(ktime_get());
 
-	if (IS_ERR(fence))
-		return PTR_ERR(fence);
+	if (!fence)
+		return -ENOMEM;
 
 	drm_syncobj_replace_fence(syncobj, fence);
 	dma_fence_put(fence);
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
