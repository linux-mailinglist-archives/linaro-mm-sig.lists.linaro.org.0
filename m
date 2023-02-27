Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9A96A4B48
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Feb 2023 20:39:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C36B83ED25
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Feb 2023 19:39:35 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by lists.linaro.org (Postfix) with ESMTPS id A801B3EE31
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 19:36:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=b8736n30;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.215.174 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id q189so4230549pga.9
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Feb 2023 11:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9VcsUu3unD+maL4g/jB1gMbq//XnoqiDQvEiNIyt7mI=;
        b=b8736n309kh1uRXrJE2k/Um3KXaZinC+6/mnagsKOXeEGCtqaoZLgHv9EkxoYXJRwS
         zyfCbEC9JCFtyMY7WQZQPA8QXUcFZpDWSYCWxuW4uo5KMmZNxa3byyQC4DpXMEz57VDW
         Zw5iYZd+QeBYbIOF1BQ1Eia/s4rwzzlK2s84N1dnJwf5tGJNaxNafY0Cpat++4+DvNxA
         QTZIhRflMHWIC2tqDzr8HnGn2dB3Tbtf/FH9dH0okN2XWWTyh3gILz3ZL7r3mGxDZkTt
         MB+UWg7+BAmCJaxpPhV7lKnZdCBx78OnQCLcpiO9Kk3Ymo4t4WnLNcx245/XFreVCcK2
         zh8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9VcsUu3unD+maL4g/jB1gMbq//XnoqiDQvEiNIyt7mI=;
        b=6ekX3fzpm7G5fsCMACYogcjLcOp0fpi8xBZKRS3qFebVGEf25dCA8xXHuvlcFZT5eh
         A87o5iqx9UaW5wUqPTPta0xBG2OAQXgebEvVPGP5ZUMsaGz6/Bh+LvpH/+t5blPxCkI/
         bU1ruAcOrmLeOZskbIOdVRViujlJ9uhDDAytYJ4x1UjkS5yAuj44fIaT9bsiTxmGWvHF
         4Xzd26pZUWmhkF00KMuXAXcelPeZZeL7X+P9XKzMw4HcmNr+YAkcYpKG2R4QwJqatUtz
         amg52BUilIpuUFHLKf5aBGuUJe6sA6MawLHTzCSecNv3c5wYAjrwAj7oVikBt6kKAJQo
         cg/A==
X-Gm-Message-State: AO0yUKW/1FZaAvo+TfD1vubsn+uTd/fRIXMWZtwxcuHjEM1KEt01btF7
	7cLSwOphS97MNGuIs5eQZeQ=
X-Google-Smtp-Source: AK7set/P8itus1p3okGBUFN9rk94RkS0E5Ql6lniMhVceVdpcIjzF9h/Mu+zklRPMkDx5JHA+kdklg==
X-Received: by 2002:a62:1881:0:b0:5e0:a86:a76f with SMTP id 123-20020a621881000000b005e00a86a76fmr189244pfy.0.1677526596830;
        Mon, 27 Feb 2023 11:36:36 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id k23-20020aa78217000000b005d4360ed2bbsm4551115pfi.197.2023.02.27.11.36.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Feb 2023 11:36:36 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 27 Feb 2023 11:35:21 -0800
Message-Id: <20230227193535.2822389-16-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230227193535.2822389-1-robdclark@gmail.com>
References: <20230227193535.2822389-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A801B3EE31
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received,209.85.215.174:from];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.215.174:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linux.intel.com,linaro.org,vger.kernel.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: AGXTWJY6EDSE44CIMVMML7IFFLOY3YLT
X-Message-ID-Hash: AGXTWJY6EDSE44CIMVMML7IFFLOY3YLT
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v7 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AGXTWJY6EDSE44CIMVMML7IFFLOY3YLT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

v2: rebase

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
2.39.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
