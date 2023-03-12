Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE526B6B3B
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 12 Mar 2023 21:42:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E55B83F0A6
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 12 Mar 2023 20:42:41 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id DC8133E8AA
	for <linaro-mm-sig@lists.linaro.org>; Sun, 12 Mar 2023 20:42:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=G2a3X2go;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id ix20so4328339plb.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 12 Mar 2023 13:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678653743;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eS81Bbeb7DUO+iRkvmtrK0oB4SfcOjiUFR0rKW60MA0=;
        b=G2a3X2goAyICa7qoVr4TjJ4/OOQ1EmoCBXmcNPEVfAKqhAEIho/AfxQDCMbOYQNb6/
         VsK86lLGHo82G880+GfCwnB7NZj1LH0T7klN9abmbKa3C8/6ysyzwU7sxSjjzz/XL6oO
         vAuH1AamSgl6MUBggR0tNxojaYXKDM1IjIEcV5GY0MN5QC8uZEjZMKvOttvLv58I+FHt
         xQm7dqeB+g/b7H6pg95qji23VUNrDetgUorQn2HxhlXGTz3ne2burkaHbyZqOA/jKSNX
         WdnpofFPER2tIU2FTgT2WccI6i5Vl7jnW7WFD3EdyaZysEXME+eXg3NnWksiH0E54H0O
         oM1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678653743;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eS81Bbeb7DUO+iRkvmtrK0oB4SfcOjiUFR0rKW60MA0=;
        b=OVPflhr6DjVI8F71PwtV0oxRQzWRMtxP9ATCJlFoyqYJydIm+jtPQIJ1i3E3MRVdKP
         1n1PUFkcIuFvjShbcSEdLwGC91CYvlWp/PQnA84sp5OtxibsNuNV2elhK1hLzzDm0rpJ
         SpAb4V8hbTfQqzthLWKlB4uiOSotdwXW7HgYHSWPeHcPQdE51CFBjksaWddqDzqp/lSS
         zQloeV/kDCbKLHqM17I9ev2NApp/A1AbTZDSzKTxLs7iSLopAlCQxD/tRmTwHKTJJ/as
         8HPu8wo018LQ+EO5BzKFzSvheyC3AEl16YSnWndSaAvpk2WyisJHAde2zfU/Up8B2UMO
         x39A==
X-Gm-Message-State: AO0yUKVJpd7z2KxI0emXkFbRrhPMOy37jQnxRxotkOp7jItZuTlaSpGB
	uZOXChWWKD32sZC6Vc7y4jk=
X-Google-Smtp-Source: AK7set+UpZ1DihZTdG/FUvyuXyzqzkkjcn3UiFdPutNdqCaUQZDans3Wexm2twEh9BfXyHomUFqSlQ==
X-Received: by 2002:a17:902:a9cb:b0:19a:df76:ddd2 with SMTP id b11-20020a170902a9cb00b0019adf76ddd2mr27656409plr.36.1678653742882;
        Sun, 12 Mar 2023 13:42:22 -0700 (PDT)
Received: from localhost ([2601:1c0:5080:d9fa:9b45:95de:f47d:f85e])
        by smtp.gmail.com with ESMTPSA id u6-20020a170902e5c600b001a049441fc8sm472317plf.193.2023.03.12.13.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 13:42:22 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sun, 12 Mar 2023 13:41:28 -0700
Message-Id: <20230312204150.1353517-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DC8133E8AA
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.177:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[vger.kernel.org,chromium.org,quicinc.com,gmail.com,linaro.org,lists.freedesktop.org,linux-m68k.org,roeck-us.net,padovan.org,joelfernandes.org,somainline.org,lists.linaro.org];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: DAQILOTUW4752VMXKS5CVOPCUU4KSS7N
X-Message-ID-Hash: DAQILOTUW4752VMXKS5CVOPCUU4KSS7N
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@chromium.org>, Akhil P Oommen <quic_akhilpo@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Douglas Anderson <dianders@chromium.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Guenter Roeck <linux@roeck-us.net>, Gustavo Padovan <gustavo@padovan.org>, "Joel Fernandes (Google)" <joel@joelfernandes.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "open list:DEVICE FREQUENCY DEVFREQ" <linux-pm@vger.kernel.org>, Luca Weiss <luca@z3ntu.xyz>, Maximilian Luz <luzmaximilian@gmail.com>, Nathan Chancellor <nathan@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Sean Paul <sean@poorly.run>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 00/13] drm/msm+PM+icc: Make job_run() reclaim-safe
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DAQILOTUW4752VMXKS5CVOPCUU4KSS7N/>
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
and use lockdep annotations to yell at us about anything that could
deadlock against shrinker/reclaim.  Anything that can trigger reclaim,
or block on any other thread that has triggered reclaim, can block the
GPU shrinker from releasing memory if it is waiting the job to complete,
causing deadlock.

