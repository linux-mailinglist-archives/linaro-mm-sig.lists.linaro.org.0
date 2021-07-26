Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6623D5C4A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jul 2021 16:56:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FA3A634FD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jul 2021 14:56:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CE061634D2; Mon, 26 Jul 2021 14:56:32 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F050634C4;
	Mon, 26 Jul 2021 14:56:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 439726339C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 14:56:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3F2EC60570; Mon, 26 Jul 2021 14:56:28 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by lists.linaro.org (Postfix) with ESMTPS id 32C4A60570
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 14:56:26 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id j1so13217270pjv.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 07:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4kiMiLKKdf74B8SbPL3dRDmnPHR8lzRMp7RHSQmrGNw=;
 b=jI1j/NgDo5hs4g+F/KPwBAM+MOzWrSm17BUPFpmgS+r7lkXmGUXQyhqz+hNF7GRKNx
 YYdlgQ9QLIfqyzRXe3rC5M4gstvciuqgcrV255x0Vxqhw7eL5DloVQhMdzEUbUS0j5hy
 qJOEGjd7GJ8RWFVPOyIRnu7H96draFn/HNd/c+M2AqULKQLshZ17TLnXoPmqxn2bN6AV
 u6ORrEl3fyvVFrZx3ZkKJxZhaU29xzgJVNObiE/bAsFPXX84rwqeTQiIUzveLeotHELk
 XJnGUQTodmB3X2vAoLHL/gEW0aLo/m0ovZFT8XxhChsFH59k+DitsaHWPt04F84Tr63U
 eB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4kiMiLKKdf74B8SbPL3dRDmnPHR8lzRMp7RHSQmrGNw=;
 b=jsi5DXrcTNiMmN6UgV23JbEFW77GMSNAAMCBG/87HVoywabLbYEPRbukqm9tfvq8yP
 dfy0z/u2168Ym7wT622ULEPBvLS6jteGorpCQ7I0p/nna1kg8P/3K1fcwtrSxdzUE9fr
 Ft72EdS37yWafFGnri1yWxKpLhtococBi5tt0gR+/35b3Wf/SoywLWBbvgKIHPwNpVIs
 YWtbO8cQmLyQb7p/QHRElbm1u7s+cFA6J1ChIdO7I/g5sfFOrGln6hmNIi8w/lNMg6my
 1Gaepu7dWhSGx1iCnkPSbIygQ7Wbsk1w4eZ4fPLxmpgjPaxqlwJ1qBzIdGWaeAbVE3mu
 43PQ==
X-Gm-Message-State: AOAM530NMowOKAn//PyrKp/WdTFxQE6BnkJh/5Ogo7HwOunicVMY4Jcl
 ARy9KXYxO2XNZkQrMkOCcFI=
X-Google-Smtp-Source: ABdhPJxCzSPaN6g5q60cPg019AFRxemj39UE/GdRQyt7U07FdFkZJldm6g5LHorArCTP21RfR8lbHw==
X-Received: by 2002:a17:902:a710:b029:12b:9b9f:c461 with SMTP id
 w16-20020a170902a710b029012b9b9fc461mr14548619plq.59.1627311385190; 
 Mon, 26 Jul 2021 07:56:25 -0700 (PDT)
Received: from localhost ([2601:1c0:5200:a6:307:a401:7b76:c6e5])
 by smtp.gmail.com with ESMTPSA id x6sm3034152pjk.24.2021.07.26.07.56.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 07:56:24 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 08:00:14 -0700
Message-Id: <20210726150038.2187631-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v2 00/12] drm/msm: drm scheduler conversion
 and cleanups
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
Cc: Emma Anholt <emma@anholt.net>, Konrad Dybcio <konrad.dybcio@somainline.org>,
 Akhil P Oommen <akhilpo@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Lee Jones <lee.jones@linaro.org>, Rob Clark <robdclark@chromium.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Jonathan Marek <jonathan@marek.ca>, Bernard Zhao <bernard@vivo.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Sharat Masetty <smasetty@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Douglas Anderson <dianders@chromium.org>,
 open list <linux-kernel@vger.kernel.org>,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Conversion to gpu_scheduler, and bonus removal of
drm_gem_object_put_locked()

v2: Fix priority mixup (msm UAPI has lower numeric priority value as
    higher priority, inverse of drm/scheduler) and add some comments
    in the UAPI header to clarify.

    Now that we move active refcnt get into msm_gem_submit, add a
    patch to mark all bos busy before pinning, to avoid evicting bos
    used in same batch.

    Fix bo locking for cmdstream dumping ($debugfs/n/{rd,hangrd})

Rob Clark (12):
  drm/msm: Docs and misc cleanup
  drm/msm: Small submitqueue creation cleanup
  drm/msm: drop drm_gem_object_put_locked()
  drm: Drop drm_gem_object_put_locked()
  drm/msm/submit: Simplify out-fence-fd handling
  drm/msm: Consolidate submit bo state
  drm/msm: Track "seqno" fences by idr
  drm/msm: Return ERR_PTR() from submit_create()
  drm/msm: Conversion to drm scheduler
  drm/msm: Drop struct_mutex in submit path
  drm/msm: Utilize gpu scheduler priorities
  drm/msm/gem: Mark active before pinning

 drivers/gpu/drm/drm_gem.c                   |  22 --
 drivers/gpu/drm/msm/Kconfig                 |   1 +
 drivers/gpu/drm/msm/adreno/a5xx_debugfs.c   |   4 +-
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c       |   6 +-
 drivers/gpu/drm/msm/adreno/a5xx_power.c     |   2 +-
 drivers/gpu/drm/msm/adreno/a5xx_preempt.c   |   7 +-
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c       |  12 +-
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c       |   2 +-
 drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c |   4 +-
 drivers/gpu/drm/msm/adreno/adreno_gpu.c     |   6 +-
 drivers/gpu/drm/msm/msm_drv.c               |  30 +-
 drivers/gpu/drm/msm/msm_fence.c             |  39 ---
 drivers/gpu/drm/msm/msm_fence.h             |   2 -
 drivers/gpu/drm/msm/msm_gem.c               |  93 +-----
 drivers/gpu/drm/msm/msm_gem.h               |  39 ++-
 drivers/gpu/drm/msm/msm_gem_submit.c        | 316 ++++++++++++--------
 drivers/gpu/drm/msm/msm_gpu.c               |  46 +--
 drivers/gpu/drm/msm/msm_gpu.h               |  78 ++++-
 drivers/gpu/drm/msm/msm_rd.c                |   6 +-
 drivers/gpu/drm/msm/msm_ringbuffer.c        |  70 ++++-
 drivers/gpu/drm/msm/msm_ringbuffer.h        |  12 +
 drivers/gpu/drm/msm/msm_submitqueue.c       |  53 +++-
 include/drm/drm_gem.h                       |   2 -
 include/uapi/drm/msm_drm.h                  |  14 +-
 24 files changed, 503 insertions(+), 363 deletions(-)

-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
