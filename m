Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8FA69146
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Mar 2025 15:55:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B5D7F44525
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Mar 2025 14:55:08 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id 4870A3E8D6
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Mar 2025 14:54:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=jvgrAGWp;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-225fbdfc17dso71123125ad.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Mar 2025 07:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742396087; x=1743000887; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VqnqIl7gzMI6XYAL9+ESVwKY9TAcHFNVEaABvSsYd58=;
        b=jvgrAGWpvyUcd0rpQa3DQtgP4ufmjqVvOu2OLMRD1msATVEefLvvp8qMazvcbM04cI
         ptlwqTtKhxhOWV678Z82VvIZQwYuevoYeN/LZQ5LPO77L3Dr9cy6QNAfEr0+IHXsBJmE
         HwKprx+xgqt1eKK+aaXYVHduqPx1SNE0jwyH0aHy/4D1VoKyUaFqsVwBqzdTmuKl0WXD
         BiGDiQq9MziLM2Q6nUZ4WN1hz9ilUKXPnDaYNi+AvAvamCWFiG7h8ChpChDa2KWvqbN+
         8V4O/Xf5+WIXGzQuEDCX4qxHEzXpVhlom+DvL0Qz83ecUPq7OJdHB5GeOPS6PLpy7Owq
         tfRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742396087; x=1743000887;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VqnqIl7gzMI6XYAL9+ESVwKY9TAcHFNVEaABvSsYd58=;
        b=CLmuy3NNhGAyZTDXTHtNtlwKD3iCerp+P6qgMiMu6Xpfr4k2z6q4XIuCJGMvVLhX6a
         mxf6mKvRmLBWQiy1RzgT+9BT1Z4iGyByaRf1uLqoamVDeaUCjWlP6/hqMVzxttkmd4qI
         tHsyYJA/tdrXWCpCwNu8IV0c8cS7BubC9vsRq0Zdwxf/CnJwJhjoLhCFb9Ikp52zpXNH
         H5/BX5w9pdEQR4IUJEApl04mSTZFzpSdrOFF2XEQak54fvLm9Gc0oxyUE7lSuWupGjED
         3E88RGSazkNbf3SwvhJkkIiWYYqfliFKvcpUS7PLub2ruvUW/TRhqlDwn8qf0xdeLhfg
         d1Qg==
X-Forwarded-Encrypted: i=1; AJvYcCUWdDatU8VvBzVcXpFWg0HphaJfvl1MVjNCZMq6MAjWmt7ykmBvcA7EY0pRl3JO3Z441oYwBe/uJ95Sa5iy@lists.linaro.org
X-Gm-Message-State: AOJu0YxxiWmDpFeyKOFpnetmal2vfWEjCzFZmO9dQy3NGwYaI8BrcPqL
	neWQUm4DSJe0Ggp5Fqi4OU5k49URyOBWluoljxcnRT3/3OETBAd2
X-Gm-Gg: ASbGncs2INAhDDOiphtPrGMopT+FgEBr0j6kmrB3EVXRE2gvXs+XRwW1l5ye5JJ0F96
	OKoiJg+a7ntuewKaCXDHJAXf5QX8Kt+1oJLDiv8yPc1uJUzqH0p0SX9nBXLpYiVmjw0zxE+sUl2
	2Gri62J3D82eT/FHHkeR+X+yzX6Zjw7Ycgfc8n+F/IoP+zjw2fSYKI8jwCbjz6niBPK9zsFxqKP
	uuozsmATN17CpePptG1qSMHEPgc971Hw1i188McgWaAENsI3Fb0TWQSY+Hq/TMwYAW7ScFlBbMh
	1pnZmYwjE+zg6p9HX+Ungj7rZ+nWq6R25ZY/a8QH18jJKhrQ1Cm49LfhzJ+BOajFlHro5AGX4H5
	wLcy4HlID00dF4OAAMso=
X-Google-Smtp-Source: AGHT+IEM2Aydh8wQyAb3fV9+udMGx+2FPS+SU7qcCCvi4qn6KMqVbM+eGzMKYXiVBUkhhnlIU/lnAg==
X-Received: by 2002:a05:6a20:12d5:b0:1ee:e2ac:5159 with SMTP id adf61e73a8af0-1fbebc87101mr5465045637.19.1742396087191;
        Wed, 19 Mar 2025 07:54:47 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af56e9fe51asm10978709a12.36.2025.03.19.07.54.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 07:54:46 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 19 Mar 2025 07:52:12 -0700
