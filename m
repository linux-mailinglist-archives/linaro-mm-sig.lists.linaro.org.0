Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B25AA7801
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 19:07:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2478F45920
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  2 May 2025 17:07:23 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id 88C6141111
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 May 2025 17:07:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Vba2sar3;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.175 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2260c91576aso22499645ad.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 02 May 2025 10:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746205629; x=1746810429; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TunKzoLEJR5EJu7jJjlTuy7onTJgUGYDWPQXzRBljII=;
        b=Vba2sar3Jgf7Aa2j/5a1jU49u6TOxqkzIvEkHmQug8FyCB2oNdrVItGzWUx5RfaQEa
         /e5ELuuOF0E5I6Gm+UNU0m5bAuM+V7DUwvpUDPcBtLdBh6tBFXFQybLKgwYAQR82sm3G
         w6k2msyT43w152jcZXSGkEz80TqSE0o2i6zGcKeUSOqhRKT4/2aT5UASy/9aeu3nzkIl
         8ILNFy06Ck0ZjjmQOu4Y+rGujnUe/RRPMAqaWHAafUFFX11J2MDY8CPcTAARCokrFMEC
         jTUdPQfe6mWGWwXGLYiD3uPyMqHmvt2O7398DOIgnRD1GndPt2kctfdN4TYHlsR5HSVc
         HS+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746205629; x=1746810429;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TunKzoLEJR5EJu7jJjlTuy7onTJgUGYDWPQXzRBljII=;
        b=VFmQJZG0VFBSSxRMGb7oHSWnICusNoGPJVsWiEKRGZpokJXqZSmspR45E1hv9K5pce
         YVqNLsmkOjs2jH4REJsFDAbvRA7E/HfdYTxK3Y7yFvJI9wm3EXQ0aP7R8HoyVOt/l6hz
         svS7vL35kjMePbUXV75uWqIM+owMtmJWiPe6l2A/iueGpjBnKx4tcvm5thqfDOpKJgKO
         8fIDRPgX4IjKyZjK9mMye+h3L3PQpC197p1ET9hEE2FttHydg3hGTC7kO28+KbFwO9ow
         urSdiW7IYA7ePqgE8l0nfWc963P2z9f6fhh7MoytiCVqVG5TfA+BR79/Nxbp20Y8E8yq
         q56A==
X-Forwarded-Encrypted: i=1; AJvYcCVOSn9K0tkoUZL0cq1VFzbfeADlW97oq009UvcXR4huXkblUZeYG/ED+d2ak/lI5LNsdeDN1iyY4RZ0Pw4E@lists.linaro.org
X-Gm-Message-State: AOJu0YxeCbKZpSDw+ItVomg06GPaS/tTwrNWmKtjYhyXbflUEMp8P90Q
	+rsXuEoUqp708fetYJNpifKsHCxym5O9dZYNz1PcQLWZNUueIPTO
X-Gm-Gg: ASbGncsaHesUbijnK5y9l1l1mqLMsCpu2ysc1TASkDvhY6j8zBOXkOeJMklIqoBi8jR
	9t9Oaui1G7eCNZhHppXZjiHuYoR2FdL5vcQsZE1/+s9zy7hBqhmTCfKHEOYs14CCrV6hzH3lZt5
	XUDcei1bbG6wnchME8rWTLCkbY2K3Uuk02cLllL33MlWzVpatiFeBsF+gelNl7+o/onCNmyfT0G
	2Ff12a76OlC0uewxX8YWqQpN7LI4ujPnLje8em1KmxHQ7UJy2OcAYDwgvjfP/nQ8joLnN+hRhzW
	SV9L7j3pUJNhLsyotYb5cTJyy82M45GGiQ5ZQ1YYx7pPXTfdSgxbHusa4IQ2caLn0Bcl1fZuRtK
	oFhkEAeKlZPxxw8M=
X-Google-Smtp-Source: AGHT+IE/Vs9DjTxhGgDydtiPPcIuTgYawUe+pebY4/T1joTUH5wBFPaEByUbsh42IWm4peUk0OXRgA==
X-Received: by 2002:a17:903:2447:b0:224:1157:6d26 with SMTP id d9443c01a7336-22e10311c7cmr56146565ad.4.1746205628501;
        Fri, 02 May 2025 10:07:08 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b1fb3920f6dsm1032598a12.10.2025.05.02.10.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 10:07:07 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  2 May 2025 09:56:27 -0700