The first two patches avoid memory allocation for the hw_fence by
embedding it in the already allocated submit object.  The next three
decouple various allocations that were done in the hw_init path, but
only the first time, to let lockdep see that they won't happen in the
job_run() path.  (The hw_init() path re-initializes the GPU after runpm
resume, etc, which can happen in the job_run() path.)

The remaining patches clean up locking issues in various corners of PM
and interconnect which happen in the runpm path.  These fixes can be
picked up independently by the various maintainers.  In all cases I've
added lockdep annotations to help keep the runpm resume path deadlock-
free vs reclaim, but I've broken those out into their own patches.. it
is possible that these might find issues in other code-paths not hit on
the hw I have.  (It is a bit tricky because of locks held across call-
backs, such as devfreq->lock held across devfreq_dev_profile callbacks.
I've audited these and other callbacks in icc, etc, to look for problems
and fixed one I found in smd-rpm.  But that took me through a number of
drivers and subsystems that I am not familiar with so it is entirely
possible that I overlooked some problematic allocations.)

There is one remaining issue to resolve before we can enable the job_run
annotations, but it is entirely self contained in drm/msm/gem.  So it
should not block review of these patches.  So I figured it best to send
out what I have so far.

Rob Clark (13):
  dma-buf/dma-fence: Add dma_fence_init_noref()
  drm/msm: Embed the hw_fence in msm_gem_submit
  drm/msm/gpu: Move fw loading out of hw_init() path
  drm/msm/gpu: Move BO allocation out of hw_init
  drm/msm/a6xx: Move ioremap out of hw_init path
  PM / devfreq: Drop unneed locking to appease lockdep
  PM / devfreq: Teach lockdep about locking order
  PM / QoS: Fix constraints alloc vs reclaim locking
  PM / QoS: Decouple request alloc from dev_pm_qos_mtx
  PM / QoS: Teach lockdep about dev_pm_qos_mtx locking order
  soc: qcom: smd-rpm: Use GFP_ATOMIC in write path
  interconnect: Fix locking for runpm vs reclaim
  interconnect: Teach lockdep about icc_bw_lock order

 drivers/base/power/qos.c                   | 83 ++++++++++++++++------
 drivers/devfreq/devfreq.c                  | 52 +++++++-------
 drivers/dma-buf/dma-fence.c                | 43 ++++++++---
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c      | 48 ++++++-------
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c      | 18 +++--
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c      | 46 ++++++------
 drivers/gpu/drm/msm/adreno/adreno_device.c |  6 ++
 drivers/gpu/drm/msm/adreno/adreno_gpu.c    |  9 +--
 drivers/gpu/drm/msm/msm_fence.c            | 43 +++++------
 drivers/gpu/drm/msm/msm_fence.h            |  2 +-
 drivers/gpu/drm/msm/msm_gem.h              | 10 +--
 drivers/gpu/drm/msm/msm_gem_submit.c       |  8 +--
 drivers/gpu/drm/msm/msm_gpu.c              |  4 +-
 drivers/gpu/drm/msm/msm_gpu.h              |  6 ++
 drivers/gpu/drm/msm/msm_ringbuffer.c       |  4 +-
 drivers/interconnect/core.c                | 18 ++++-
 drivers/soc/qcom/smd-rpm.c                 |  2 +-
 include/linux/dma-fence.h                  |  2 +
 18 files changed, 237 insertions(+), 167 deletions(-)

-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
