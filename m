Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BA09DBA27
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Nov 2024 16:09:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E98244D45
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Nov 2024 15:09:47 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id C8BBE44A58
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Nov 2024 15:09:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=pJyb8KcD;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.218.52 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa55da18f89so132586666b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Nov 2024 07:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732806579; x=1733411379; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lx8FUbil1lq4BtoAebbj8qif3q0b2Rsp7fvYReP+0O4=;
        b=pJyb8KcDFKmz+m6wLJBlmBPr4N/owbjTrXtP3meESgeJNR47G6s0yB0pHoU2E89r+a
         QyEUY5z+hsPUrVXSqjd+GNCucjEpnIFx6so+wV5NuORSfRTxJQfYH7gE5Nxy8tSh9gfk
         PMAXKoXNVp07rfmWyQr1MFcsOAj3IUL8ry3BBmCfRIcd7GRq7URxr/sHgvcGkmmnM/3E
         lDCeYr2be3/FDnc6PZHTKNdo4ClwqyEfYf3P8sOcbF0OXD9SU/PN2qlxOFjBFeYuCvTa
         6H0B9j3IPXrYZGfaBHGKL6p0M5QkzBjhqpmQnEKjSAkd19PDlz0lJTILO3n3GI+w57qT
         sEwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732806579; x=1733411379;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lx8FUbil1lq4BtoAebbj8qif3q0b2Rsp7fvYReP+0O4=;
        b=M4Tjp8EV+LcKF11xF2b686ofkl4xAKjhT2HD3Twm6tiPn2ZsSMRPmajighkgt0vYq5
         ZGvYUHwfBH745v+uWcZm4bCPZa5DzKP3GrSKvXr0AGMMoE6NnwAiB7Inl0pkZPTYhhDw
         dpv2K2wVkrmK0UF3Vah0NeKtFbblNWMATE2DMjI/JL7ySwoBNmYvCPYVkOJPTcSVs7oH
         ZfwHcOeVrsaLpf75JOKJw7mYjrR3BriQx89Sh1uDpWKUT7EvvjzBX4Y4YPYzL0aDhU/v
         euKev9hfnCgJkxj4VlUI7Tf+GyIIYf4aWgXlqxHuezPV4GkONQD1TZEWfvX2n7t5E/N5
         7DVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnpSiAl1SqmtvryLr2FJSNCvG5OBDWmWRV8sn5e9yzkt6XuVHaVXBw+GwrnFsobll0NJWPN6uWN3QGzdmE@lists.linaro.org
X-Gm-Message-State: AOJu0YxD7mKLnrypH4REd4AEiwgxFdltyqARkyy3GtOb9eaTjH8Y4OHL
	5VKlJOioj2q+j029QSnnSHoKTKBN3PnV7CL+l/VBQjyTFTkixPrS9sOEwnZ9Il3LAQ==
X-Gm-Gg: ASbGncvooHm3GoTM/lqpkbmc8G9BLnca0LQUvAhrqzbLoD1ZgONRLjsFzjQ0MRm0iUY
	+A28HvXwE98LVHvXCPX8e6FduQM6bZdOJMMbsjLPCIsk31r1wgEKm+KWIITjBILWAg+Fo7oyY8s
	reek5eD0yb5HcZViMLSiJzZyezJZDdEN3cXyDQPP5A0eBeXfTVrTSIdPM8k70HG9w0tHRsJ3Ss9
	NMhOWBbd3P64lJmpZnZq3srczqvrDvunrIgEeqiEV0jKn7mpJ2avPNP6S81BTQX3+Z5JWt5duHs
	uso6FMmfMhUPWKETdvfEoSUg
X-Google-Smtp-Source: AGHT+IErM6pO63m4fDk26WsSCnoRuNdeklZdOejyiYshrc8elr0SpIMuHzrJ+hXYJB8Y4wtZl7A20A==
X-Received: by 2002:a17:906:3d22:b0:aa5:50b6:a600 with SMTP id a640c23a62f3a-aa581028af3mr520735266b.44.1732806578748;
        Thu, 28 Nov 2024 07:09:38 -0800 (PST)
