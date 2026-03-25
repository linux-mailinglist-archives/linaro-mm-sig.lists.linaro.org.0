Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEXDDZJi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:29:54 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BF943147F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:29:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D488A3F9B3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:29:52 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id B2DA33F7B3
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Mar 2026 19:23:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b="yr1/YIC6";
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.51) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-486b9675d36so2091925e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Mar 2026 12:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774466634; x=1775071434; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q9oYYl5Ubh4Ping1zst+E8em20zAUpauFfgriVu6hpE=;
        b=yr1/YIC6QbuTk02pndhZ5zJLZs6fsq+AH2OeYANjQfglpArrWtMYAyhnsvM4wA2rE4
         ibdY0EQSZID473iPqszmWM3Jegfc6jAcg3Br37c1s1RQLEFPxVRA/Jlx6iQo25xDdAhI
         AESaiHX2R48mSvcuYvOvmHG/ZtaIx0YPSLmH2pxR4Qdwvwk8PLZUYOBBywD6lcimW6wn
         Vym3DN/fSfsI19ms6iNReeG47hWrRNS4X8BnZeRuQErRQvXxBVdKDHuiJaZYIwUPFJx8
         ArmLJ638W8kvUdE7tF13SMx32piPRAIgZ13wZCDjTgQudhXcO4oI2+EBTRx3qCNQHSPE
         0Y+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774466634; x=1775071434;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q9oYYl5Ubh4Ping1zst+E8em20zAUpauFfgriVu6hpE=;
        b=g8RHwJoxuwO0ZIS+EwaFH87WS/Gt1CXctGLHf7jGcR3Z+XI6AEmryFg2Hf6dnXM/AF
         uKduuXYPhvBn2ANZ9kNkI4naOx8Qpq/wsGZaExYAcrfkfPX9xD+msChM4ITmQ2eqNlbk
         v1otKcW/D8+efE/gZckaYbcNB9wSmhC2rPScSyLjPZsR9zub8yTm6sGrU7cpfn+qPFjO
         3y57kuwxHiLG9BmQ/qKir4Q+zvdw55HuNCXbEJbSbNTfztp8TRMKDOG+5H+aXNPNPWuX
         UDB190sSh0MZXZJ44xJt7INXVUxWcjOztm7IGBI4RNrtUzHA0PikPDQTFAbpFqFdjKP8
         y6nw==
X-Forwarded-Encrypted: i=1; AJvYcCV9WFHytn9ryQYWYFMPf7XcRJuqZSkHswrPfsWxs5XtzUzIuvF6D0UMdDXihwa7sZ+kZtehNWWwVRQNcO60@lists.linaro.org
X-Gm-Message-State: AOJu0YyP7Pj9Xsi6ja1wZRYJuAPfkaUwQLScGFtX4ySdKQyixc1WFH8/
	6N3Yjs5ldw0dtEly9MHbOpEIV/h6Oqr53z8STGP0wgFXCGuBP/IYbW3AsgCi86K007o=
X-Gm-Gg: ATEYQzylgQe6JnuJ0W3ZZGM6ftAnxEABuAvxvENPN1HbuFVzWnvs1LrwmU6XR4nHR5R
	O4uVelI6w56RecYI6QYmAhc7cvQX9wqo4fWLnI4P71F2R3Qti/uIfgqDDDhd9pDTPBNbhRxco1L
	MIj082M40ofjKcx0/9V25+6OQfuOfWIsH+/GsAvgcQR//YBsEoWgaKnQTgctv5ohqwhTPpSYjd9
	2XcLYzPabH9B8JjQOXh0S2rFIq5m6kGoUgsz0ypL92uo7AVo6tp0G7Bqa7sgftcm1RXEqNJYWjf
	Mbz+8K1jr8SbGHIvfb/qkrwuR7XZKzj3gPzj7mgM0cW+dzoCOWhx0DV+sATmODbtJ1ltiXcGjXy
	noR16dW1gXUQrD2UFRCVmsO3jHtaJwloFRZ3vuTKqG47cMmevpMr4O2jkU/0gn2VFuywOIuT8Il
	VQ7U01KreufGLHlhJvOHB76/LjA5qW
X-Received: by 2002:a05:600c:1f12:b0:485:41c4:e2e5 with SMTP id 5b1f17b1804b1-4871605686dmr70437725e9.27.1774466633448;
        Wed, 25 Mar 2026 12:23:53 -0700 (PDT)
Received: from localhost ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919e7111sm1855634f8f.37.2026.03.25.12.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 12:23:53 -0700 (PDT)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Wed, 25 Mar 2026 20:23:50 +0100
Message-ID: <20260325192352.437608-1-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: C6JBXKXJFGLNX4EUITZB72SCJ3JWRESF
X-Message-ID-Hash: C6JBXKXJFGLNX4EUITZB72SCJ3JWRESF
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:42 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 0/2] dma-buf: heaps: system: add an option to allocate explicitly shared/decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C6JBXKXJFGLNX4EUITZB72SCJ3JWRESF/>
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
	DATE_IN_PAST(1.00)[622];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.581];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:mid,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email,linaro.org:email]
X-Rspamd-Queue-Id: C2BF943147F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jiri Pirko <jiri@nvidia.com>

Confidential computing (CoCo) VMs/guests, such as AMD SEV and Intel TDX,
run with private/encrypted memory which creates a challenge
for devices that do not support DMA to it (no TDISP support).

For kernel-only DMA operations, swiotlb bounce buffering provides a
transparent solution by copying data through shared memory.
However, the only way to get this memory into userspace is via the DMA
API's dma_alloc_pages()/dma_mmap_pages() type interfaces which limits
the use of the memory to a single DMA device, and is incompatible with
pin_user_pages().

These limitations are particularly problematic for the RDMA subsystem
which makes heavy use of pin_user_pages() and expects flexible memory
usage between many different DMA devices.

This patch series enables userspace to explicitly request shared
(decrypted) memory allocations from new dma-buf system_cc_shared heap.
Userspace can mmap this memory and pass the dma-buf fd to other
existing importers such as RDMA or DRM devices to access the
memory. The DMA API is improved to allow the dma heap exporter to DMA
map the shared memory to each importing device.

Based on dma-mapping-for-next e7442a68cd1ee797b585f045d348781e9c0dde0d

Jiri Pirko (2):
  dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
  dma-buf: heaps: system: add system_cc_shared heap for explicitly
    shared memory

 drivers/dma-buf/heaps/system_heap.c | 103 ++++++++++++++++++++++++++--
 include/linux/dma-mapping.h         |  10 +++
 include/trace/events/dma.h          |   3 +-
 kernel/dma/direct.h                 |  14 +++-
 kernel/dma/mapping.c                |  13 +++-
 5 files changed, 132 insertions(+), 11 deletions(-)

-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
