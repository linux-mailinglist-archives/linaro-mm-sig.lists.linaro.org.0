Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 952C1A9FAEF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Apr 2025 22:56:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A920A459B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Apr 2025 20:56:45 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id 2CEC9410BC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Apr 2025 20:56:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=kD6132ox;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.175 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-227b828de00so53588475ad.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Apr 2025 13:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745873791; x=1746478591; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7+KwwMScg2wIn1wFiZ7xCslKNcpSi/KKVTjv87cSzPQ=;
        b=kD6132oxLveS7GuPyZBKv+p8kjbsIqq0tVgjCeIchHAvNfgp2bKbz8UMjNXc2Xb5nY
         X6BdgGPkauC1Y3PgMN+F+XuJYEho+s/xGJZj25m1kO9CmSDUTB+W6ryrMiCndoxbJpHT
         mRiu84n+N+Av51eTtDzgIL4kZPPHc9Dke7bA9p721mdoY6vDtek2TlErPOqsRKCgDYEv
         hEcf8SUu4iCbXgkqe5Hmk/R503ZuAPkQUke9eF8hzlTzfEZhfz1V0TIwKTChc9hLTQxN
         +onFHRIMUD5EIzCOS8rPrDmg3tHgDFgL7QfLP4x1dr7S9wryY4/0vlhapx93gKgN7CCg
         ULXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745873791; x=1746478591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7+KwwMScg2wIn1wFiZ7xCslKNcpSi/KKVTjv87cSzPQ=;
        b=wKF6c9mNvIh3Uuqjt9evAqHZuRx9SLk6wexYF4YrhSkfgPFEXjGkiw1J118glH2ckJ
         yWEJzUZTynNbrsUBtrDKForAMGWpzpjGzeo/bQGHbRoF34nMQytZIvlrWIABODxD1Qyu
         sVGiDoBDHcuhDyN8CcG/XyWsakwl510O1jcX3+bCttmv75T2NsSmgNkU60y6Dwx5oYtZ
         iZ3RUB8k1UwNJLtKA2eLdynf8au2CvkxMYywyx8Pv/fVYJGTtHJhY8Sl/1weeXcpATvv
         q9WSYOk4ax9+9lDUsPut9lGbKJSldG0XZfT2DZBxVmMZ2gfI5RpDr7KKIUfJ2o9oNfbr
         4IPg==
X-Forwarded-Encrypted: i=1; AJvYcCUPmGe2NyU5EEcFS2y00eQPT72BOZmAS9guiLYrqKgsIvUXAL3aBIrpp5rCbC5SE9py/XvCYzmfuiABGMqI@lists.linaro.org
X-Gm-Message-State: AOJu0YxQxno87jar0jCtg5Yy9QlB0fwioLHAXzS+sznfgCgXnoPL/v6+
	s2w3yh6zB2muqgCz/827xdnxYR6ARYRxDXZaLKem4rxC4L9hpvJB
X-Gm-Gg: ASbGncsbIgJy3lxW7D7YzWdfDzE8Zzr6cyr3Ymfcg3z9Wk6iYIsHU1n6BJBOsYxkLVS
	czk3FKpeKCMBJF7C1KeDNIAJqguS43en6ar74cqkIviX5R0CVe2JVkl75x2Zv+XqXJ1rrr59uRB
	nInUSRi7I5kLU/59Hzg9psN2CKM+LQX+ZBjc4Ft9Vm8IsZrOhnatw1k92QP2XzPgFgU8/K4qeQo
	EUmf2kfo+mkCicUhiBUogEL0yTU+IY0JPEjEfXR3CwzHET4JTLlyJYBVbDvtp0sNmX3+e9QaNyF
	JYKwYBYrIgd65vuvuCztXm3w/H3PHrR8lLDYXzP/2N+W7ZLaohyd9kPF90WdjQmRqcg3rTPbM5l
	y4ImKPzLlE8yMRyQ=
