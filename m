Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A67386043CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:49:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A94B33EE41
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:49:32 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by lists.linaro.org (Postfix) with ESMTPS id 8DEB23ED1B
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Sep 2022 22:07:48 +0000 (UTC)
Received: by mail-pf1-f178.google.com with SMTP id w2so16061039pfb.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Sep 2022 15:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=oAZa73Ms9QVpxhmjRkhl/oIipHOwLafi4P86QyHcFa0=;
        b=JEqFXyJwbJqlQ1qM4Gt7ZjSBcNjtwpvDggFsPm5D4V0iTzm7x5O/OLEiX2y1gkvfi3
         gBzFqyPlL801WgcyDu9JWXbrzmemvUutUINjW0Lf7zTpYvCCJkMPbAptr0sIPbyRiVhW
         6wWxPRvSYQYYaIwdSvq/F4dgq26b9JUkye7k5mVBqwvUw1QtBcAZDDvH0lqRTHR/9pL9
         8ZvIeVAhaTi645806bbFpTPkjcvkk/KfuUDVGcXn3jIz96y2db72BkM1m3UrHWUaxqzJ
         Xq2vV+BtZfA+HIbcewUbkKwNz4mrhyYNdn/EvYUJVgO3lps7R5f4LZGWNTJIRfftXyd6
         ORjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=oAZa73Ms9QVpxhmjRkhl/oIipHOwLafi4P86QyHcFa0=;
        b=EtwfZa7eHbqa6OwsJ29Qp5zyBc/woTLEEQ21y9ZJJWG8dfSDWW9VhB4rYY4OfPyufp
         XAwwe3j985ecA3pLRNqZWthwEe2I4gCd8KZrZkEz4MmHwNpc6/xZd9j7XpNNqDmRdjwT
         hr5xGHgN+Nd2z6L4USeTB/WdBxcWSomHzelD4yZqHAHXDAiYvCIWuOu9D9bNl1Y5n3p1
         lksbWClRLgk6bmmOdVbtLau0I14/DONk7y156D0sf97KOzAIhCq5ZTvCbeZIvwegiqAt
         bk6yQH432iwelpvFjJ086IiZvxNrQalxPtVnEzMLsqnIC9wMlNvpMNuA7NT6AI6DXCHf
         59ZA==
X-Gm-Message-State: ACrzQf2xXtuUWCnfgxje97VnvnqbxYE7SXgzgvd8o4hnBvI1QJ8x1lsJ
	8hKzZI2N2LIkVncz5p09M+o=
X-Google-Smtp-Source: AMsMyM5OITmrhfBXTIMTtYY7kFUoTNgOex+iRyyFQjgfDBr5qfnfxKk5sWU8UnYONKmIlJmDfiU69A==
X-Received: by 2002:aa7:8759:0:b0:540:aad4:b13e with SMTP id g25-20020aa78759000000b00540aad4b13emr15687055pfo.13.1663538867560;
        Sun, 18 Sep 2022 15:07:47 -0700 (PDT)
Received: from localhost.localdomain (lily-optiplex-3070.dynamic.ucsd.edu. [2607:f720:1300:3033::1:4dd])
        by smtp.googlemail.com with ESMTPSA id u10-20020a170902e80a00b00176b63535ccsm19061232plg.193.2022.09.18.15.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Sep 2022 15:07:46 -0700 (PDT)
From: Li Zhong <floridsleeves@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Sun, 18 Sep 2022 15:07:31 -0700
Message-Id: <20220918220731.1026200-1-floridsleeves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MailFrom: floridsleeves@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NGEMDGJZ3TIEFWVP7YFGB5PRTS6IVK3L
X-Message-ID-Hash: NGEMDGJZ3TIEFWVP7YFGB5PRTS6IVK3L
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:46:21 +0000
CC: airlied@redhat.com, ville.syrjala@linux.intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, daniel@ffwll.ch, airlied@linux.ie, tvrtko.ursulin@linux.intel.com, rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com, jani.nikula@linux.intel.com, Li Zhong <floridsleeves@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v1] drivers/gpu/drm/i915/gt: Check the return value of i915_active_acquire()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NGEMDGJZ3TIEFWVP7YFGB5PRTS6IVK3L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

i915_active_acquire() could return error when the acquire fails. Check
and return the error code.

Signed-off-by: Li Zhong <floridsleeves@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index b9640212d659..d8333ab64574 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -211,7 +211,10 @@ int intel_timeline_pin(struct intel_timeline *tl, struct i915_gem_ww_ctx *ww)
 	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
 		 tl->fence_context, tl->hwsp_offset);
 
-	i915_active_acquire(&tl->active);
+	err = i915_active_acquire(&tl->active);
+	if (err)
+		return err;
+
 	if (atomic_fetch_inc(&tl->pin_count)) {
 		i915_active_release(&tl->active);
 		__i915_vma_unpin(tl->hwsp_ggtt);
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
