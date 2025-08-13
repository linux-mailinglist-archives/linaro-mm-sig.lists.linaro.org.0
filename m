Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4D6B240EC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 08:04:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0350844D28
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 06:04:02 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id 7CAD24413E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Aug 2025 06:03:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=MgsjAQzn;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.53 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-61860a739a3so1199968a12.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Aug 2025 23:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755065028; x=1755669828; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5L1eqv4g8UH06X+GlBP44uLgWu6jy6OPxp8xkG8YMas=;
        b=MgsjAQznND/wR7wJy1Z6IxhuISe2UwydeTWn9ZcA79Xk6CWjDyAX0ynUmokIVQZleB
         h5adAGtA7s3qWHXz/tADffhmti3w7AYRl7LtdST3OdZD6n3RJX0y9yGh5BXXu1i/2vt/
         jm6BNkmW/wMmUAMyAZeGs/sjfOkkzAXYUbEA4hmS4TYBlfMXqSG7xkOzomiIHEzP0DAw
         lTQl8E37xtN2+SGBNjkPLf0zqfwyTNyMBxKfLHmwVz3UXlmN+zKJcwBXIBKTv8kh7WHg
         2d/2Yf/H5gWSLU901cdDAotQTZZlU4l4IP90vIrUdJEcgwqK82xqeL9wCYxNxeGTrz0e
         80gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755065028; x=1755669828;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5L1eqv4g8UH06X+GlBP44uLgWu6jy6OPxp8xkG8YMas=;
        b=ZmohNFqod/GzaZ0a1GpzvfFJz0TpINKDXf6OPqZBjHToLkErdiLQQbE1mThM1X2BN5
         bPOrymFtHY7oFEIV78YG5QWn0LVcaBbKmrqEgsTsy4V763soBxU9khOOB+Wt+rSd2fpF
         L0+el4rz4T7O0SaJyVY5oz17Ev9ox9KKLDwHLf2lPHymvzpemg2fCj1cuzOHeY4lJXPH
         6OehE416VvT/n9XMO/E8XiYLwBeWv7L2CN2yKU+iir6Kbc2GsN3HO64BIniJK4tl52WF
         uVIYg8XRZLlDIp9OfZY/zdK2A2mSXGZi2Yd9rj7XUSylRxueETKJI+RAOmVbaQk9hZhM
         46Xg==
X-Forwarded-Encrypted: i=1; AJvYcCXi/d/Yex58NFj/wx1Fx7KY2Fjsbrn6JCGffPK4Z+ONHWwd6bsdgjggo/O8QJQ7jCQ0ABZD26VaAjGORYRI@lists.linaro.org
X-Gm-Message-State: AOJu0Ywdnoj5qPVCHEA/XXpsBYWUz5UbR+QDbWXTJNnGG03ublVdP1qF
	YQQgj226n87jFGQbSvm9MTvceJzOlza9RQEs0CVprarlOKO2Z0zBvCbXf+TdV5BeoQ8vLg==
X-Gm-Gg: ASbGnctb6kDEZjSAbgvu0SNrg/kiewESvgrHsXCtZQCUoEjllOuYWV/GrVDTdAh2z1V
	V2sOsKebfxfqQQ5yAWitk6WSua8SOGD6f9Mk54h2lOsxn173BhcFxlAvYYUuZs248RcTYWopGVG
	9p7vzXW547LcPEv+RBeNUXY3LoLgKk1RLHDaAoLxSlLt25yvk15vUU6C3HHIOAYYDmEqAz2WMmI
	8advFxW9GpRA0FoMoV3IV2B0cSpH/TrNHSkGbYYtsgz7ULdaTgVnEkkEmPXc85D/FLaWbr9mlzZ
	nZqFHPBjQYH85vZpeVlEPErLwlE9mxO1LLBdg2xVMi3xgij55X9N8/XEpxtcMOQv86hAMZ9/20i
	D3M5fcix2faxSPkxRKBIahQVIWnRZtT7Oj9ePXRlQpkD9xMBwQl7k+xF4Wc4mwkwMxn/Fi/LK/b
	4=
X-Google-Smtp-Source: AGHT+IEl5KlQ1OQsRT+8MymxRhVXcCwqYnfnZOiUI9p8uB2/KISK2gfzRGYSvuyuDTfjBUbTVhWoKQ==
X-Received: by 2002:a05:6402:354d:b0:618:1705:83fb with SMTP id 4fb4d7f45d1cf-6186e2a5f41mr1159978a12.4.1755065028255;
        Tue, 12 Aug 2025 23:03:48 -0700 (PDT)
