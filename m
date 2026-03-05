Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAjcMzhc5mkwvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:02:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 825684306E2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:02:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96E1640500
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:02:47 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 53F0D3F952
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Mar 2026 12:36:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b="l/b0nC1q";
	dmarc=none;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.221.49) smtp.mailfrom=jiri@resnulli.us
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439bc14dcf4so2795025f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Mar 2026 04:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1772714203; x=1773319003; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y3f86hD8zd8MmrDtQjkoOiWVtBZ+fmRfNZDECEzXgGc=;
        b=l/b0nC1qswt38zUY3bolROWsZbPO6nRxz+aRuotsZy+qximCkcR14gwiTx5lMKJtqa
         RsKgLzrjj0sX6/RW4NjPCNfUuPJX7z8BzUVGJN+f5exxpXqLeaKBHqzqcGwc/GfLYmmc
         oBrHshAnDYDEpV1S8kxmpEq01GKD87f2pOfkcPOaX+kLx3cLe0DDHTJ9Mt4nIIXO1PTc
         KmKS5Kr195DVhnLz0Ry7yJnL6BaInQ6+GpVrWXmDiyGpvlCAxxhE9okHtXhRXsGrI35v
         ZO2acynIrvbXkBz43EV7B2Y1HmcpDlcsn3Wdy6KKEr6LJB6JGZLViCPVynwFePMkYKxl
         IlsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772714203; x=1773319003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y3f86hD8zd8MmrDtQjkoOiWVtBZ+fmRfNZDECEzXgGc=;
        b=G3RjuSFMeHfR3c61g37vHhmFYALkEx1kz7GHPD+L6BbZxW1nMOW7F2VOTunbZnk0uR
         oVXV1KRoJZ4z3jlFuEPU7RFLNMpYEEM3MdQiul5wjnvTuOjdXWQ7v8xgMTUGH8PKcj6k
         OlnCB57Q9yjSHIE/MePUIVAoAqTkYguLTYM/lgubnrxZgkK8z9yLu33Cy6dam50jx8wA
         BRKJY9tfgnOnZyjMPJetUULoJ5DnHW7Mao7bdqRYvfvskiMIxs1PhFpPbvqNu+cJWcPN
         Juv110H19uvRXL6t/w2efedv5Tl/nrA3BKl/N7pFrXl+kadfvdWK5mZ9ANwMA+D9L24I
         iAiA==
X-Forwarded-Encrypted: i=1; AJvYcCVGq3pZl8ZyLecSncea7DH4mBj0tRmlgqeFzSsk1YXjqd96IsVSI/j+UPQNPqwVY5VV1Nz2Ikzg2lvHHcVl@lists.linaro.org
X-Gm-Message-State: AOJu0YxAw5/GGmINLEfAVcaiI43U2FgwKYZ9c5QOLWSg3CyPS5F7ECe1
	fOl0YLyGxAtmfbgYo/WHDdzjgRBjzQ9oepdnZJCzpQ/Vfa+d1Nn9wGulAOX9y9Iasbg=
X-Gm-Gg: ATEYQzxeRf+KSrWRBAE21d2fQHeXaB4+l+caHs9nX3Hk/6yYWCo+vycN9Wp5kwVhvf1
	ChwvWsaGVdLCwRuYCYa02RwtaKNvDyWdXRkzzTncJdcg0rRlp/F+z/BhY0SgKAVYQc7hMgHQwWW
	3OgmKxmj3PaPfpX60hjqmnylPioohB7e3gsvfEqYajvxKaPG02pPxbB7nL/uL7YtxLKC/pbtcub
	ua0vBaot7D0W9t2J+4i3Qc/3pggOrwTU4/xoMOwf30l3RhqVlcwJ0+82ZmHRORdBvrgof15FdlG
	yK6mD5Ns2pOZk8zdj8M1MCHrgsIuGC0wP1aoMXHLURl+KnyK8mMhBGJbVyHnW8gPHVnPUkLF0fZ
	iolXI3RC8+I0KYcrBb7l7xneVZKIEhP+uZFSRYbzRdJsstXcsX4WTmadSK+0wMCthrZt9t1f7Sm
	S2+p4O+NjT4yS4zA==
X-Received: by 2002:a05:6000:1845:b0:439:afc5:dd0d with SMTP id ffacd0b85a97d-439cfd76cf6mr3945058f8f.25.1772714202770;
        Thu, 05 Mar 2026 04:36:42 -0800 (PST)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439af926c53sm43701820f8f.8.2026.03.05.04.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 04:36:42 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Thu,  5 Mar 2026 13:36:39 +0100
Message-ID: <20260305123641.164164-1-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZAB2BOUQ3L7NXI6Q2KXHDUBEBWOSBJ6N
X-Message-ID-Hash: ZAB2BOUQ3L7NXI6Q2KXHDUBEBWOSBJ6N
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:02:18 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZAB2BOUQ3L7NXI6Q2KXHDUBEBWOSBJ6N/>
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
	DATE_IN_PAST(1.00)[1108];
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
	NEURAL_SPAM(0.00)[0.578];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,resnulli.us:mid]
X-Rspamd-Queue-Id: 825684306E2
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

Jiri Pirko (2):
  dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
  dma-buf: heaps: system: add system_cc_decrypted heap for explicitly
    decrypted memory

 drivers/dma-buf/heaps/system_heap.c | 103 ++++++++++++++++++++++++++--
 include/linux/dma-mapping.h         |   6 ++
 include/trace/events/dma.h          |   3 +-
 kernel/dma/direct.h                 |  14 +++-
 4 files changed, 117 insertions(+), 9 deletions(-)

-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
