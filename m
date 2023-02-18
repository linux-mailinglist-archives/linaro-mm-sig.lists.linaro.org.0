Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A0F69BCA3
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 22:19:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A8324423B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 21:19:32 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id 8DE2F44239
	for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 21:16:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=HlVIEobO;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.44 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id s22-20020a17090a075600b0023127b2d602so1480360pje.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 13:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LJRWjyogOQnJ+5yTXZeR/CA8uKgjfGlQ9M7/4cay494=;
        b=HlVIEobOB1fK4orz/vfjScfvfTmsM2Ff4tRZMVa4xdM5sCf4zF5X+pa/NEvV0jRFap
         d96y+vkl2FVlKyaS9S7zCK5ePnuhaaEY0SmBx5WF6VNh/A+Ddw4lzPwCsRykF7v5tW+G
         j6OTAh+IKDR2F+7ntwLsA2YAPfoL15U9CCJgJRqqpH77DSuZ6QgB7jeDf4EuDi1zovoz
         WqdVKpv8e/55Xn9GYpUy3oewxQ91CfDFS/Ljoeg0C7AuiGQkPCu8IGY7ptZcCfOFyu0F
         3XanlgorSS20WKL00Ktx8XMMNFwITyfSWzjmfWs+jSzPH1rSFkjSLEdZ6yYHveznktpt
         eclw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LJRWjyogOQnJ+5yTXZeR/CA8uKgjfGlQ9M7/4cay494=;
        b=vak+S581mL/9swznOdwOwJt+1hWJnlfyUMoBrWHvAKOBhH8Mph2PwO/E7+81FYmN4H
         +q+TNQpnzPDnvWbeJFkVlR+lCo2NQkHBNO8aOEZJLz3TaBuF03Sqc8jFJ78jVasWYRkQ
         WeDYZCdyfTRrIYtCF45Brq3MsfvFF2fwOzsjbZ/4eWk+Vmoa2Ms3OmaPt7CFO8v+sImm
         wJwVaUTphoPpdSySQ0MzAvjzTZ5VE/rqgY1dgtB7wcV+t5gLfmd7GGw6gSfmqrIzXg4u
         eXqcxPBLb6EX/Wcn60f7eITF9S7szZCUJJmbTUC/PUK7DnsIiQTRXVz+l9TqixxVrMq4
         ZFfg==
X-Gm-Message-State: AO0yUKVz2zo63G4SQsVlf+4QxUBv5f8ydjfrANwUfcJL1REstojucHru
	3lqqEkPi9w5DEmltQFa7wIs=
X-Google-Smtp-Source: AK7set/0yqp/q3/jslTp6QxBhdRo+Dy4M24xdmTIftytbmsLtB5hmbelVCK/TX7kEgjPGP3InbTQCA==
X-Received: by 2002:a17:903:2447:b0:194:5c63:364c with SMTP id l7-20020a170903244700b001945c63364cmr1849203pls.62.1676754978760;
        Sat, 18 Feb 2023 13:16:18 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id ji11-20020a170903324b00b0019afb7a02a1sm4785944plb.218.2023.02.18.13.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 13:16:18 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 18 Feb 2023 13:15:57 -0800
Message-Id: <20230218211608.1630586-15-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230218211608.1630586-1-robdclark@gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8DE2F44239
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[73.67.135.195:received];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.44:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linux.intel.com,linaro.org,vger.kernel.org,lists.linaro.org];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.216.44:from];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: WIGX2BGFRB6FEGBWQJODMIS2257MSSBX
X-Message-ID-Hash: WIGX2BGFRB6FEGBWQJODMIS2257MSSBX
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 14/14] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WIGX2BGFRB6FEGBWQJODMIS2257MSSBX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Signed-off-by: Rob Clark <robdclark@chromium.org>
---

This should probably be re-written by someone who knows the i915
request/timeline stuff better, to deal with non-immediate deadlines.
But as-is I think this should be enough to handle the case where
we want syncobj waits to trigger boost.

 drivers/gpu/drm/i915/i915_driver.c  |  2 +-
 drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index cf1c0970ecb4..bd40b7bcb38a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1781,7 +1781,7 @@ static const struct drm_driver i915_drm_driver = {
 	.driver_features =
 	    DRIVER_GEM |
 	    DRIVER_RENDER | DRIVER_MODESET | DRIVER_ATOMIC | DRIVER_SYNCOBJ |
-	    DRIVER_SYNCOBJ_TIMELINE,
+	    DRIVER_SYNCOBJ_TIMELINE | DRIVER_SYNCOBJ_DEADLINE,
 	.release = i915_driver_release,
 	.open = i915_driver_open,
 	.lastclose = i915_driver_lastclose,
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 7503dcb9043b..44491e7e214c 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -97,6 +97,25 @@ static bool i915_fence_enable_signaling(struct dma_fence *fence)
 	return i915_request_enable_breadcrumb(to_request(fence));
 }
 
+static void i915_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
+{
+	struct i915_request *rq = to_request(fence);
+
+	if (i915_request_completed(rq))
+		return;
+
+	if (i915_request_started(rq))
+		return;
+
+	/*
+	 * TODO something more clever for deadlines that are in the
+	 * future.  I think probably track the nearest deadline in
+	 * rq->timeline and set timer to trigger boost accordingly?
+	 */
+
+	intel_rps_boost(rq);
+}
+
 static signed long i915_fence_wait(struct dma_fence *fence,
 				   bool interruptible,
 				   signed long timeout)
@@ -182,6 +201,7 @@ const struct dma_fence_ops i915_fence_ops = {
 	.signaled = i915_fence_signaled,
 	.wait = i915_fence_wait,
 	.release = i915_fence_release,
+	.set_deadline = i915_fence_set_deadline,
 };
 
 static void irq_execute_cb(struct irq_work *wrk)
-- 
2.39.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
