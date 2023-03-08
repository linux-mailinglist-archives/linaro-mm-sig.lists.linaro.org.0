Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5443C6B0DD0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 16:57:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66B753F0B2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 15:57:14 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by lists.linaro.org (Postfix) with ESMTPS id 29F823F0C0
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 15:54:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=VInRsevL;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.173 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id c4so10562053pfl.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 07:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678290870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qRQ1dHdIY/cau10a8E821pdOJBm+YYqmFlRisJrtcpU=;
        b=VInRsevL5hoOa24Y230bcVyeMLhH1aYIW9bUbR0nGfdeB6sMlUDfsB/IW5G+fFUrdS
         xq6loIUgrztEsywE69ZAUqsW/L7mtKOytKAxltZ3p9YKFi2P++DogG9K8Wzc4VJz9IkR
         eIWO7Ytce4BgJ/1k5T/PIexTpPW9HU/10m6MSvCYXZGAWm6rKl2YTRWJh9dj9zV/5Xcm
         ECw0NTffFqx4DWlIb59auEPRrYN6tUrv0DAG1fPg6lIXMqGtWwUlR9x0+Muci1Ohe032
         oiCRyrQ7zikzViwwCe93VCwvd/UimZPs2bcwJ5HysU/y6zbQohofGorhDeC9UnlH4d6l
         t5jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678290870;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qRQ1dHdIY/cau10a8E821pdOJBm+YYqmFlRisJrtcpU=;
        b=TbQaNKDcAlUrvUbwpmTJrvPVoUcsw38Ep8pI4bQy1ftZ/RA5H20+xy6uQYzwYwSa1J
         uFPto1B4gXozIRjGGSdNcJHLT3I7GxdYhSWlOkjoktZO0iT+zgMYLzUt9gPH5mb77KjN
         O056P6GNKU8uKxgFxTa31QWFMkgOxgXcoNvtwjVpCYj7qGZgYH1il157e0zUYwJuHdoM
         br2EOUzTL4gujGmHvaLkZm77MtpcUuYHppptk8NxJshAwDIlXU5mZ7OY4AMP7M0pd098
         G3U6pdKWdFtcRsrZW7m3o6Zsoq8J5gxfn+6EM7nkhlagH2mb3T4QFAz/irsMBnHNbz2u
         o3EQ==
X-Gm-Message-State: AO0yUKXA3R2QYi8nMzVXQQxZNgtyuTUYUdrPaeYB2/jnICQd1LkMeaNN
	sh9YJ0/zbiXO8CpFZ5guHE8=
X-Google-Smtp-Source: AK7set/qurbajmx0drbw1A0UnfJ3nB9Otb6mpv7CbrkCjVlUVasHmbmab9vdSeIaq9fwrT8DYoD/PA==
X-Received: by 2002:a62:7bc4:0:b0:5e2:62b7:f785 with SMTP id w187-20020a627bc4000000b005e262b7f785mr15546331pfc.29.1678290870363;
        Wed, 08 Mar 2023 07:54:30 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id u5-20020aa78385000000b005a91d570972sm9486660pfm.41.2023.03.08.07.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 07:54:29 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 Mar 2023 07:53:06 -0800
Message-Id: <20230308155322.344664-16-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 29F823F0C0
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.173:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,gmail.com,intel.com,basnieuwenhuizen.nl,chromium.org,linux.intel.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: CA7Z52YRGIQPLD7TMVRIQA6KLY5H4IZE
X-Message-ID-Hash: CA7Z52YRGIQPLD7TMVRIQA6KLY5H4IZE
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Turner <mattst88@gmail.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v10 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CA7Z52YRGIQPLD7TMVRIQA6KLY5H4IZE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

I expect this patch to be replaced by someone who knows i915 better.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

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
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
