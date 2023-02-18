Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F71F69BC6A
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 22:17:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1CC094423D
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 Feb 2023 21:17:27 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by lists.linaro.org (Postfix) with ESMTPS id 6634D44240
	for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 21:15:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=HM20qQN2;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id w1so1556903plq.10
        for <linaro-mm-sig@lists.linaro.org>; Sat, 18 Feb 2023 13:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=792an2SD05nhQRGBlD0Pg2RQ7VfR74mQEP4A4mqZ6Pk=;
        b=HM20qQN2yIU6PxWiMZEoSu3nueB6cRdZunRf/0WsasLxrWwG6jTJzi54FYZ5B5NZGd
         oiDKEt41GpKHkAkJ5gTVtA1j+PltUu0tI95VttL8G5W+qQnSbySKu7+cSjvKNge6QQ5J
         Pj2F3mRJmuteKR/t3CJoExZNh0GN57mlIvR6bySQe8r5eZLlOCXNqZxX5bjf/dupH9z3
         IXqeOipa7lBiO9XbbbNImG/WCaemmgM46GgIE8Xh55pnP/LLLgxjXjr+DHt1NcdxFObQ
         14PQ97rq81/QGaBdPs+HGfOyKwPzT8UnCAi8zNIuZLDmVStTVtSKfIFcJehu18xb5BVp
         cE9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=792an2SD05nhQRGBlD0Pg2RQ7VfR74mQEP4A4mqZ6Pk=;
        b=mh9stv/pknK+ne/SpO4KLmVdnMkXj30Lng98GiI5BZ1LOy7eygLxK5/q7hOpJujSd4
         ivLCYgQ5Gd3k/6Z66OH7s7+wdZl2rOAf0Wry0Trw6bKPsgWiJZm/Jj1cFEc0YnYMI+Db
         085ck98nRKz+lpwDmgcM4JJsujtCm8o7kDht/KG1mBvOAOPJZnGcJlM77zfrEaBFcukh
         1K9hDJxRGTFvPbHFkTbQFoDvg0Uc45Yqo5OlmZraMCpFukHW+wE9IrHTEoMsCufs+gPw
         5wDJytJYSvvpkOpOGjq1uqnJEfpbFVAlJLcmNLOlravJ6QSq4C2GDqWfy2/byFQglLtU
         Ia1Q==
X-Gm-Message-State: AO0yUKWz0P/ilpGTFyCHfUBZ5fMHQFTyfcwz/8HhbbFpY02BrphJhHy6
	xMJ550SBegyzmjpjmH/zV9s=
X-Google-Smtp-Source: AK7set/QRHtfFq0gaLBBtupUc42V0jJFczyxE24VpZirzrpITI3ga4mB8wxlcDavsOCQ4hY8/UcUUA==
X-Received: by 2002:a17:90a:357:b0:233:f990:d646 with SMTP id 23-20020a17090a035700b00233f990d646mr1577488pjf.35.1676754953521;
        Sat, 18 Feb 2023 13:15:53 -0800 (PST)
Received: from localhost (c-73-67-135-195.hsd1.or.comcast.net. [73.67.135.195])
        by smtp.gmail.com with ESMTPSA id bv21-20020a17090af19500b00231261061a5sm1254130pjb.5.2023.02.18.13.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 13:15:53 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 18 Feb 2023 13:15:47 -0800
Message-Id: <20230218211608.1630586-5-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230218211608.1630586-1-robdclark@gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6634D44240
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.214.180:from,73.67.135.195:received];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.180:from];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,vger.kernel.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 2DM2W2H4OADO76KWZDGPZZQ67XOGZMRW
X-Message-ID-Hash: 2DM2W2H4OADO76KWZDGPZZQ67XOGZMRW
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 04/14] dma-buf/dma-resv: Add a way to set fence deadline
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2DM2W2H4OADO76KWZDGPZZQ67XOGZMRW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Add a way to set a deadline on remaining resv fences according to the
requested usage.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/dma-resv.c | 19 +++++++++++++++++++
 include/linux/dma-resv.h   |  2 ++
 2 files changed, 21 insertions(+)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 1c76aed8e262..0c86f6d577ab 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -684,6 +684,25 @@ long dma_resv_wait_timeout(struct dma_resv *obj, enum dma_resv_usage usage,
 }
 EXPORT_SYMBOL_GPL(dma_resv_wait_timeout);
 
+/**
+ * dma_resv_set_deadline - Set a deadline on reservation's objects fences
+ * @obj: the reservation object
+ * @usage: controls which fences to include, see enum dma_resv_usage.
+ * @deadline: the requested deadline (MONOTONIC)
+ */
+void dma_resv_set_deadline(struct dma_resv *obj, enum dma_resv_usage usage,
+			   ktime_t deadline)
+{
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
+
+	dma_resv_iter_begin(&cursor, obj, usage);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		dma_fence_set_deadline(fence, deadline);
+	}
+	dma_resv_iter_end(&cursor);
+}
+EXPORT_SYMBOL_GPL(dma_resv_set_deadline);
 
 /**
  * dma_resv_test_signaled - Test if a reservation object's fences have been
diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
index 0637659a702c..8d0e34dad446 100644
--- a/include/linux/dma-resv.h
+++ b/include/linux/dma-resv.h
@@ -479,6 +479,8 @@ int dma_resv_get_singleton(struct dma_resv *obj, enum dma_resv_usage usage,
 int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src);
 long dma_resv_wait_timeout(struct dma_resv *obj, enum dma_resv_usage usage,
 			   bool intr, unsigned long timeout);
+void dma_resv_set_deadline(struct dma_resv *obj, enum dma_resv_usage usage,
+			   ktime_t deadline);
 bool dma_resv_test_signaled(struct dma_resv *obj, enum dma_resv_usage usage);
 void dma_resv_describe(struct dma_resv *obj, struct seq_file *seq);
 
-- 
2.39.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