Received: from rayden.urgonet (h-79-136-84-141.A175.priv.bahnhof.se. [79.136.84.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm75711366b.163.2024.11.28.07.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 07:09:38 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Thu, 28 Nov 2024 16:09:00 +0100
Message-ID: <20241128150927.1377981-1-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: C8BBE44A58
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.218.52:from];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VXZ7IDFDXJJLVXRNK3MGAPWBNX6FNI6I
X-Message-ID-Hash: VXZ7IDFDXJJLVXRNK3MGAPWBNX6FNI6I
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/4] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VXZ7IDFDXJJLVXRNK3MGAPWBNX6FNI6I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This patch set allocates the restricted DMA-bufs via the TEE subsystem.
This a big update compared to the previous patch set [1].

The TEE subsystem handles the DMA-buf allocations since it is the TEE
(OP-TEE, AMD-TEE, TS-TEE, or perhaps a future QTEE) which sets up the
restrictions for the memory used for the DMA-bufs.

I've added a new IOCTL, TEE_IOC_RSTMEM_ALLOC, to allocate the restricted
DMA-bufs. This IOCTL reaches the backend TEE driver, allowing it to choose
how to allocate the restricted physical memory.

TEE_IOC_RSTMEM_ALLOC takes in addition to a size and flags parameters also
a use-case parameter. This is used by the backend TEE driver to decide on
allocation policy and which devices should be able to access the memory.

Three use-cases (Secure Video Playback, Trusted UI, and Secure Video
Recording) has been identified so far to serve as examples of what can be
expected. More use-cases can be added in userspace ABI, but it's up to the
backend TEE drivers to provide the implementation.

Each use-case has it's own restricted memory pool since different use-cases
requires isolation from different parts of the system. A restricted memory
pool can be based on a static carveout instantiated while probing the TEE
backend driver, or dynamically allocated from CMA and made restricted as
needed by the TEE.

This can be tested on QEMU with the following steps:
repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
        -b prototype/sdp-v3
repo sync -j8
cd build
make toolchains -j$(nproc)
make SPMC_AT_EL=1 all -j$(nproc)
make SPMC_AT_EL=1 run-only
# login and at the prompt:
xtest --sdp-basic

The SPMC_AT_EL=1 parameter configures the build with FF-A and an SPMC at
S-EL1 inside OP-TEE. The parameter can be changed into SPMC_AT_EL=n to test
without FF-A using the original SMC ABI instead. Please remember to do
%rm -rf ../trusted-firmware-a/build/qemu
for TF-A to be rebuilt properly using the new configuration.

https://optee.readthedocs.io/en/latest/building/prerequisites.html
list dependencies needed to build the above.

The tests are pretty basic, mostly checking that a Trusted Application in
the secure world can access and manipulate the memory. There are also some
negative tests for out of bounds buffers etc.

Thanks,
Jens

[1] https://lore.kernel.org/lkml/20241015101716.740829-1-jens.wiklander@linaro.org/

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

Jens Wiklander (4):
  tee: add restricted memory allocation
  optee: account for direction while converting parameters
  optee: sync secure world ABI headers
  optee: support restricted memory allocation

 drivers/tee/Makefile              |   1 +
 drivers/tee/optee/Makefile        |   1 +
 drivers/tee/optee/call.c          |  10 +-
 drivers/tee/optee/core.c          |   1 +
 drivers/tee/optee/ffa_abi.c       | 178 +++++++++++++-
 drivers/tee/optee/optee_ffa.h     |  27 ++-
 drivers/tee/optee/optee_msg.h     |  65 ++++-
 drivers/tee/optee/optee_private.h |  75 ++++--
 drivers/tee/optee/optee_smc.h     |  71 +++++-
 drivers/tee/optee/rpc.c           |  31 ++-
 drivers/tee/optee/rstmem.c        | 380 ++++++++++++++++++++++++++++++
 drivers/tee/optee/smc_abi.c       | 214 +++++++++++++++--
 drivers/tee/tee_core.c            |  37 ++-
 drivers/tee/tee_private.h         |   2 +
 drivers/tee/tee_rstmem.c          | 201 ++++++++++++++++
 drivers/tee/tee_shm.c             |   2 +
 drivers/tee/tee_shm_pool.c        |  69 +++++-
 include/linux/tee_core.h          |  15 ++
 include/linux/tee_drv.h           |   4 +-
 include/uapi/linux/tee.h          |  37 ++-
 20 files changed, 1344 insertions(+), 77 deletions(-)
 create mode 100644 drivers/tee/optee/rstmem.c
 create mode 100644 drivers/tee/tee_rstmem.c

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
