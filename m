Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CLCONYQ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9A8411D0F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:39:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD77344C6B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:39:48 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 6ACFD3F7EA
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Feb 2026 15:38:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=bsAILgKJ;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.48) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso39710595e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Feb 2026 07:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1770651490; x=1771256290; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BiucukKgd6A5IEwlte0sQaw8GOuaez4s0BdPuzMpI0U=;
        b=bsAILgKJIAP62EB5j9jfeo3RPxAU34s4bQjl9fDYYvvO0PKwHUz+rVdntHCyPTjIDc
         jDk+S+OydUriDbB+Gf0rgwMxGeB6p40y4GBt9ZlKlndshYiPLDhHWWXKwzP4rJqUg1Rh
         gI0WTAmqzQy7mRl8AaCpXTdupVZk4sXSycxRAuRveBU1nSXhE4Ipx/OzXU/iHUqjG3V+
         CnjBzmrBPu7oJucbFKrhwXf7xCqh8xuAlfYw5yIjB7Nf0nCFg0tLoBz+lN3MnbtgNOvM
         lYor+if1prZieK97Yyi+kOyhJCsO6qZLxz+AJv/ytMCunSpvwGGkIxBG44iJ0aDZ2ggz
         jBWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770651490; x=1771256290;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BiucukKgd6A5IEwlte0sQaw8GOuaez4s0BdPuzMpI0U=;
        b=FACWCFXMrAunUnK6jSobsBQR8LhEjt5AfKNNwsL/aVhwlhLMLpaPkrSufQJLbewJgt
         IiXxne09Ij4sxrV7FHYywOXKh3MnEChRO2xNESzYKkjvwskAJh/2ENM90q5khszB0pS6
         9WOuDFMtG5HSLk2cV1jOeEsXSHE7sBe4u78wg5dOBnBge2zXN08H4tyO/cpnuSMCHhPn
         dlC39AMZJHlU1bkgyyGePdjtI4OtVBRk7PdqNB6w442Q78NsXcaJbDmzQoM5qUZD7Vi0
         lsNMKx31txq9dpV27g7diu3ryfudTi/JWHuOKLLKFVelJqtoTgSkTTe0888RBwMaTQaM
         t+nw==
X-Forwarded-Encrypted: i=1; AJvYcCW0+zgANpJuimNHxVDI3KiryWncSDFzgA5zhND7rGkhnT//x/Pk50G8sUxuA8zXcvhp2IJazLTQUwNRrntv@lists.linaro.org
X-Gm-Message-State: AOJu0Yz0ukyJUn3HpihfmdpNhDVJqAKuQn9xW6nQxylMaH5VyxmvbNhW
	B2LR7kYM/KoG0foC7KSkBH2DE2V/X4lss87L8olfKE2lpT/uJ7YjALFOhLAacG7xk+0=
X-Gm-Gg: AZuq6aKUYCfrqxMkt6YQox9abvPrQqGuw3Mql9fUGkGFFyysLWrV44xRB6pCMSlvXnn
	O4AE/ISGdkwGlsp8XM37nBUJd6Du4NTSmU9OoCeYGNT4jRggTxXr0imW9huh+hzmqR5THBSx3uK
	3URrBPQXL1p7MynqbD27Md8GndWS2rSdJId5JTjSs/daLWcKpTHSaiWtFZReWBX9yswvujjUlrK
	uGeemmc6asDurIs9pgHTHpePu7pl0LD7+vBWU1JdfLeIuSANoF8v1budLXg96VtU2eEAo1AUqU+
	iTgW2WtyufqGjuJzL1rs1JWQL/O5XcMprqgS7Gl35JMC1hoXkdWfggSCL3DCo4Qn5AbyBc7V/OV
	2RKGs49rlTAd190p0JE6wwwrypvdvrElFTpdWMUccrHJAIX7xHa5KBm/18H4SEfRW9s+HxuyVuC
	Ziu/wR/dy7oCTM
X-Received: by 2002:a05:600c:621a:b0:480:6852:8d94 with SMTP id 5b1f17b1804b1-4832097e2b0mr178535855e9.27.1770651490292;
        Mon, 09 Feb 2026 07:38:10 -0800 (PST)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48317d8341csm329338275e9.13.2026.02.09.07.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 07:38:09 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Mon,  9 Feb 2026 16:38:04 +0100
Message-ID: <20260209153809.250835-1-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: B2W6BD3CFKHAE37RL46OETQFYZYERDSP
X-Message-ID-Hash: B2W6BD3CFKHAE37RL46OETQFYZYERDSP
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:09 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/5] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B2W6BD3CFKHAE37RL46OETQFYZYERDSP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[1585];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[resnulli.us];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-0.581];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: BA9A8411D0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Confidential computing (CoCo) VMs/guests, such as AMD SEV and Intel TDX,
run with encrypted/protected memory which creates a challenge
for devices that do not support DMA to it (no TDISP support).

For kernel-only DMA operations, swiotlb bounce buffering provides a
transparent solution by copying data through decrypted memory.
However, the only way to get this memory into userspace is via the DMA
API's dma_alloc_pages()/dma_mmap_pages() type interfaces which limits
the use of the memory to a single DMA device, and is incompatible with
pin_user_pages().

These limitations are particularly problematic for the RDMA subsystem
which makes heavy use of pin_user_pages() and expects flexible memory
usage between many different DMA devices.

This patch series enables userspace to explicitly request decrypted
(shared) memory allocations from the dma-buf system heap.
Userspace can mmap this memory and pass the dma-buf fd to other
existing importers such as RDMA or DRM devices to access the
memory. The DMA API is improved to allow the dma heap exporter to DMA
map the shared memory to each importing device.

Jiri Pirko (5):
  dma-mapping: avoid random addr value print out on error path
  dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
  dma-buf: heaps: use designated initializer for exp_info
  dma-buf: heaps: allow heap to specify valid heap flags
  dma-buf: heaps: system: add an option to allocate explicitly decrypted
    memory

 drivers/dma-buf/dma-heap.c          |  5 +-
 drivers/dma-buf/heaps/cma_heap.c    |  7 ++-
 drivers/dma-buf/heaps/system_heap.c | 96 ++++++++++++++++++++++++++---
 include/linux/dma-heap.h            |  3 +
 include/linux/dma-mapping.h         |  7 +++
 include/trace/events/dma.h          |  3 +-
 include/uapi/linux/dma-heap.h       | 12 +++-
 kernel/dma/direct.h                 | 14 ++++-
 8 files changed, 128 insertions(+), 19 deletions(-)

-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