Message-ID: <20250319145425.51935-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spamd-Bar: --
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 4870A3E8D6
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.177:from];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,chromium.org,quicinc.com,igalia.com,arndb.de,mainlining.org,kode54.net,kernel.org,gmail.com,intel.com,marek.ca,linaro.org,lists.linaro.org,somainline.org,poorly.run];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.214.177:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: EVNROMUKZHLPK3WNE46SGV33N2GX6RJ2
X-Message-ID-Hash: EVNROMUKZHLPK3WNE46SGV33N2GX6RJ2
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, =?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@igalia.com>, Arnd Bergmann <arnd@arndb.de>, =?UTF-8?q?Barnab=C3=A1s=20Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>, Christopher Snowhill <chris@kode54.net>, Dmitry Baryshkov <lumag@kernel.org>, Eugene Lepshy <fekz115@gmail.com>, Jani Nikula <jani.nikula@intel.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, Jonathan Marek <jonathan@marek.ca>, Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, Sean Paul <sean@poorly.run>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 00/34] drm/msm: sparse / "VM_BIND" support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EVNROMUKZHLPK3WNE46SGV33N2GX6RJ2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

Conversion to DRM GPU VA Manager[1], and adding support for Vulkan Sparse
Memory[2] in the form of:

1. A new VM_BIND submitqueue type for executing VM MSM_SUBMIT_BO_OP_MAP/
   MAP_NULL/UNMAP commands

2. Extending the SUBMIT ioctl to allow submitting batches of one or more
   MAP/MAP_NULL/UNMAP commands to a VM_BIND submitqueue

The UABI takes a slightly different approach from what other drivers have
done, and what would make sense if starting from a clean sheet, ie separate
VM_BIND and EXEC ioctls.  But since we have to maintain support for the
existing SUBMIT ioctl, and because the fence, syncobj, and BO pinning is
largely the same between legacy "BO-table" style SUBMIT ioctls, and new-
style VM updates submitted to a VM_BIND submitqueue, I chose to go the
route of extending the existing `SUBMIT` ioctl rather than adding a new
ioctl.

I also did not implement support for synchronous VM_BIND commands.  Since
userspace could just immediately wait for the `SUBMIT` to complete, I don't
think we need this extra complexity in the kernel.  Synchronous/immediate
VM_BIND operations could be implemented with a 2nd VM_BIND submitqueue.

The corresponding mesa MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/32533

This series can be found in MR form, if you prefer:
https://gitlab.freedesktop.org/drm/msm/-/merge_requests/144

Changes in v2:
- Dropped Bibek Kumar Patro's arm-smmu patches[3], which have since been
  merged.
- Pre-allocate all the things, and drop HACK patch which disabled shrinker.
  This includes ensuring that vm_bo objects are allocated up front, pre-
  allocating VMA objects, and pre-allocating pages used for pgtable updates.
  The latter utilizes io_pgtable_cfg callbacks for pgtable alloc/free, that
  were initially added for panthor. 
- Add back support for BO dumping for devcoredump.
- Link to v1 (RFC): https://lore.kernel.org/dri-devel/20241207161651.410556-1-robdclark@gmail.com/T/#t

[1] https://www.kernel.org/doc/html/next/gpu/drm-mm.html#drm-gpuvm
[2] https://docs.vulkan.org/spec/latest/chapters/sparsemem.html
[3] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=909700

