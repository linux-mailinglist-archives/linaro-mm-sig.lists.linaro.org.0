Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7203CC613
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 17 Jul 2021 22:25:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E3EE461234
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 17 Jul 2021 20:25:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BF6D16123A; Sat, 17 Jul 2021 20:25:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E35260BF7;
	Sat, 17 Jul 2021 20:25:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 11D2760B0F
 for <linaro-mm-sig@lists.linaro.org>; Sat, 17 Jul 2021 20:25:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0F63760BF7; Sat, 17 Jul 2021 20:25:19 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by lists.linaro.org (Postfix) with ESMTPS id 07A2C60B0F
 for <linaro-mm-sig@lists.linaro.org>; Sat, 17 Jul 2021 20:25:17 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id cu14so8918422pjb.0
 for <linaro-mm-sig@lists.linaro.org>; Sat, 17 Jul 2021 13:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uC3Kt3XtLnkno2+Qm5TSlObC0vd0oMsVm4usUcZZhE0=;
 b=kdjwuhk9YHdADF8pebGkgWK2xYLOLwAmyNlOhdwY2UzzbqpPv320mGwes4Cy3ZTWym
 yo+kAiJdXbh/6oczbYBiWg4gXbnAS7ua7v7SVBE2PCPnVQPL2mUl14p1pGL7yByo39Md
 NTxWAx/9e4uXk9/qRWkH6cFk3QlvHa/xi0Vmuy5ZtucfZJTNWWcyPg9JvdrBeKNeSHIu
 ol8qeZ0DGyf1NMwTTNq1aWLRuLCrWcrz+I2Cpm5GYLtM5vc9TQbVMEGzCsVxEc5xHByG
 jxCmoN3m4UH/R6mMPEZHfWloLt0M8bZPjO7+kY8jg1mRgi6vk9rv5rIM9rK/BQV8yLXx
 eX5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uC3Kt3XtLnkno2+Qm5TSlObC0vd0oMsVm4usUcZZhE0=;
 b=CVlG9Bmtm5h5Qt2i661gZJZKRQ06DYhS+MFvs8Bf8lzjgFT5xXDBiezicmTzDuZ/AT
 /+BR8H8W3pre7JjBtKiJhp1aZbQy4sodDTRKzNWztwEZmyDcOVPNw+D59QqXLuWE7URo
 pyiU7AzSqdZr5ZWZfW/0/o5Ou6L304AxdwY5yKittcPUO1UJ6Jy6UQyHessSV2VhoSX8
 Oq2WbyPv+MgmTpPTqixkkVtRV8oHeNS0Oz1atDvWTxfzar+jXN5BXRdKcHV6BNB4vsHl
 QFsRRZ1r3UeTmZ0qQe+NvO/2w89PRVZ1UZBfNwiTkb7606L07viEaa+gx/HO8XOSztiq
 Ocaw==
X-Gm-Message-State: AOAM5327wFBxZ1v/KhQTiHqg3VkZtXty8TNeY/LuX1WQRmqlIJGY/dBX
 YXj7QufCqHADshn/Jy0GS4I=
X-Google-Smtp-Source: ABdhPJyVmyK0XM4kAPFQungzUnAW5TQP0BSouG+anpFQuhH4Hl65L4sSzUHwZd2jk8FfBb/SIFVN4g==
X-Received: by 2002:a17:90a:a898:: with SMTP id
 h24mr22117356pjq.208.1626553516038; 
 Sat, 17 Jul 2021 13:25:16 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 i1sm15533365pjs.31.2021.07.17.13.25.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Jul 2021 13:25:14 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 17 Jul 2021 13:29:02 -0700
Message-Id: <20210717202924.987514-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 00/11] drm/msm: drm scheduler conversion and
 cleanups
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
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Jonathan Marek <jonathan@marek.ca>, Emma Anholt <emma@anholt.net>,
 Bernard Zhao <bernard@vivo.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Akhil P Oommen <akhilpo@codeaurora.org>,
 Douglas Anderson <dianders@chromium.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Dave Airlie <airlied@redhat.com>, Lee Jones <lee.jones@linaro.org>,
 freedreno@lists.freedesktop.org, Sharat Masetty <smasetty@codeaurora.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

Conversion to gpu_scheduler, and bonus removal of
drm_gem_object_put_locked()

Rob Clark (11):
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
 drivers/gpu/drm/msm/msm_gem.c               |  91 +-----
 drivers/gpu/drm/msm/msm_gem.h               |  37 ++-
 drivers/gpu/drm/msm/msm_gem_submit.c        | 300 ++++++++++++--------
 drivers/gpu/drm/msm/msm_gpu.c               |  50 +---
 drivers/gpu/drm/msm/msm_gpu.h               |  41 ++-
 drivers/gpu/drm/msm/msm_ringbuffer.c        |  70 ++++-
 drivers/gpu/drm/msm/msm_ringbuffer.h        |  12 +
 drivers/gpu/drm/msm/msm_submitqueue.c       |  49 +++-
 include/drm/drm_gem.h                       |   2 -
 include/uapi/drm/msm_drm.h                  |  10 +-
 23 files changed, 440 insertions(+), 359 deletions(-)

-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
