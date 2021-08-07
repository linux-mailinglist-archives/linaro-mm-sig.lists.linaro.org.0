Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE953E36B7
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Aug 2021 20:34:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE7B36621A
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Aug 2021 18:34:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1AC8163509; Sat,  7 Aug 2021 18:34:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9BDB1631D0;
	Sat,  7 Aug 2021 18:33:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E85963398
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Aug 2021 18:33:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9CA37631D0; Sat,  7 Aug 2021 18:33:56 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by lists.linaro.org (Postfix) with ESMTPS id 8F42B631D0
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Aug 2021 18:33:54 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id
 u13-20020a17090abb0db0290177e1d9b3f7so27706936pjr.1
 for <linaro-mm-sig@lists.linaro.org>; Sat, 07 Aug 2021 11:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F+e3SooHzk+LlYQaG9v32P5P5RuC1GzjFNDE7bWnXxU=;
 b=YfI6lxfAOG2OET1bh5zLHcADMAbiMkPadAy7+H7riBVXl5spMBcXo/HISjFdEUQtYB
 3JrS0bUFUY5TgelVHFfCnfpSPIDWIeFgO8Un0u+dCCpfWSvvWUo5dWu6PZn3eL673Xmu
 0fVtGhMcoTjJ8CjS5oT3j2x3quVjSFLOssCTIL62/ZZPwYeQb6RYiOkcJOJeU9sVJxhf
 fMq+Dx8Ni0k6gRoxgfYw/IyqUGE5shZ105uPamGO7/y/uILu6ztFAtavZb8UVRcn16Lr
 OCeGpxYtLmS+Je8nCGmlplld7jrDcgNIyOI65SDgDW0MdLDfatAxyaOrZFl0XiIoiqkH
 jADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F+e3SooHzk+LlYQaG9v32P5P5RuC1GzjFNDE7bWnXxU=;
 b=Dys1oEy1xRoqYlCA9ALTthLufZx6IxIHd+YiLx8MrIPH8TYduVrbHVVNuZBKLqwtCr
 zCRJEgfDgi+DWp+9wtgImFJPUtTocCfcNg/6waUUfeq8CcmL6RNCqfTm7MBN+kO00D+3
 34vXdG7dy0sPQQWwvbTteIRUFRjrAE/G1xnW3CnV1lUV36CtZa0O1UGNt5Awhnky7lUJ
 nZGw8BUF9HDIQXdm2ZWe4e2znq+6McmZfuKmjddjGMTJrY0QuZrlbjosmqGnq4AiKINg
 Vm/QMA9i3OQeqtfZX8McRPqjMzeA4J+Re0H3FjZP+po/mK9U6YIRZeDhjfLFzCN85akz
 bceA==
X-Gm-Message-State: AOAM533Tr9CuYcUI2e8wm5k93l4lqyJr/NUUV0SpKd3rx8TLa8fCKlnZ
 QBEDbM3UmIMo0K6KhCc9u20=
X-Google-Smtp-Source: ABdhPJzS73oVEfLet7XYlKo2tM804kuGxGgyBQG8GiyiEdJG6r6bk27S0ruQMTqD/d+FDHRA4bcakw==
X-Received: by 2002:a63:4f51:: with SMTP id p17mr139787pgl.29.1628361233656;
 Sat, 07 Aug 2021 11:33:53 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 n33sm16516858pgm.55.2021.08.07.11.33.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Aug 2021 11:33:52 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat,  7 Aug 2021 11:37:54 -0700
Message-Id: <20210807183804.459850-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v2 0/5] dma-fence: Deadline awareness
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
 Gustavo Padovan <gustavo@padovan.org>, linux-arm-msm@vger.kernel.org,
 Jack Zhang <Jack.Zhang1@amd.com>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>, Steven Price <steven.price@arm.com>,
 freedreno@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Based on discussion from a previous series[1] to add a "boost" mechanism
when, for example, vblank deadlines are missed.  Instead of a boost
callback, this approach adds a way to set a deadline on the fence, by
which the waiter would like to see the fence signalled.

I've not yet had a chance to re-work the drm/msm part of this, but
wanted to send this out as an RFC in case I don't have a chance to
finish the drm/msm part this week.

Original description:

In some cases, like double-buffered rendering, missing vblanks can
trick the GPU into running at a lower frequence, when really we
want to be running at a higher frequency to not miss the vblanks
in the first place.

This is partially inspired by a trick i915 does, but implemented
via dma-fence for a couple of reasons:

1) To continue to be able to use the atomic helpers
2) To support cases where display and gpu are different drivers

[1] https://patchwork.freedesktop.org/series/90331/

v1: https://patchwork.freedesktop.org/series/93035/
v2: Move filtering out of later deadlines to fence implementation
    to avoid increasing the size of dma_fence

Rob Clark (5):
  dma-fence: Add deadline awareness
  drm/vblank: Add helper to get next vblank time
  drm/atomic-helper: Set fence deadline for vblank
  drm/scheduler: Add fence deadline support
  drm/msm: Add deadline based boost support

 drivers/dma-buf/dma-fence.c             | 20 +++++++
 drivers/gpu/drm/drm_atomic_helper.c     | 36 ++++++++++++
 drivers/gpu/drm/drm_vblank.c            | 31 ++++++++++
 drivers/gpu/drm/msm/msm_fence.c         | 76 +++++++++++++++++++++++++
 drivers/gpu/drm/msm/msm_fence.h         | 20 +++++++
 drivers/gpu/drm/msm/msm_gpu.h           |  1 +
 drivers/gpu/drm/msm/msm_gpu_devfreq.c   | 20 +++++++
 drivers/gpu/drm/scheduler/sched_fence.c | 25 ++++++++
 drivers/gpu/drm/scheduler/sched_main.c  |  3 +
 include/drm/drm_vblank.h                |  1 +
 include/drm/gpu_scheduler.h             |  6 ++
 include/linux/dma-fence.h               | 16 ++++++
 12 files changed, 255 insertions(+)

-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