Rob Clark (34):
  drm/gpuvm: Don't require obj lock in destructor path
  drm/gpuvm: Remove bogus lock assert
  drm/gpuvm: Allow VAs to hold soft reference to BOs
  drm/gpuvm: Add drm_gpuvm_sm_unmap_va()
  drm/msm: Rename msm_file_private -> msm_context
  drm/msm: Improve msm_context comments
  drm/msm: Rename msm_gem_address_space -> msm_gem_vm
  drm/msm: Remove vram carveout support
  drm/msm: Collapse vma allocation and initialization
  drm/msm: Collapse vma close and delete
  drm/msm: drm_gpuvm conversion
  drm/msm: Use drm_gpuvm types more
  drm/msm: Split submit_pin_objects()
  drm/msm: Lazily create context VM
  drm/msm: Add opt-in for VM_BIND
  drm/msm: Mark VM as unusable on faults
  drm/msm: Extend SUBMIT ioctl for VM_BIND
  drm/msm: Add VM_BIND submitqueue
  drm/msm: Add _NO_SHARE flag
  drm/msm: Split out helper to get iommu prot flags
  drm/msm: Add mmu support for non-zero offset
  drm/msm: Add PRR support
  drm/msm: Rename msm_gem_vma_purge() -> _unmap()
  drm/msm: Split msm_gem_vma_new()
  drm/msm: Pre-allocate VMAs
  drm/msm: Pre-allocate vm_bo objects
  drm/msm: Pre-allocate pages for pgtable entries
  drm/msm: Wire up gpuvm ops
  drm/msm: Wire up drm_gpuvm debugfs
  drm/msm: Crashdump prep for sparse mappings
  drm/msm: rd dumping prep for sparse mappings
  drm/msm: Crashdec support for sparse
  drm/msm: rd dumping support for sparse
  drm/msm: Bump UAPI version

 drivers/gpu/drm/drm_gpuvm.c                   | 141 ++--
 drivers/gpu/drm/msm/Kconfig                   |   1 +
 drivers/gpu/drm/msm/adreno/a2xx_gpu.c         |  25 +-
 drivers/gpu/drm/msm/adreno/a2xx_gpummu.c      |   5 +-
 drivers/gpu/drm/msm/adreno/a3xx_gpu.c         |  17 +-
 drivers/gpu/drm/msm/adreno/a4xx_gpu.c         |  17 +-
 drivers/gpu/drm/msm/adreno/a5xx_debugfs.c     |   4 +-
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c         |  24 +-
 drivers/gpu/drm/msm/adreno/a5xx_power.c       |   2 +-
 drivers/gpu/drm/msm/adreno/a5xx_preempt.c     |  10 +-
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c         |  32 +-
 drivers/gpu/drm/msm/adreno/a6xx_gmu.h         |   2 +-
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c         |  51 +-
 drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c   |   6 +-
 drivers/gpu/drm/msm/adreno/a6xx_preempt.c     |  10 +-
 drivers/gpu/drm/msm/adreno/adreno_device.c    |   4 -
 drivers/gpu/drm/msm/adreno/adreno_gpu.c       |  84 +-
 drivers/gpu/drm/msm/adreno/adreno_gpu.h       |  23 +-
 .../drm/msm/disp/dpu1/dpu_encoder_phys_wb.c   |  14 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c   |  18 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_formats.h   |   2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |  18 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c     |  14 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.h     |   4 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c     |   6 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c      |  28 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c    |  12 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c     |   4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c      |  19 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c    |  12 +-
 drivers/gpu/drm/msm/dsi/dsi_host.c            |  14 +-
 drivers/gpu/drm/msm/msm_debugfs.c             |  20 +
 drivers/gpu/drm/msm/msm_drv.c                 | 176 ++---
 drivers/gpu/drm/msm/msm_drv.h                 |  35 +-
 drivers/gpu/drm/msm/msm_fb.c                  |  18 +-
 drivers/gpu/drm/msm/msm_fbdev.c               |   2 +-
 drivers/gpu/drm/msm/msm_gem.c                 | 437 +++++-----
 drivers/gpu/drm/msm/msm_gem.h                 | 226 ++++--
 drivers/gpu/drm/msm/msm_gem_prime.c           |  15 +
 drivers/gpu/drm/msm/msm_gem_submit.c          | 234 +++++-
 drivers/gpu/drm/msm/msm_gem_vma.c             | 748 ++++++++++++++++--
 drivers/gpu/drm/msm/msm_gpu.c                 | 146 ++--
 drivers/gpu/drm/msm/msm_gpu.h                 | 132 +++-
 drivers/gpu/drm/msm/msm_iommu.c               | 285 ++++++-
 drivers/gpu/drm/msm/msm_kms.c                 |  18 +-
 drivers/gpu/drm/msm/msm_kms.h                 |   2 +-
 drivers/gpu/drm/msm/msm_mmu.h                 |  38 +-
 drivers/gpu/drm/msm/msm_rd.c                  |  62 +-
 drivers/gpu/drm/msm/msm_ringbuffer.c          |   4 +-
 drivers/gpu/drm/msm/msm_submitqueue.c         |  86 +-
 include/drm/drm_gpuvm.h                       |  14 +-
 include/uapi/drm/msm_drm.h                    |  98 ++-
 52 files changed, 2359 insertions(+), 1060 deletions(-)

-- 
2.48.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