Received: from rayden.urgonet (h-37-123-177-177.A175.priv.bahnhof.se. [37.123.177.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f2b892sm21498679a12.25.2025.08.12.23.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 23:03:46 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Wed, 13 Aug 2025 08:02:49 +0200
Message-ID: <20250813060339.2977604-1-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.53:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.53:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7CAD24413E
X-Spamd-Bar: -
Message-ID-Hash: 3UFYMG6BACGZXFBQ3H6MALNTL3CHASMN
X-Message-ID-Hash: 3UFYMG6BACGZXFBQ3H6MALNTL3CHASMN
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v11 0/9] TEE subsystem for protected dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3UFYMG6BACGZXFBQ3H6MALNTL3CHASMN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This patch set allocates the protected DMA-bufs from a DMA-heap
instantiated from the TEE subsystem.

The TEE subsystem handles the DMA-buf allocations since it is the TEE
(OP-TEE, AMD-TEE, TS-TEE, or perhaps a future QTEE) which sets up the
protection for the memory used for the DMA-bufs.

The DMA-heap uses a protected memory pool provided by the backend TEE
driver, allowing it to choose how to allocate the protected physical
memory.

The allocated DMA-bufs must be imported with a new TEE_IOC_SHM_REGISTER_FD
before they can be passed as arguments when requesting services from the
secure world.

Three use-cases (Secure Video Playback, Trusted UI, and Secure Video
Recording) have been identified so far to serve as examples of what can be
expected. The use-cases have predefined DMA-heap names,
"protected,secure-video", "protected,trusted-ui", and
"protected,secure-video-record". The backend driver registers protected
memory pools for the use-cases it supports.

Each use-case has its own protected memory pool since different use-cases
require isolation from different parts of the system. A protected memory
pool can be based on a static carveout instantiated while probing the TEE
backend driver, or dynamically allocated from CMA (dma_alloc_pages()) and
made protected as needed by the TEE.

This can be tested on a RockPi 4B+ with the following steps:
repo init -u https://github.com/jenswi-linaro/manifest.git -m rockpi4.xml \
        -b prototype/sdp-v11
repo sync -j8
cd build
make toolchains -j$(nproc)
make all -j$(nproc)
# Copy ../out/rockpi4.img to an SD card and boot the RockPi from that
# Connect a monitor to the RockPi
# login and at the prompt:
gst-launch-1.0 videotestsrc ! \
        aesenc key=1f9423681beb9a79215820f6bda73d0f \
                iv=e9aa8e834d8d70b7e0d254ff670dd718 serialize-iv=true ! \
        aesdec key=1f9423681beb9a79215820f6bda73d0f ! \
        kmssink

The aesdec module has been hacked to use an OP-TEE TA to decrypt the stream
into protected DMA-bufs which are consumed by the kmssink.

The primitive QEMU tests from previous patch sets can be tested on RockPi
in the same way using:
xtest --sdp-basic

The primitive tests are tested on QEMU with the following steps:
repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
        -b prototype/sdp-v11
repo sync -j8
cd build
make toolchains -j$(nproc)
make SPMC_AT_EL=1 all -j$(nproc)
make SPMC_AT_EL=1 run-only
# login and at the prompt:
xtest --sdp-basic

The SPMC_AT_EL=1 parameter configures the build with FF-A and an SPMC at
S-EL1 inside OP-TEE. The parameter can be changed to SPMC_AT_EL=n to test
without FF-A using the original SMC ABI instead. Please remember to do
%make arm-tf-clean
for TF-A to be rebuilt properly using the new configuration.

https://optee.readthedocs.io/en/latest/building/prerequisites.html
list dependencies required to build the above.

The primitive tests are pretty basic, mostly checking that a Trusted
Application in the secure world can access and manipulate the memory. There
are also some negative tests for out of bounds buffers, etc.

Thanks,
Jens

Changes since V10:
* Changed the new ABI OPTEE_MSG_CMD_GET_PROTMEM_CONFIG to report a list
  of u32 memory attributes instead of u16 endpoints to make room for both
  endpoint and access permissions in each entry.
* In "tee: new ioctl to a register tee_shm from a dmabuf file descriptor",
  remove the unused path for DMA-bufs allocated by other means than the on
  in the TEE SS.
* In "tee: implement protected DMA-heap", handle unloading of the
  backend driver module implementing the heap. The heap is reference
  counted and also calls tee_device_get() to guarantee that the module
  remains available while the heap is instantiated.
* In "optee: support protected memory allocation", use
  dma_coerce_mask_and_coherent() instead of open-coding the function.
* Added Sumit's R-B to
  - "optee: smc abi: dynamic protected memory allocation"
  - "optee: FF-A: dynamic protected memory allocation"
  - "optee: support protected memory allocation"
  - "tee: implement protected DMA-heap"
  - "dma-buf: dma-heap: export declared functions"

Changes since V9:
* Adding Sumit's R-B to "optee: sync secure world ABI headers"
* Update commit message as requested for "dma-buf: dma-heap: export
  declared functions".
* In "tee: implement protected DMA-heap":
  - add the hidden config option TEE_DMABUF_HEAPS to tell if the TEE
    subsystem can support DMA heaps
  - add a pfn_valid() to check that the passed physical address can be
    used by __pfn_to_page() and friends
  - remove the memremap() call, the caller is should do that instead if
    needed
* In "tee: add tee_shm_alloc_dma_mem()" guard the calls to
  dma_alloc_pages() and dma_free_pages() with TEE_DMABUF_HEAPS to avoid
  linking errors in some configurations
* In "optee: support protected memory allocation":
  - add the hidden config option OPTEE_STATIC_PROTMEM_POOL to tell if the
    driver can support a static protected memory pool
  - optee_protmem_pool_init() is slightly refactored to make the patches
    that follow easier
  - Call devm_memremap() before calling tee_protmem_static_pool_alloc()

Changes since V8:
* Using dma_alloc_pages() instead of cma_alloc() so the direct dependency on
  CMA can be removed together with the patches
  "cma: export cma_alloc() and cma_release()" and
  "dma-contiguous: export dma_contiguous_default_area". The patch
* Renaming the patch "tee: add tee_shm_alloc_cma_phys_mem()" to
  "tee: add tee_shm_alloc_dma_mem()"
* Setting DMA mask for the OP-TEE TEE device based on input from the secure
  world instead of relying on the parent device so following patches are
  removed: "tee: tee_device_alloc(): copy dma_mask from parent device" and
  "optee: pass parent device to tee_device_alloc()".
* Adding Sumit Garg's R-B to "tee: refactor params_from_user()"
* In the patch "tee: implement protected DMA-heap", map the physical memory
  passed to tee_protmem_static_pool_alloc().

Changes since V7:
* Adding "dma-buf: dma-heap: export declared functions",
  "cma: export cma_alloc() and cma_release()", and
  "dma-contiguous: export dma_contiguous_default_area" to export the symbols
  needed to keep the TEE subsystem as a load module.
* Removing CONFIG_TEE_DMABUF_HEAP and CONFIG_TEE_CMA since they aren't
  needed any longer.
* Addressing review comments in "optee: sync secure world ABI headers"
* Better align protected memory pool initialization between the smc-abi and
  ffa-abi parts of the optee driver.
* Removing the patch "optee: account for direction while converting parameters"

Changes since V6:
* Restricted memory is now known as protected memory since to use the same
  term as https://docs.vulkan.org/guide/latest/protected.html. Update all
  patches to consistently use protected memory.
* In "tee: implement protected DMA-heap" add the hidden config option
  TEE_DMABUF_HEAP to tell if the DMABUF_HEAPS functions are available
  for the TEE subsystem
* Adding "tee: refactor params_from_user()", broken out from the patch
  "tee: new ioctl to a register tee_shm from a dmabuf file descriptor"
* For "tee: new ioctl to a register tee_shm from a dmabuf file descriptor":
  - Update commit message to mention protected memory
  - Remove and open code tee_shm_get_parent_shm() in param_from_user_memref()
* In "tee: add tee_shm_alloc_cma_phys_mem" add the hidden config option
  TEE_CMA to tell if the CMA functions are available for the TEE subsystem
* For "tee: tee_device_alloc(): copy dma_mask from parent device" and
  "optee: pass parent device to tee_device_alloc", added
  Reviewed-by: Sumit Garg <sumit.garg@kernel.org>

Changes since V5:
* Removing "tee: add restricted memory allocation" and
  "tee: add TEE_IOC_RSTMEM_FD_INFO"
* Adding "tee: implement restricted DMA-heap",
  "tee: new ioctl to a register tee_shm from a dmabuf file descriptor",
  "tee: add tee_shm_alloc_cma_phys_mem()",
  "optee: pass parent device to tee_device_alloc()", and
  "tee: tee_device_alloc(): copy dma_mask from parent device"
* The two TEE driver OPs "rstmem_alloc()" and "rstmem_free()" are replaced
  with a struct tee_rstmem_pool abstraction.
* Replaced the the TEE_IOC_RSTMEM_ALLOC user space API with the DMA-heap API

Changes since V4:
* Adding the patch "tee: add TEE_IOC_RSTMEM_FD_INFO" needed by the
  GStreamer demo
* Removing the dummy CPU access and mmap functions from the dma_buf_ops
* Fixing a compile error in "optee: FF-A: dynamic restricted memory allocation"
  reported by kernel test robot <lkp@intel.com>

Changes since V3:
* Make the use_case and flags field in struct tee_shm u32's instead of
  u16's
* Add more description for TEE_IOC_RSTMEM_ALLOC in the header file
* Import namespace DMA_BUF in module tee, reported by lkp@intel.com
* Added a note in the commit message for "optee: account for direction
  while converting parameters" why it's needed
* Factor out dynamic restricted memory allocation from
  "optee: support restricted memory allocation" into two new commits
  "optee: FF-A: dynamic restricted memory allocation" and
  "optee: smc abi: dynamic restricted memory allocation"
* Guard CMA usage with #ifdef CONFIG_CMA, effectively disabling dynamic
  restricted memory allocate if CMA isn't configured

Changes since the V2 RFC:
* Based on v6.12
* Replaced the flags for SVP and Trusted UID memory with a u32 field with
  unique id for each use case
* Added dynamic allocation of restricted memory pools
* Added OP-TEE ABI both with and without FF-A for dynamic restricted memory
* Added support for FF-A with FFA_LEND

Changes since the V1 RFC:
* Based on v6.11
* Complete rewrite, replacing the restricted heap with TEE_IOC_RSTMEM_ALLOC

Changes since Olivier's post [2]:
* Based on Yong Wu's post [1] where much of dma-buf handling is done in
  the generic restricted heap
* Simplifications and cleanup
* New commit message for "dma-buf: heaps: add Linaro restricted dmabuf heap
  support"
* Replaced the word "secure" with "restricted" where applicable

Etienne Carriere (1):
  tee: new ioctl to a register tee_shm from a dmabuf file descriptor

Jens Wiklander (8):
  optee: sync secure world ABI headers
  dma-buf: dma-heap: export declared functions
  tee: implement protected DMA-heap
  tee: refactor params_from_user()
  tee: add tee_shm_alloc_dma_mem()
  optee: support protected memory allocation
  optee: FF-A: dynamic protected memory allocation
  optee: smc abi: dynamic protected memory allocation

 drivers/dma-buf/dma-heap.c        |   3 +
 drivers/tee/Kconfig               |   5 +
 drivers/tee/Makefile              |   1 +
 drivers/tee/optee/Kconfig         |   5 +
 drivers/tee/optee/Makefile        |   1 +
 drivers/tee/optee/core.c          |   7 +
 drivers/tee/optee/ffa_abi.c       | 146 ++++++++-
 drivers/tee/optee/optee_ffa.h     |  27 +-
 drivers/tee/optee/optee_msg.h     |  84 ++++-
 drivers/tee/optee/optee_private.h |  15 +-
 drivers/tee/optee/optee_smc.h     |  37 ++-
 drivers/tee/optee/protmem.c       | 335 ++++++++++++++++++++
 drivers/tee/optee/smc_abi.c       | 141 ++++++++-
 drivers/tee/tee_core.c            | 157 +++++++---
 drivers/tee/tee_heap.c            | 500 ++++++++++++++++++++++++++++++
 drivers/tee/tee_private.h         |  14 +
 drivers/tee/tee_shm.c             | 157 +++++++++-
 include/linux/tee_core.h          |  59 ++++
 include/linux/tee_drv.h           |  10 +
 include/uapi/linux/tee.h          |  31 ++
 20 files changed, 1668 insertions(+), 67 deletions(-)
 create mode 100644 drivers/tee/optee/protmem.c
 create mode 100644 drivers/tee/tee_heap.c


base-commit: 038d61fd642278bab63ee8ef722c50d10ab01e8f
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