Message-ID: <20250502165831.44850-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 88C6141111
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[vulkan.org:url,mail-pl1-f175.google.com:helo,mail-pl1-f175.google.com:rdns,chromium.org:email];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[30];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,igalia.com,arndb.de,mainlining.org,kode54.net,oss.qualcomm.com,kernel.org,lists.linux.dev,ziepe.ca,oracle.com,marek.ca,intel.com,linaro.org,lists.linaro.org,lists.infradead.org,somainline.org,nvidia.com,arm.com,poorly.run];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.175:from];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[209.85.214.175:from]
X-Rspamd-Action: no action
Message-ID-Hash: PNTKC2QQUWNHG6RAHOPPAIO5LXDYKH6K
X-Message-ID-Hash: PNTKC2QQUWNHG6RAHOPPAIO5LXDYKH6K
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, =?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@igalia.com>, Arnd Bergmann <arnd@arndb.de>, =?UTF-8?q?Barnab=C3=A1s=20Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>, Christopher Snowhill <chris@kode54.net>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Eugene Lepshy <fekz115@gmail.com>, "open list:IOMMU SUBSYSTEM" <iommu@lists.linux.dev>, Jason Gunthorpe <jgg@ziepe.ca>, Jessica Zhang <quic_jesszhan@quicinc.com>, Joao Martins <joao.m.martins@oracle.com>, Jonathan Marek <jonathan@marek.ca>, Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>, "moderated list:ARM SMMU DRIVERS
 " <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, Nicolin Chen <nicolinc@nvidia.com>, Robin Murphy <robin.murphy@arm.com>, Sean Paul <sean@poorly.run>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 00/33] drm/msm: sparse / "VM_BIND" support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PNTKC2QQUWNHG6RAHOPPAIO5LXDYKH6K/>
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

2. A new VM_BIND ioctl to allow submitting batches of one or more
   MAP/MAP_NULL/UNMAP commands to a VM_BIND submitqueue

I did not implement support for synchronous VM_BIND commands.  Since
userspace could just immediately wait for the `SUBMIT` to complete, I don't
think we need this extra complexity in the kernel.  Synchronous/immediate
VM_BIND operations could be implemented with a 2nd VM_BIND submitqueue.

The corresponding mesa MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/32533

Changes in v4:
- Replace selftests_running flag with IO_PGTABLE_QUIRK_NO_WARN_ON [Robin
  Murphy]
- Rework msm_gem_vm_sm_step_remap() for cases that orig_vma is evicted
  to solve some crashes
- Block when drm_file is closed until pending VM_BIND ops complete, before
  tearing down the VM's scheduler, to solve some memory leaks.
- Link to v3: https://lore.kernel.org/all/20250428205619.227835-1-robdclark@gmail.com/

Changes in v3:
- Switched to separate VM_BIND ioctl.  This makes the UABI a bit
  cleaner, but OTOH the userspace code was cleaner when the end result
  of either type of VkQueue lead to the same ioctl.  So I'm a bit on
  the fence.
