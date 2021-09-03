Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 368A4400513
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 20:44:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F7896322A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 18:44:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 58E0E6314A; Fri,  3 Sep 2021 18:44:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0874610D0;
	Fri,  3 Sep 2021 18:44:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 91B4460581
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8F139610CB; Fri,  3 Sep 2021 18:44:02 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by lists.linaro.org (Postfix) with ESMTPS id 8650760581
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:00 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id
 n13-20020a17090a4e0d00b0017946980d8dso145388pjh.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Sep 2021 11:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eL8IPpLjz+u+tW0DpBHxfXxNC5xBjc+5MpXdFfRQCQg=;
 b=YHyxlRJ9KHFtVLZv4e7UMFACH3/qLmF3MpF0+yavqfvhZZzDGyVeTR/t+WlFdbFLVC
 3QW7jEOI/CDuyeA3esWyXvJP6wbd9ZCujymOIbf/XF6gMnCuurkKmftPGnQoo/QdkdBw
 7+jKNY0tho3FGFB1N1pvtoSkAJnpCv4TdiNI+uqGHfR1RlNG4kdAfKwYC8B0dViOyCl2
 Ar/dPOHZSWhYrhZuCBShrTNNBOchp926sNID6dKZnFdeLBMYyuwqmrSKkIhgnGTGphJg
 yg2RpyiUoBKInxJyG92yOLpfpuGT8W7LsV13uy83CL2eRKttBllW6DN3dbbLA3gw5XV0
 D7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eL8IPpLjz+u+tW0DpBHxfXxNC5xBjc+5MpXdFfRQCQg=;
 b=NVT9GfKG9ozNpvkCMUz/J3MQGoJQ18t0B4IX91dLSbtgWy3cC0Af+OHgFZMLtVp7sA
 ihGCkYhzOk9zPG3fYocZMe44ngmJopMoLfrjQjqZFCPHAL+aRJirOnoDdnYxuU0E9zQD
 66Big1XtN/r6FWEoa+PYj0lZc8YIwANPeWTIX/8hL6kJMsB3AAzWykJhX/gMCQIvlMsC
 52Zx6l4UCNy9bq3QX9lNhGF7DgOyryJhYlsR/AunkNS+mfv/c+pIubTSkEJ2iArGWuaf
 9zklRn7tOUPn/OJciJys8PEatPtx7ZKConhbNvW5Np3Xt4dLtIVvDVLHuCy3CdCpfvNG
 vHLA==
X-Gm-Message-State: AOAM531HsmzUoyClW8Q6VsveGWdLooVLUaM8DZQ4iwqXEUVoRPKAfJ/D
 KC40koUErIes7lWQ68GhZag=
X-Google-Smtp-Source: ABdhPJz303qR3WoSm2Y3+5yldCV+CDvbO1CpVugiOEPTnv5ubkj0mTAp3wQrZViz13f/ianeVmFTfg==
X-Received: by 2002:a17:90a:49cb:: with SMTP id
 l11mr359711pjm.142.1630694639358; 
 Fri, 03 Sep 2021 11:43:59 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 y64sm107777pgy.32.2021.09.03.11.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 11:43:58 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  3 Sep 2021 11:47:51 -0700
Message-Id: <20210903184806.1680887-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v3 0/9] dma-fence: Deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Rob Clark <robdclark@chromium.org>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>, Luben Tuikov <luben.tuikov@amd.com>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 Jack Zhang <Jack.Zhang1@amd.com>, open list <linux-kernel@vger.kernel.org>,
 Melissa Wen <mwen@igalia.com>, Pekka Paalanen <ppaalanen@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Tian Tao <tiantao6@hisilicon.com>, Steven Price <steven.price@arm.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

This series adds deadline awareness to fences, so realtime deadlines
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

Rob Clark (9):
  dma-fence: Add deadline awareness
  drm/vblank: Add helper to get next vblank time
  drm/atomic-helper: Set fence deadline for vblank
  drm/scheduler: Add fence deadline support
  drm/msm: Add deadline based boost support
  dma-buf/fence-array: Add fence deadline support
  dma-buf/fence-chain: Add fence deadline support
  dma-buf/sync_file: Add SET_DEADLINE ioctl
  dma-buf/sw_sync: Add fence deadline support

 drivers/dma-buf/dma-fence-array.c       | 11 ++++
 drivers/dma-buf/dma-fence-chain.c       | 13 +++++
 drivers/dma-buf/dma-fence.c             | 20 +++++++
 drivers/dma-buf/sw_sync.c               | 58 +++++++++++++++++++
 drivers/dma-buf/sync_debug.h            |  2 +
 drivers/dma-buf/sync_file.c             | 19 +++++++
 drivers/gpu/drm/drm_atomic_helper.c     | 36 ++++++++++++
 drivers/gpu/drm/drm_vblank.c            | 32 +++++++++++
 drivers/gpu/drm/msm/msm_fence.c         | 76 +++++++++++++++++++++++++
 drivers/gpu/drm/msm/msm_fence.h         | 20 +++++++
 drivers/gpu/drm/msm/msm_gpu.h           |  1 +
 drivers/gpu/drm/msm/msm_gpu_devfreq.c   | 20 +++++++
 drivers/gpu/drm/scheduler/sched_fence.c | 34 +++++++++++
 drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
 include/drm/drm_vblank.h                |  1 +
 include/drm/gpu_scheduler.h             |  8 +++
 include/linux/dma-fence.h               | 16 ++++++
 include/uapi/linux/sync_file.h          | 20 +++++++
 18 files changed, 388 insertions(+), 1 deletion(-)

-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
