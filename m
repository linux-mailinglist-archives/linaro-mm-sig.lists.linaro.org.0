Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C96CD6A22C3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 21:02:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7BEA3F5B8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 20:02:20 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	by lists.linaro.org (Postfix) with ESMTPS id 042E13F33A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 20:02:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=lyvITwMH;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.216.54 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id y15-20020a17090aa40f00b00237ad8ee3a0so392323pjp.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 12:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mk1VF7nfT+6id+DUlBftm181VOn00OpXZ9aoQ8/9Ri4=;
        b=lyvITwMHa5/MbF1J88r6mzMkAUSoXLwCAGhy6wsMTOayyUihm+WpWPPkxpvWAdS7vi
         NXhNb8mywFTPtQ83mEPdA5LWmVb5FdU7PBfd/io2R9mg+tm2sRs+7Tc7WSb9kCYdCnnm
         h3PvF0uwo/nt5wu53SbYYoOjkz2DDck2XcH9yzzK4GjjlgXLsL64hVw+y3akAQd/BH5h
         mip4ouSJlaJt/Vjv9FwgJgl6hpMNrtfehzmr+LjVOLeC7g2RKPLxs+huy11MC2XYtvwJ
         JGK2egmAG9YZn1hGsA7YUaRyl/fSgPa35jU0zjEIuB+tDD2AfuBCQrHiNue8hYzFZgqJ
         gBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mk1VF7nfT+6id+DUlBftm181VOn00OpXZ9aoQ8/9Ri4=;
        b=P02qBTR9g6FB8UyUi2yPPTRGfZUWH8+LpgwE+9Y1JYYY0MZHCmSz3mvhxqfvPHXORu
         UNqqP0Gxx0K58ta7vmfWGokW4wf7nCCESdqODKNr/7ik36j17wsGvQLE/i25/v60yUlw
         dlbE+lNdHdGzty1c/n57xS9X6cS9tejpltkPGcN47EsLKo2NwyVRrZSqybzTd6iaMbP0
         /Fq59fDmJRINp40Rkr9DUDymAdxkkgoJCt5dqIjfEmIWQCOuIR1pA0hVe4MnEhAoGXba
         v3RM43Gg8y9U9LQvc6ZTTxI5YVs68EvJFjv+kXPGj7Xg8YnS5nCsho/CCG7wDxVQ+zCZ
         rwpQ==
X-Gm-Message-State: AO0yUKUq2HvoaoHzU3UPBebLwQJl3b1NxsTs7JX42W1hBpmVufZvte4n
	m8K4gf8TpIpZmfzkRzsE1Hw=
X-Google-Smtp-Source: AK7set/MCGgw4sWMEQil+Zu1uL8C35OoLNVcgddzAVBaEcb5RsD58//mSqRogHKbudTmp5Q9jYP+Pw==
X-Received: by 2002:a17:90a:19c5:b0:237:1f17:68ad with SMTP id 5-20020a17090a19c500b002371f1768admr15713350pjj.18.1677268919978;
        Fri, 24 Feb 2023 12:01:59 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id t12-20020a17090ae50c00b002376d85844dsm31654pjy.51.2023.02.24.12.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 12:01:59 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:01:28 -0800
Message-Id: <20230224200155.2510320-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 042E13F33A
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[2a00:79e1:abd:4a00:61b:48ed:72ab:435b:received,209.85.216.54:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.54:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,quicinc.com,linaro.org,padovan.org,lists.linaro.org,vger.kernel.org,huawei.com,poorly.run,kernel.org];
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
Message-ID-Hash: XCMVYGOVX4VQIHZLBAJZURPHVZZZUI2L
X-Message-ID-Hash: XCMVYGOVX4VQIHZLBAJZURPHVZZZUI2L
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Douglas Anderson <dianders@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, intel-gfx@lists.freedesktop.org, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Liu Shixin <liushixin2@huawei.com>, Sean Paul <sean@poorly.run>, Stephen Boyd <swboyd@chromium.org>, Vinod Koul <vkoul@kernel.org>,
  Vinod Polimera <quic_vpolimer@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v6 00/15] dma-fence: Deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XCMVYGOVX4VQIHZLBAJZURPHVZZZUI2L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>


This series adds a deadline hint to fences, so realtime deadlines
such as vblank can be communicated to the fence signaller for power/
frequency management decisions.

This is partially inspired by a trick i915 does, but implemented
via dma-fence for a couple of reasons:

