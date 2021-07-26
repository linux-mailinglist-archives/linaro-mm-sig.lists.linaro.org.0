Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3823D6A47
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jul 2021 01:35:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67A65634D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jul 2021 23:34:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 182CE634DD; Mon, 26 Jul 2021 23:34:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7179A6339C;
	Mon, 26 Jul 2021 23:34:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4FD926049D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 23:34:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 426106339C; Mon, 26 Jul 2021 23:34:48 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by lists.linaro.org (Postfix) with ESMTPS id 325DB6049D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 23:34:46 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id k1so13489836plt.12
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 16:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oJHcf2A+v4Xg1Z8UjOIkujJQfUCL6EomQD60/Cu1nbQ=;
 b=gyFbRvsBvc3GB64q5FVHckiBc7Bagj0Tn576aP7P1xv3GzUUQkBWJlEisCbs9U1dPd
 Tk9UniFqVFVZWkkYVe1Q1ZOH/y1b0ES64cKz3YE9cpvrUvfXin7PGX5SgM/fSQmgbPjk
 IHkil3GlN09mZixx++iR0YhCsRfzIPUMLFQCMFak/xuSx+i9Wlv4yBlf/FsDIzTJQRFr
 IWRf/VAat9oNJUSf+dFtyQmcsNSIvOeN51hisgAPe/GHMdkIr6qjXRXcB4eg+5segHnv
 PsndZ2Np2QQf2USln8vIOGRHB9j7rj5TsrwX+/cjAu2Pbo8lWTKf/n3p4hHL0MYG7FFd
 vzbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oJHcf2A+v4Xg1Z8UjOIkujJQfUCL6EomQD60/Cu1nbQ=;
 b=OzGLuOQTnK/8oldSVmCKrBXV1m5MIU5n/uSpiTA0YMzHmhRvOC47Bf89lSBCIo8N/i
 Lk65OCL9ub/kfIX4ritu/F6X7qV2wOUMRNanFUy+IaXRpOeJFMk4PPqstgJR7TgtQ/aX
 6pwzozyoXrg60j4oR6j31jGBCsLYiYGh4ISC9jPGKrp9Ce0g0kglK0fgAn2plHVT1aLl
 ffhhmEduaOzwjLVYVrf2Pw2UxGWUtxn6zKmEF0+lLHl3jluMTollFJsRORSq5ez1qa1j
 AFgtsAWFAwkEHSa33R8ggzU0a2VPdKPR+50x1NrzmPt98HrgKf8b5odzPzY2qGv/wFIg
 0cWg==
X-Gm-Message-State: AOAM532s3DLvwK6kVR0aujYiMi2/U/IfCZ+tKbuJof8wnoseQfR/+iFK
 WHscAV5OCkge0OlRNhv5AAw=
X-Google-Smtp-Source: ABdhPJwO0Aa1CWuY70s13U0aOFFS10F4rpeB45ZWiWi99YiT1whKcfqq/2IVyEdw1gBu5ZuBadW9yQ==
X-Received: by 2002:a63:b953:: with SMTP id v19mr20385890pgo.40.1627342484886; 
 Mon, 26 Jul 2021 16:34:44 -0700 (PDT)
Received: from localhost ([2601:1c0:5200:a6:307:a401:7b76:c6e5])
 by smtp.gmail.com with ESMTPSA id k11sm1000201pgg.25.2021.07.26.16.34.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 16:34:43 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 16:38:47 -0700
Message-Id: <20210726233854.2453899-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
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
Cc: Matthew Brost <matthew.brost@intel.com>, Rob Clark <robdclark@chromium.org>,
 Jack Zhang <Jack.Zhang1@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
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

Rob Clark (4):
  dma-fence: Add deadline awareness
  drm/vblank: Add helper to get next vblank time
  drm/atomic-helper: Set fence deadline for vblank
  drm/scheduler: Add fence deadline support

 drivers/dma-buf/dma-fence.c             | 39 +++++++++++++++++++++++++
 drivers/gpu/drm/drm_atomic_helper.c     | 36 +++++++++++++++++++++++
 drivers/gpu/drm/drm_vblank.c            | 31 ++++++++++++++++++++
 drivers/gpu/drm/scheduler/sched_fence.c | 10 +++++++
 drivers/gpu/drm/scheduler/sched_main.c  |  3 ++
 include/drm/drm_vblank.h                |  1 +
 include/linux/dma-fence.h               | 17 +++++++++++
 7 files changed, 137 insertions(+)

-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
