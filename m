Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFE099E398
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 12:18:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A5053F3DF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Oct 2024 10:18:05 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id 1973A3F44F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Oct 2024 10:17:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=ws+bFwuO;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.51 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5c95a962c2bso4005899a12.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Oct 2024 03:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728987453; x=1729592253; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/vsiyFH7AdAG35W+mWfukPu7OxX/u28De0FB1ag7l3I=;
        b=ws+bFwuOHA8F2jLV+D6N8ar7fN4t+Rrr5csCaOCuRmTwuI1wNTg3L34Fvost1dsH0U
         Hi7TgT7CgNY/fYrs5LaE3Yrr7PMvHwNwAfoFFs0Dnt7jZIsW0RCuo2u/xITst08kZOrL
         LnLatCdhk4p0Ky2Vnv43uelexOctjlzy7zkWJrTLHbiRO3ARx0Er+Ap/nlXZ8Erhgmlr
         PInUM3gWnAuFnv9XCC9l+J9pqksoROJXEauL55XHpjctcImP5Sjmro75YUOla0xYvfbh
         T/6JdogD1pKc83CfUhr249/Sh5z2tmdSn34qSUkZIhtSbzesadkzkfcqDjmO5i8e4sTN
         Lh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728987453; x=1729592253;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/vsiyFH7AdAG35W+mWfukPu7OxX/u28De0FB1ag7l3I=;
        b=WWSV149MDQ+Ki1cHlOXax8emkr3xKM6ce7bgLuuZbBsFkJHr/gtjtbWdHjarHQUiq+
         QOg32Docgvorr1RYCz7w6Uf+nUTW7HDptH1UuwiwoLgHc+2oIfoVkZR7BCYb1eZFAw8d
         AzhuxhBxUG/PtpnaSmhmT3I60jcwVcO1DRLSwspdVmY06HeXV7eDRbKFIxxI80wf5jOh
         YBbgPYzEgLbWo9VZ6bq/pLh8F3t0ULotyPY9ccI6U4B5hAhRdZOgBmw3dY4XUbWcdj+d
         2nSSnjMn3z7FAmHshNs1eEzwKIQRkD2NIMW4lPugAXpI99g/Iav84n2/ewuug3e/lsPg
         upKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzcnSJjaa9h7ixiB9mKCMa+t3vBAo+LBmoI4q+wQrke3bAOtG36/K0K+gImIiXrWm38fddcwTuc3iu00b0@lists.linaro.org
X-Gm-Message-State: AOJu0Yxv1R3WPud7FBQceOIEgYa5vdgZCO4DD+9psNwNsDtEW+Uz6PQ8
	5Dzwmrq/bQ0FXbIMw8U6syIGX1bpS8y8a3IaYkWdtHraBfta5+D+HLmeTb2cRPkGuw==
X-Google-Smtp-Source: AGHT+IFoSBcZrkiChgB4pqL7tE0eZfJ4KXAE8/CROlLVwwwfJ7xMioU8E2x8rJrk0YsmPXDwWauSdg==
X-Received: by 2002:a05:6402:43ce:b0:5c4:1320:e5a3 with SMTP id 4fb4d7f45d1cf-5c948cd8df1mr11041123a12.16.1728987452987;
        Tue, 15 Oct 2024 03:17:32 -0700 (PDT)
Received: from rayden.urgonet (h-217-31-164-171.A175.priv.bahnhof.se. [217.31.164.171])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c98d778b80sm519581a12.78.2024.10.15.03.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 03:17:32 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org
Date: Tue, 15 Oct 2024 12:15:32 +0200
Message-ID: <20241015101716.740829-1-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1973A3F44F
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	URIBL_BLOCKED(0.00)[optee.readthedocs.io:url,mail-ed1-f51.google.com:helo,mail-ed1-f51.google.com:rdns,linaro.org:mid,linaro.org:dkim];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.51:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: TOV53FIQZEZBCE355ZFOAAKHD763LB3X
X-Message-ID-Hash: TOV53FIQZEZBCE355ZFOAAKHD763LB3X
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH v2 0/2] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TOV53FIQZEZBCE355ZFOAAKHD763LB3X/>
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
This a complete rewrite compared to the previous patch set [1], and other
earlier proposals [2] and [3] with a separate restricted heap.

The TEE subsystem handles the DMA-buf allocations since it is the TEE
(OP-TEE, AMD-TEE, TS-TEE, or a future QTEE) which sets up the restrictions
for the memory used for the DMA-bufs.

I've added a new IOCTL, TEE_IOC_RSTMEM_ALLOC, to allocate the restricted
DMA-bufs. This new IOCTL reaches the backend TEE driver, allowing it to
choose how to allocate the restricted physical memory.

TEE_IOC_RSTMEM_ALLOC is quite similar to TEE_IOC_SHM_ALLOC so it's tempting
to extend TEE_IOC_SHM_ALLOC with two new flags
TEE_IOC_SHM_FLAG_SECURE_VIDEO and TEE_IOC_SHM_FLAG_SECURE_TRUSTED_UI for
the same feature. However, it might be a bit confusing since
TEE_IOC_SHM_ALLOC only returns an anonymous file descriptor, but
TEE_IOC_SHM_FLAG_SECURE_VIDEO and TEE_IOC_SHM_FLAG_SECURE_TRUSTED_UI would
return a DMA-buf file descriptor instead. What do others think?

This can be tested on QEMU with the following steps:
repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
        -b prototype/sdp-v2
repo sync -j8
cd build
make toolchains -j4
make all -j$(nproc)
make run-only
# login and at the prompt:
xtest --sdp-basic

https://optee.readthedocs.io/en/latest/building/prerequisites.html
list dependencies needed to build the above.

The tests are pretty basic, mostly checking that a Trusted Application in
the secure world can access and manipulate the memory. There are also some
negative tests for out of bounds buffers etc.

Thanks,
Jens

[1] https://lore.kernel.org/lkml/20240830070351.2855919-1-jens.wiklander@linaro.org/
[2] https://lore.kernel.org/dri-devel/20240515112308.10171-1-yong.wu@mediatek.com/
[3] https://lore.kernel.org/lkml/20220805135330.970-1-olivier.masse@nxp.com/

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

Jens Wiklander (2):
  tee: add restricted memory allocation
  optee: support restricted memory allocation

 drivers/tee/Makefile              |   1 +
 drivers/tee/optee/core.c          |  21 ++++
 drivers/tee/optee/optee_private.h |   6 +
 drivers/tee/optee/optee_smc.h     |  35 ++++++
 drivers/tee/optee/smc_abi.c       |  45 ++++++-
 drivers/tee/tee_core.c            |  33 ++++-
 drivers/tee/tee_private.h         |   2 +
 drivers/tee/tee_rstmem.c          | 200 ++++++++++++++++++++++++++++++
 drivers/tee/tee_shm.c             |   2 +
 drivers/tee/tee_shm_pool.c        |  69 ++++++++++-
 include/linux/tee_core.h          |   6 +
 include/linux/tee_drv.h           |   9 ++
 include/uapi/linux/tee.h          |  33 ++++-
 13 files changed, 455 insertions(+), 7 deletions(-)
 create mode 100644 drivers/tee/tee_rstmem.c

-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
