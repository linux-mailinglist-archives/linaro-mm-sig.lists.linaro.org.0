Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F85887492
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Mar 2024 22:48:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57C133F94C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Mar 2024 21:48:25 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by lists.linaro.org (Postfix) with ESMTPS id 091CB3F94C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Mar 2024 21:48:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Z9C6RkRJ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.176 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1df01161b39so19636635ad.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Mar 2024 14:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711144102; x=1711748902; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nQK5tb3Nw1ZoxZ8aMrSXrErJ9rtnHZb1a9z7kXmUAAI=;
        b=Z9C6RkRJEg5kQ8qysQx54UOtw2E97TaE/Xn0WoUISJ7saRVx/pZDZJkr9r/B6BNx2M
         cR/WG+TzjLgKbE6wvPlEL1ZYCJ1p6lX4HANwphRWmnghdrEwmkoG8fFH2D6zJvl6oCJr
         Ryy3Fb3aHJNB1fuZr6WkrovWD28EJsfGNnsoAGi1RJpZtsPcI+qjlF73PD183rx7qx2a
         Tds7u09EIRySIemvPpiK2bL39hB8zgkvZI3Am758sXRfNnWySsdlgsC9SYyYIl7cyNgR
         y7SXAnhFT2yjARcO6vgiUqVD80XVrrKO9xMWog5EUY8Kluq96dITyHWp9Dm5/NpfjJs8
         yMlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711144102; x=1711748902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nQK5tb3Nw1ZoxZ8aMrSXrErJ9rtnHZb1a9z7kXmUAAI=;
        b=DO37Wf8/s8dy7CYmtzZjl+p7ZsQ2n4wfgPI9eGx2LfuFTdK/aGJ4XQ7xPo5DqkzEcM
         H8IYuMoPqANuMiwyNhTPRHpSPpN/D1W/RltUY0WjUBRqmpTA80119khHHokvLAc3wyRJ
         S+KSpWChCeBgSNCOGHiexXUkrHTJSwOkl4AgsMGXmgwyNLbyKL9ypr8xLKZEov+/161E
         JAYHLZZVIl5LoX85DrKGbhok79jXHmanZsGI3JtHgOZlk9DJT5vgYmqvTOeFsOhcvQg5
         q/GPaevjFLo8B626sYZJUbPDYOvd5ziNJQbH4qDw0mqMH1OLm3YYKEMwa5Shv7GjBKIR
         714w==
X-Forwarded-Encrypted: i=1; AJvYcCUJYr8aSuPA/7P65asZl1N0n3f+nX3ODqTMyVnmK8VzKQ/7tS1oqxomiRjgz0rpw/of726/qAi1KQJXbaiI0UYtVC4S23/R0+xucKcJk2s=
X-Gm-Message-State: AOJu0YyZld+qvuSW9/CHlg4SNkPsf09yJUN3OYKR8WQsfbAoCDW5NNkX
	4zyhPDzpx6OTZZGYsb8QqFrLvHNj9OQ9ObC0dM818YxF7wUTXVfi
X-Google-Smtp-Source: AGHT+IFu6vLzMaYsKuds4uUemNeUEL9Iv5gz6ZsPkXFYKeQTEq4g7nV6vk/JeeIFbxe7CJ53DpsPaA==
X-Received: by 2002:a17:903:944:b0:1e0:84b5:d76 with SMTP id ma4-20020a170903094400b001e084b50d76mr1175359plb.52.1711144101986;
        Fri, 22 Mar 2024 14:48:21 -0700 (PDT)
Received: from localhost ([2a00:79e1:2e00:1301:e1c5:6354:b45d:8ffc])
        by smtp.gmail.com with ESMTPSA id c5-20020a170902d48500b001dee4bd73e0sm226385plg.59.2024.03.22.14.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 14:48:21 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 22 Mar 2024 14:48:01 -0700
Message-ID: <20240322214801.319975-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: 091CB3F94C
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,emersion.fr,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DNSWL_BLOCKED(0.00)[209.85.214.176:from,2a00:79e1:2e00:1301:e1c5:6354:b45d:8ffc:received];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.176:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BPBHPFAZH3Z3ZQ47BO7TVV46D4ELWPHV
X-Message-ID-Hash: BPBHPFAZH3Z3ZQ47BO7TVV46D4ELWPHV
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Dominik Behr <dbehr@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Simon Ser <contact@emersion.fr>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/prime: Unbreak virtgpu dma-buf export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BPBHPFAZH3Z3ZQ47BO7TVV46D4ELWPHV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

virtgpu "vram" GEM objects do not implement obj->get_sg_table().  But
they also don't use drm_gem_map_dma_buf().  In fact they may not even
have guest visible pages.  But it is perfectly fine to export and share
with other virtual devices.

Reported-by: Dominik Behr <dbehr@chromium.org>
Fixes: 207395da5a97 ("drm/prime: reject DMA-BUF attach when get_sg_table is missing")
Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/drm_prime.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 7352bde299d5..64dd6276e828 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -582,7 +582,12 @@ int drm_gem_map_attach(struct dma_buf *dma_buf,
 {
 	struct drm_gem_object *obj = dma_buf->priv;
 
-	if (!obj->funcs->get_sg_table)
+	/*
+	 * drm_gem_map_dma_buf() requires obj->get_sg_table(), but drivers
+	 * that implement their own ->map_dma_buf() do not.
+	 */
+	if ((dma_buf->ops->map_dma_buf == drm_gem_map_dma_buf) &&
+	    !obj->funcs->get_sg_table)
 		return -ENOSYS;
 
 	return drm_gem_pin(obj);
-- 
2.44.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
