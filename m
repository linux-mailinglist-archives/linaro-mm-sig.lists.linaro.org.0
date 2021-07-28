Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EAD3D84FA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 03:02:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBBDC634DE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 01:02:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 616F960EFE; Wed, 28 Jul 2021 01:02:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA7AA60EFE;
	Wed, 28 Jul 2021 01:02:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E5C4960C2C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 01:02:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D9E0160EFE; Wed, 28 Jul 2021 01:02:25 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by lists.linaro.org (Postfix) with ESMTPS id D19F460C2C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 01:02:23 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id i1so641836plr.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jul 2021 18:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JnNg+LtmUtuMVbhwKpc+TsfLTbQ0CCjgGn2ha7kyTe4=;
 b=jAEhX2vgfmLiBn/ABCM8HM+m6KEW9HsmuvIFt5Nb8Ze0p6OBtUT9v9SWOobzrxOPAJ
 OPVve9cPQNN4lNlgltzg3wrLueqe9WyMCOkCtZ3LTyrMRPrT4mPxqrTFpjB4BrZGFTZz
 W0WTXH2ZtlfGjZnEGUXMjgX3j3c/hvnwS/Cc/uwgWLoSkwM5R0iU1OT9ZxcYgTQJ3ZVw
 gX1jdASZZs5Aza9+J13g7ZbHaqoL7/TARhxbAxwvFzB5mmt9d54oToIZukcX+rTg1k1O
 25WAQ8Gg+3/bggl9+wYGch3j98a1XDMWOs2lvt+wszlrhRXtPoomRki1StVlkV6I6oqG
 nGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JnNg+LtmUtuMVbhwKpc+TsfLTbQ0CCjgGn2ha7kyTe4=;
 b=rWzpinKFbUKvdNIf8TVv49HS6aGulK47d7WQqH1x519UgICo11d34QWL/fjFcxmbfy
 QbnjJ0ahUurYpQxVgMmO5EPJeUgq0pAltn3zfjJ+2JY9o30mXFL/OR5Cz/v3hB0dIgZh
 lZelhew4SHSwKUmELapwnBnmAUn5WXYzAvsTSYkDGglRFqjkm4SNy0G8EHFdpZAes0+6
 Q+MxhOozOeSClJ2bwFgjXUeNJ5GjeepVsFb9a3cZC3yqS+LVJ/IERE7OU7NmJsthVrIG
 Q/QJPQo6zuBJbH+2D9jcMGMQVaxs8vdXVecfh6+lQzgdvif3+jn9iUgk8LiHsdh7Tntu
 oAXQ==
X-Gm-Message-State: AOAM5330+JdBNu6YVhS3kXnM57cxDwj3OAJY2W7FOjKbgfcxKYqOPEYi
 menyCE8A07JWDYt5QZCxlss=
X-Google-Smtp-Source: ABdhPJwE8048m0W7kGr6PrR8geRv+/5g1CPr5++AujkltYbWKD/aIwJ8tcj6XPlLbxcvsdGz2drG9A==
X-Received: by 2002:a65:5bc6:: with SMTP id o6mr7933192pgr.2.1627434142666;
 Tue, 27 Jul 2021 18:02:22 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 n17sm5405596pgj.93.2021.07.27.18.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jul 2021 18:02:21 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 27 Jul 2021 18:06:05 -0700
Message-Id: <20210728010632.2633470-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v4 00/13] drm/msm: drm scheduler conversion
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
 Dave Airlie <airlied@redhat.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Sharat Masetty <smasetty@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Douglas Anderson <dianders@chromium.org>,
 open list <linux-kernel@vger.kernel.org>,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 freedreno@lists.freedesktop.org,
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

v3: Add a patch to drop submit bo_list and instead use -EALREADY
    to detect errors with same obj appearing multiple times in the
    submit ioctl bos table.  Otherwise, with struct_mutex locking
    dropped, we'd need to move insertion into and removal from
    bo_list under the obj lock.

v4: One last small tweak, drop unused wait_queue_head_t in
    msm_fence_context

Rob Clark (13):
  drm/msm: Docs and misc cleanup
  drm/msm: Small submitqueue creation cleanup
  drm/msm: drop drm_gem_object_put_locked()
  drm: Drop drm_gem_object_put_locked()
  drm/msm/submit: Simplify out-fence-fd handling
  drm/msm: Consolidate submit bo state
  drm/msm: Track "seqno" fences by idr
  drm/msm: Return ERR_PTR() from submit_create()
  drm/msm: Conversion to drm scheduler
  drm/msm: Drop submit bo_list
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
 drivers/gpu/drm/msm/msm_fence.c             |  42 ---
 drivers/gpu/drm/msm/msm_fence.h             |   3 -
 drivers/gpu/drm/msm/msm_gem.c               |  94 +-----
 drivers/gpu/drm/msm/msm_gem.h               |  47 +--
 drivers/gpu/drm/msm/msm_gem_submit.c        | 344 ++++++++++++--------
 drivers/gpu/drm/msm/msm_gpu.c               |  46 +--
 drivers/gpu/drm/msm/msm_gpu.h               |  78 ++++-
 drivers/gpu/drm/msm/msm_rd.c                |   6 +-
 drivers/gpu/drm/msm/msm_ringbuffer.c        |  70 +++-
 drivers/gpu/drm/msm/msm_ringbuffer.h        |  12 +
 drivers/gpu/drm/msm/msm_submitqueue.c       |  53 ++-
 include/drm/drm_gem.h                       |   2 -
 include/uapi/drm/msm_drm.h                  |  14 +-
 24 files changed, 516 insertions(+), 391 deletions(-)

-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