- Switched to doing the gpuvm bookkeeping synchronously, and only
  deferring the pgtable updates.  This avoids needing to hold any resv
  locks in the fence signaling path, resolving the last shrinker related
  lockdep complaints.  OTOH it means userspace can trigger invalid
  pgtable updates with multiple VM_BIND queues.  In this case, we ensure
  that unmaps happen completely (to prevent userspace from using this to
  access free'd pages), mark the context as unusable, and move on with
  life.
- Link to v2: https://lore.kernel.org/all/20250319145425.51935-1-robdclark@gmail.com/

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

Rob Clark (33):
  drm/gpuvm: Don't require obj lock in destructor path
  drm/gpuvm: Allow VAs to hold soft reference to BOs
  iommu/io-pgtable-arm: Add quirk to quiet WARN_ON()
  drm/msm: Rename msm_file_private -> msm_context
  drm/msm: Improve msm_context comments
  drm/msm: Rename msm_gem_address_space -> msm_gem_vm
  drm/msm: Remove vram carveout support
  drm/msm: Collapse vma allocation and initialization
  drm/msm: Collapse vma close and delete
  drm/msm: Don't close VMAs on purge
  drm/msm: drm_gpuvm conversion
  drm/msm: Convert vm locking
  drm/msm: Use drm_gpuvm types more
  drm/msm: Split out helper to get iommu prot flags
  drm/msm: Add mmu support for non-zero offset
  drm/msm: Add PRR support
  drm/msm: Rename msm_gem_vma_purge() -> _unmap()
  drm/msm: Lazily create context VM
  drm/msm: Add opt-in for VM_BIND
  drm/msm: Mark VM as unusable on GPU hangs
  drm/msm: Add _NO_SHARE flag
  drm/msm: Crashdump prep for sparse mappings
  drm/msm: rd dumping prep for sparse mappings
  drm/msm: Crashdec support for sparse
  drm/msm: rd dumping support for sparse
  drm/msm: Extract out syncobj helpers
  drm/msm: Use DMA_RESV_USAGE_BOOKKEEP/KERNEL
  drm/msm: Add VM_BIND submitqueue
  drm/msm: Support IO_PGTABLE_QUIRK_NO_WARN_ON
  drm/msm: Support pgtable preallocation
  drm/msm: Split out map/unmap ops
  drm/msm: Add VM_BIND ioctl
  drm/msm: Bump UAPI version

 drivers/gpu/drm/drm_gpuvm.c                   |   15 +-
 drivers/gpu/drm/msm/Kconfig                   |    1 +
 drivers/gpu/drm/msm/Makefile                  |    1 +
 drivers/gpu/drm/msm/adreno/a2xx_gpu.c         |   25 +-
 drivers/gpu/drm/msm/adreno/a2xx_gpummu.c      |    5 +-
 drivers/gpu/drm/msm/adreno/a3xx_gpu.c         |   17 +-
 drivers/gpu/drm/msm/adreno/a4xx_gpu.c         |   17 +-
 drivers/gpu/drm/msm/adreno/a5xx_debugfs.c     |    4 +-
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c         |   22 +-
 drivers/gpu/drm/msm/adreno/a5xx_power.c       |    2 +-
 drivers/gpu/drm/msm/adreno/a5xx_preempt.c     |   10 +-
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c         |   32 +-
 drivers/gpu/drm/msm/adreno/a6xx_gmu.h         |    2 +-
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c         |   49 +-
 drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c   |    6 +-
 drivers/gpu/drm/msm/adreno/a6xx_preempt.c     |   10 +-
 drivers/gpu/drm/msm/adreno/adreno_device.c    |    4 -
 drivers/gpu/drm/msm/adreno/adreno_gpu.c       |   88 +-
 drivers/gpu/drm/msm/adreno/adreno_gpu.h       |   23 +-
 .../drm/msm/disp/dpu1/dpu_encoder_phys_wb.c   |   14 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c   |   18 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_formats.h   |    2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   18 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c     |   14 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.h     |    4 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c     |    6 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c      |   28 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c    |   12 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c     |    4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c      |   19 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c    |   12 +-
 drivers/gpu/drm/msm/dsi/dsi_host.c            |   14 +-
 drivers/gpu/drm/msm/msm_drv.c                 |  183 +--
 drivers/gpu/drm/msm/msm_drv.h                 |   35 +-
 drivers/gpu/drm/msm/msm_fb.c                  |   18 +-
 drivers/gpu/drm/msm/msm_fbdev.c               |    2 +-
 drivers/gpu/drm/msm/msm_gem.c                 |  489 +++----
 drivers/gpu/drm/msm/msm_gem.h                 |  217 ++-
 drivers/gpu/drm/msm/msm_gem_prime.c           |   15 +
 drivers/gpu/drm/msm/msm_gem_shrinker.c        |    4 +-
 drivers/gpu/drm/msm/msm_gem_submit.c          |  295 ++--
 drivers/gpu/drm/msm/msm_gem_vma.c             | 1288 +++++++++++++++--
 drivers/gpu/drm/msm/msm_gpu.c                 |  171 ++-
 drivers/gpu/drm/msm/msm_gpu.h                 |  132 +-
 drivers/gpu/drm/msm/msm_iommu.c               |  298 +++-
 drivers/gpu/drm/msm/msm_kms.c                 |   18 +-
 drivers/gpu/drm/msm/msm_kms.h                 |    2 +-
 drivers/gpu/drm/msm/msm_mmu.h                 |   38 +-
 drivers/gpu/drm/msm/msm_rd.c                  |   62 +-
 drivers/gpu/drm/msm/msm_ringbuffer.c          |    4 +-
 drivers/gpu/drm/msm/msm_submitqueue.c         |   96 +-
 drivers/gpu/drm/msm/msm_syncobj.c             |  172 +++
 drivers/gpu/drm/msm/msm_syncobj.h             |   37 +
 drivers/iommu/io-pgtable-arm.c                |   27 +-
 include/drm/drm_gpuvm.h                       |   12 +-
 include/linux/io-pgtable.h                    |    8 +
 include/uapi/drm/msm_drm.h                    |  149 +-
 57 files changed, 3043 insertions(+), 1227 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/msm_syncobj.c
 create mode 100644 drivers/gpu/drm/msm/msm_syncobj.h

-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