X-Google-Smtp-Source: AGHT+IGKtMSFhDrKALYHacjDf6o2U+ErId2ldlU83bKr18MjClQcRoYfhtohAxt8HdoNAwV1+GksqQ==
X-Received: by 2002:a17:903:194b:b0:223:50f0:b97 with SMTP id d9443c01a7336-22de7097d8emr6300835ad.52.1745873791175;
        Mon, 28 Apr 2025 13:56:31 -0700 (PDT)
Received: from localhost ([2a00:79e0:3e00:2601:3afc:446b:f0df:eadc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db51051c6sm87904215ad.206.2025.04.28.13.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 13:56:30 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 28 Apr 2025 13:54:07 -0700
Message-ID: <20250428205619.227835-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2CEC9410BC
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_6(1.00)[209.85.214.175:from];
	R_MISSING_CHARSET(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,igalia.com,arndb.de,mainlining.org,kode54.net,oss.qualcomm.com,kernel.org,lists.linux.dev,ziepe.ca,oracle.com,marek.ca,intel.com,linaro.org,lists.linaro.org,lists.infradead.org,somainline.org,nvidia.com,arm.com,poorly.run];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.214.175:from];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.175:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 3A24WJ5UBCTKFSKCD72BU37JZL3AIW5G
X-Message-ID-Hash: 3A24WJ5UBCTKFSKCD72BU37JZL3AIW5G
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, =?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@igalia.com>, Arnd Bergmann <arnd@arndb.de>, =?UTF-8?q?Barnab=C3=A1s=20Cz=C3=A9m=C3=A1n?= <barnabas.czeman@mainlining.org>, Christopher Snowhill <chris@kode54.net>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Eugene Lepshy <fekz115@gmail.com>, "open list:IOMMU SUBSYSTEM" <iommu@lists.linux.dev>, Jason Gunthorpe <jgg@ziepe.ca>, Jessica Zhang <quic_jesszhan@quicinc.com>, Joao Martins <joao.m.martins@oracle.com>, Jonathan Marek <jonathan@marek.ca>, Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>, "moderated list:ARM SMMU DRIVERS
 " <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, Nicolin Chen <nicolinc@nvidia.com>, "Rob Herring (Arm)" <robh@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Sean Paul <sean@poorly.run>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 00/33] drm/msm: sparse / "VM_BIND" support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3A24WJ5UBCTKFSKCD72BU37JZL3AIW5G/>
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

Changes in v3:
- Switched to seperate VM_BIND ioctl.  This makes the UABI a bit
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
 drivers/gpu/drm/msm/msm_gem_vma.c             | 1265 +++++++++++++++--
 drivers/gpu/drm/msm/msm_gpu.c                 |  171 ++-
 drivers/gpu/drm/msm/msm_gpu.h                 |  132 +-
 drivers/gpu/drm/msm/msm_iommu.c               |  298 +++-
 drivers/gpu/drm/msm/msm_kms.c                 |   18 +-
 drivers/gpu/drm/msm/msm_kms.h                 |    2 +-
 drivers/gpu/drm/msm/msm_mmu.h                 |   38 +-
 drivers/gpu/drm/msm/msm_rd.c                  |   62 +-
 drivers/gpu/drm/msm/msm_ringbuffer.c          |    4 +-
 drivers/gpu/drm/msm/msm_submitqueue.c         |   86 +-
 drivers/gpu/drm/msm/msm_syncobj.c             |  172 +++
 drivers/gpu/drm/msm/msm_syncobj.h             |   37 +
 drivers/iommu/io-pgtable-arm.c                |   18 +-
 include/drm/drm_gpuvm.h                       |   12 +-
 include/linux/io-pgtable.h                    |    8 +
 include/uapi/drm/msm_drm.h                    |  149 +-
 57 files changed, 3012 insertions(+), 1216 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/msm_syncobj.c
 create mode 100644 drivers/gpu/drm/msm/msm_syncobj.h

-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