1) To continue to be able to use the atomic helpers
2) To support cases where display and gpu are different drivers

This iteration adds a dma-fence ioctl to set a deadline (both to
support igt-tests, and compositors which delay decisions about which
client buffer to display), and a sw_sync ioctl to read back the
deadline.  IGT tests utilizing these can be found at:

  https://gitlab.freedesktop.org/robclark/igt-gpu-tools/-/commits/fence-deadline


v1: https://patchwork.freedesktop.org/series/93035/
v2: Move filtering out of later deadlines to fence implementation
    to avoid increasing the size of dma_fence
v3: Add support in fence-array and fence-chain; Add some uabi to
    support igt tests and userspace compositors.
v4: Rebase, address various comments, and add syncobj deadline
    support, and sync_file EPOLLPRI based on experience with perf/
    freq issues with clvk compute workloads on i915 (anv)
v5: Clarify that this is a hint as opposed to a more hard deadline
    guarantee, switch to using u64 ns values in UABI (still absolute
    CLOCK_MONOTONIC values), drop syncobj related cap and driver
    feature flag in favor of allowing count_handles==0 for probing
    kernel support.
v6: Re-work vblank helper to calculate time of _start_ of vblank,
    and work correctly if the last vblank event was more than a
    frame ago.  Add (mostly unrelated) drm/msm patch which also
    uses the vblank helper.  Use dma_fence_chain_contained().  More
    verbose syncobj UABI comments.  Drop DMA_FENCE_FLAG_HAS_DEADLINE_BIT.

Rob Clark (15):
  dma-buf/dma-fence: Add deadline awareness
  dma-buf/fence-array: Add fence deadline support
  dma-buf/fence-chain: Add fence deadline support
  dma-buf/dma-resv: Add a way to set fence deadline
  dma-buf/sync_file: Add SET_DEADLINE ioctl
  dma-buf/sync_file: Support (E)POLLPRI
  dma-buf/sw_sync: Add fence deadline support
  drm/scheduler: Add fence deadline support
  drm/syncobj: Add deadline support for syncobj waits
  drm/vblank: Add helper to get next vblank time
  drm/atomic-helper: Set fence deadline for vblank
  drm/msm: Add deadline based boost support
  drm/msm: Add wait-boost support
  drm/msm/atomic: Switch to vblank_start helper
  drm/i915: Add deadline based boost support

 drivers/dma-buf/dma-fence-array.c       | 11 ++++
 drivers/dma-buf/dma-fence-chain.c       | 12 ++++
 drivers/dma-buf/dma-fence.c             | 20 +++++++
 drivers/dma-buf/dma-resv.c              | 22 ++++++++
 drivers/dma-buf/sw_sync.c               | 58 +++++++++++++++++++
 drivers/dma-buf/sync_debug.h            |  2 +
 drivers/dma-buf/sync_file.c             | 27 +++++++++
 drivers/gpu/drm/drm_atomic_helper.c     | 36 ++++++++++++
 drivers/gpu/drm/drm_syncobj.c           | 64 ++++++++++++++++-----
 drivers/gpu/drm/drm_vblank.c            | 52 ++++++++++++++---
 drivers/gpu/drm/i915/i915_request.c     | 20 +++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 15 -----
 drivers/gpu/drm/msm/msm_atomic.c        |  8 ++-
 drivers/gpu/drm/msm/msm_drv.c           | 12 ++--
 drivers/gpu/drm/msm/msm_fence.c         | 74 +++++++++++++++++++++++++
 drivers/gpu/drm/msm/msm_fence.h         | 20 +++++++
 drivers/gpu/drm/msm/msm_gem.c           |  5 ++
 drivers/gpu/drm/msm/msm_kms.h           |  8 ---
 drivers/gpu/drm/scheduler/sched_fence.c | 46 +++++++++++++++
 drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
 include/drm/drm_vblank.h                |  1 +
 include/drm/gpu_scheduler.h             | 17 ++++++
 include/linux/dma-fence.h               | 19 +++++++
 include/linux/dma-resv.h                |  2 +
 include/uapi/drm/drm.h                  | 17 ++++++
 include/uapi/drm/msm_drm.h              | 14 ++++-
 include/uapi/linux/sync_file.h          | 26 +++++++++
 27 files changed, 555 insertions(+), 55 deletions(-)

-- 
2.39.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
