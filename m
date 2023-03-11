Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFED66B5F0F
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Mar 2023 18:35:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EB293F4C4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Mar 2023 17:35:39 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	by lists.linaro.org (Postfix) with ESMTPS id 5FB7C3ED86
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Mar 2023 17:35:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=FhW19A9p;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.180 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id b20so5462027pfo.6
        for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Mar 2023 09:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678556119;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bX0H6uhIC4ov1xkv+p6jNtndq/gYH/2wBvMKwtDIDLQ=;
        b=FhW19A9pZrBAeUUapuy9VvgFIHwhTCFZ02o8yP87iXiSXPh3wNHgO1vb9Bk5wXZAu7
         C78hPaGsIngWsB5srbxsWdblnkORDK1rJbdPEBw9AKN9VIbb7c6IOTdley0OW3uq5BKj
         kcrkYr/EuWmUHax09MwonxJ8spjrJoeaFQYAlJY3oRqXLyp5Srkh411Lnpo0bCZpNVat
         h1XXVcil+w5q4bnCUO0+uEf4DpQ/S9LG9Fz9xMwa42vk2H+pBxLJaiceHwzN/LiJ1Csf
         rBR3hY4pvJeUcT3YE2S3J9rlR40szai0DtD9VfVlWfq7E/WnPinbKBgSiZoreqDkKFXu
         pBnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678556119;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bX0H6uhIC4ov1xkv+p6jNtndq/gYH/2wBvMKwtDIDLQ=;
        b=x5ZsozS5x6zBi0p2kYbZNz7tGkITq/NZNM7M//lH5JRyP/Iq4siRf3eSxmTOOA2mbE
         /4pOzKw3TATlDYLapdG/2gYBRlWiuk+8KFE9uktiQ4ad48I7/bUPdsbGnfdIwfyHc7ny
         komphF5wBbCMIKFbY95gbgEBr3E94HoAiuc5MOUZBofRpJzB1OK9Y0YZblJHLfTWrHcQ
         161i9pPfnwut8c4wAaXQ30g9vcMy8/V2aun/yfbIsld9HcYdGCTu9C5Ojkz8pQiNliar
         XF+Ok/0lMzjvQMBlZdNuI3hPJIwNlpD57OK6o3vBTBdaKw/xqg0jR3zADqapWAIv73NG
         0z8g==
X-Gm-Message-State: AO0yUKW6u5eZi+nQte64GtQH9VMEsGoxGtegHSrfEQOeKexHuDFMXi7v
	8x72pCez4jM4cL5w+ATKSIU=
X-Google-Smtp-Source: AK7set9lHGl60nFxzCoe2K1Dt4CQazs+Af39jhU2HvhFfxq2bii3Z5qax1ogs64ixQu+sQqi8O8byw==
X-Received: by 2002:aa7:9984:0:b0:5a9:d5c7:199e with SMTP id k4-20020aa79984000000b005a9d5c7199emr25298760pfh.9.1678556119404;
        Sat, 11 Mar 2023 09:35:19 -0800 (PST)
Received: from localhost ([2601:1c0:5080:d9fa:9b45:95de:f47d:f85e])
        by smtp.gmail.com with ESMTPSA id i3-20020aa787c3000000b00580e3917af7sm1721677pfo.117.2023.03.11.09.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 09:35:18 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 11 Mar 2023 09:35:10 -0800
Message-Id: <20230311173513.1080397-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5FB7C3ED86
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.180:from];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchwork.freedesktop.org:url];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: ZGFHHWRLBUM3B7ZDBIG7SZKYKWL4BXDJ
X-Message-ID-Hash: ZGFHHWRLBUM3B7ZDBIG7SZKYKWL4BXDJ
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Sean Paul <sean@poorly.run>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/2] drm/msm: Get rid of fence allocation in job_run()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZGFHHWRLBUM3B7ZDBIG7SZKYKWL4BXDJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Inspired by https://lore.kernel.org/dri-devel/20200604081224.863494-10-daniel.vetter@ffwll.ch/
it seemed like a good idea to get rid of memory allocation in job_run()
by embedding the hw dma_fence in the job/submit struct.

Applies on top of https://patchwork.freedesktop.org/series/93035/ but I
can re-work it to swap the order.  I think the first patch would be
useful to amdgpu and perhaps anyone else embedding the hw_fence in the
struct containing drm_sched_job.

Rob Clark (2):
  dma-buf/dma-fence: Add dma_fence_init_noref()
  drm/msm: Embed the hw_fence in msm_gem_submit

 drivers/dma-buf/dma-fence.c          | 43 +++++++++++++++++++-------
 drivers/gpu/drm/msm/msm_fence.c      | 45 +++++++++++-----------------
 drivers/gpu/drm/msm/msm_fence.h      |  2 +-
 drivers/gpu/drm/msm/msm_gem.h        | 10 +++----
 drivers/gpu/drm/msm/msm_gem_submit.c |  8 ++---
 drivers/gpu/drm/msm/msm_gpu.c        |  4 +--
 drivers/gpu/drm/msm/msm_ringbuffer.c |  4 +--
 include/linux/dma-fence.h            |  2 ++
 8 files changed, 66 insertions(+), 52 deletions(-)

-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
