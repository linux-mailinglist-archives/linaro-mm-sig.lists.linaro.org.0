Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1239657F0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 09:04:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99A5A41126
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 07:04:38 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id AC78B3F49D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 07:04:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="XeECK5/l";
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.208.51 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5bec4fc82b0so4353211a12.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 00:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725001476; x=1725606276; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NAqkPKV8FIclg2RIfEME8aNTCMBfxloXKZQVTM0jEG4=;
        b=XeECK5/lhDZA3EHdRy0FynlWesSxMZvpOaOeICddPRdKbDXjtTL8I9ijoh3XW5QXcw
         6xqknWVaAYYGSUgFKnQjLFTRJqjvvsoKJl5ZCFxo9I0RqO6W9iq0hZmq0RQeKXO1kXqk
         hZ+PU8idLyKCFwDQpwNO9A0yqenvLOf36UZFFYtxvAIYS5KoxhZDSjfn3AtKsMhdZUXW
         doEoe1OkSrS+0nO8x2h/HiJRkeAAqSqkvk1NKZ5zpHS97UtaNsXoOr/wQfx2m4A+ReTV
         Vmgw+GXF+yQKz3kOawXt8NfAV/jf1Zu03frsbtA9w683DogxazBGW1z1SEoYV6p68rGB
         9LnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725001476; x=1725606276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NAqkPKV8FIclg2RIfEME8aNTCMBfxloXKZQVTM0jEG4=;
        b=mV/GTam+wddngyO7nTp2XK14XUohMoPqdYugkpPXblr6YSxxi2sSwRphILu851sO6K
         gnwGILGxbQd72u7m1FzLqN07TbYrlA8BR2zelTDWt9q575LSByn/fVIDNGwbwuRkWRPj
         lJMYbc2xRKJuwot2SMYcBFa+kPLqcvGj3GAQq4zvVbTm8YgqhbG2OBw7oNiOrMSE7jDu
         UxPa8uQskUzvNas0iZ9i2gdYT2EMBDaUmLcOzzB1dp0oTn1VglAs1Y46bl1PUHxUujxG
         WCsfIjJDubdwpFJpbz/zRlcyjthA57UVTq8UBCfsOMeBLd4T45Ot7do6ORm9FlMQ85hz
         0lYg==
X-Forwarded-Encrypted: i=1; AJvYcCXoXsodiLtgdKl124vA6ABWglei+45PA3lARsSQFsgt1YKFNlXudoKl3+17C5uUUduGXLkX1kH696SVk1Gy@lists.linaro.org
X-Gm-Message-State: AOJu0YyL33uNddVwUZOCs6pFxC2kGpLjZTwVz7aqpZclLaJBJxOi5kAA
	goRRVaWlSrwficF2E28sOsywdo9HCKcF8jb+BetHPByiOP372MGoCBikrJcuOaz6Zg==
X-Google-Smtp-Source: AGHT+IFDgPRujvPs0pY58RBt0z0M4T/+m/fwfgJO35cZdR0pWvXLPvq+fQ5KKo/0SLFh8TiIvn9dYw==
X-Received: by 2002:a17:907:6d25:b0:a86:94cd:97f0 with SMTP id a640c23a62f3a-a89a26bfcb7mr138897066b.19.1725001475410;
        Fri, 30 Aug 2024 00:04:35 -0700 (PDT)
Received: from rayden.urgonet (h-217-31-164-171.A175.priv.bahnhof.se. [217.31.164.171])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89892232c7sm178026866b.222.2024.08.30.00.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 00:04:34 -0700 (PDT)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	op-tee@lists.trustedfirmware.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Date: Fri, 30 Aug 2024 09:03:47 +0200
Message-Id: <20240830070351.2855919-1-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Bar: -
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AC78B3F49D
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.51:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: HKBS6PQVEPHBDKWVLRKCS3VF3Q7NINZ2
X-Message-ID-Hash: HKBS6PQVEPHBDKWVLRKCS3VF3Q7NINZ2
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jens Wiklander <jens.wiklander@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HKBS6PQVEPHBDKWVLRKCS3VF3Q7NINZ2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This patch set is based on top of Yong Wu's restricted heap patch set [1].
It's also a continuation on Olivier's Add dma-buf secure-heap patch set [2].

The Linaro restricted heap uses genalloc in the kernel to manage the heap
carvout. This is a difference from the Mediatek restricted heap which
relies on the secure world to manage the carveout.

I've tried to adress the comments on [2], but [1] introduces changes so I'm
afraid I've had to skip some comments.

This can be tested on QEMU with the following steps:
repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
        -b prototype/sdp-v1
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
the secure world can access and manipulate the memory.

Cheers,
Jens

[1] https://lore.kernel.org/dri-devel/20240515112308.10171-1-yong.wu@mediatek.com/
[2] https://lore.kernel.org/lkml/20220805135330.970-1-olivier.masse@nxp.com/

Changes since Olivier's post [2]:
* Based on Yong Wu's post [1] where much of dma-buf handling is done in
  the generic restricted heap
* Simplifications and cleanup
* New commit message for "dma-buf: heaps: add Linaro restricted dmabuf heap
  support"
* Replaced the word "secure" with "restricted" where applicable

Etienne Carriere (1):
  tee: new ioctl to a register tee_shm from a dmabuf file descriptor

Jens Wiklander (2):
  dma-buf: heaps: restricted_heap: add no_map attribute
  dma-buf: heaps: add Linaro restricted dmabuf heap support

Olivier Masse (1):
  dt-bindings: reserved-memory: add linaro,restricted-heap

 .../linaro,restricted-heap.yaml               |  56 ++++++
 drivers/dma-buf/heaps/Kconfig                 |  10 ++
 drivers/dma-buf/heaps/Makefile                |   1 +
 drivers/dma-buf/heaps/restricted_heap.c       |  17 +-
 drivers/dma-buf/heaps/restricted_heap.h       |   2 +
 .../dma-buf/heaps/restricted_heap_linaro.c    | 165 ++++++++++++++++++
 drivers/tee/tee_core.c                        |  38 ++++
 drivers/tee/tee_shm.c                         | 104 ++++++++++-
 include/linux/tee_drv.h                       |  11 ++
 include/uapi/linux/tee.h                      |  29 +++
 10 files changed, 426 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/linaro,restricted-heap.yaml
 create mode 100644 drivers/dma-buf/heaps/restricted_heap_linaro.c

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
