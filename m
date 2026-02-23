Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEoXHwcT4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B73411FFA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:49:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A62940514
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:10 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 1ADB33F7DE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 09:51:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=guOTxV7Z;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.53) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4836e3288cdso27287495e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 01:51:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1771840298; x=1772445098; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J9P/hiUK/l/iV+NBMdNBP19LQ/+lioTm29Bruktj9zQ=;
        b=guOTxV7ZmTDek4bJyyNrFmukRSF5dG6bSjhN9Cl5FQMGBvAA8X4HqjKCH5ETupG6k6
         /0cUthLrwQcyHQsjgZAp0T7/o0fgM3V5fUXTFITsUI9LlWFEnG/vVCP+rPgABsKU7mGP
         z1PmoLEsxxiOk0nCL6s8N6ttWV2mgG6jVb1UJRyCSRqPTNT3HV3xtI3wbfkB4wN9qQEP
         2+GHr4l0QRlB1STGM1G/sTVyonojPx3+0N/NYmSqB31AFf3k5z9uy5CjjDNSzP64S7XU
         x4bwtQzP2gpJ9SBLfyXASYCasIHZYwBqfztWlWH43e8HFlU0v1mdggNR9W1sFpu1wcXF
         JjdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771840298; x=1772445098;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J9P/hiUK/l/iV+NBMdNBP19LQ/+lioTm29Bruktj9zQ=;
        b=RAI4A3IHxy+V3bgLbZ7t40d7ndDgr1vtr4SP9olowFsWL6I6WlRhkx6alJCBjQgiaQ
         PHJiSbXX6t55FjI82oO+mh2vpDFOsjk9Ikbs2HH1/L5CJxb12q03Q4syBzkFAwTByHY8
         fLGD/Dx9K7XvAbezT8F11MLsJE285Yp5vTDQq13/LJknp0Yu5G1q66oJydiqsNfqNwD8
         YavfLu13CQhjQf+8Fyh/502EXkhGYQA6t+hfIs5UMCVvY1ol7YUV7AypANRsTZdn41I9
         ZqOhbUAnpi9C+pxPkGd1g+kfkgAdhvJnJp4jnfh+/3XjGy5sxsQ2jC3IgfALGbKrCRw1
         oWGg==
X-Forwarded-Encrypted: i=1; AJvYcCUIGPEkHLgLjNigsxzGS7KqZSjUdjkzyWFIP4KZizlxI5AnaWPGq0mpf1aqxkaAYW7+UTGrFBtGm8Cfjhw0@lists.linaro.org
X-Gm-Message-State: AOJu0Yy1m2yH4M9beTdLN+BSzjAnZIuEAYmavjn2BzvOxuL4NVP//sgb
	CHZpPdI+mN02MKxMtlcu9YDeifInjc1wIsssxynpCMvjw2vDCV9NyeilOt6PE6SoGs8=
X-Gm-Gg: AZuq6aI1A0xjhx2VO79UZp7asL62EebkMExYR5F4ZGBsJOGQ02wdfNJZuIGloGLQUhK
	ZmJet8lxfsI1HRpxmqw/pMH32/0th0zMiLbGRFDOTxGXgNYNnBgPShN6fL2bg+6sKyL2lWTtVDF
	tPNooq3yZnFPaAmZToYJiLkRpF6g2dWDJ4dVpP+ShFI01E+BPVirZgP6y9u0oyhO918K0I877tt
	rdITZbLetjnI2Z6I6QDEkJd538OpYk/4NG9JKE7bo4AiJQtLMI5mQhgWuac+RxrZFOXVa43vkJt
	q/HqHVT+ZB0xyrl9YRNcmijti63mAfJp4RvlcO4WCaWIWLj73DgVLE9eJ95FIWys8kbDPZ1rYue
	b5xkL3sYzhYCCYw6zJO9NFcA3NKsYOY0gcq6AdSP2iRnG1z5e/FvfTECYRtqlmmFrB8Ec/JS+hF
	+g+AWqurTFwTXtIA==
X-Received: by 2002:a05:600c:8b5b:b0:483:a352:b4e4 with SMTP id 5b1f17b1804b1-483a949e600mr141861245e9.6.1771840297668;
        Mon, 23 Feb 2026 01:51:37 -0800 (PST)
Received: from localhost ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a9caadedsm152601835e9.10.2026.02.23.01.51.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 01:51:37 -0800 (PST)
From: Jiri Pirko <jiri@resnulli.us>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Date: Mon, 23 Feb 2026 10:51:34 +0100
Message-ID: <20260223095136.225277-1-jiri@resnulli.us>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-Spamd-Bar: -
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VDZEWXUJ7Z3AXTGZKESZZEFRI7C2WWN7
X-Message-ID-Hash: VDZEWXUJ7Z3AXTGZKESZZEFRI7C2WWN7
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:37 +0000
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VDZEWXUJ7Z3AXTGZKESZZEFRI7C2WWN7/>
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
	DATE_IN_PAST(1.00)[1254];
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
	NEURAL_HAM(-0.00)[-0.610];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,resnulli.us:mid,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 16B73411FFA
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

---
v1->v2:
 patch1:
  - rebased on top of recent dma-mapping-fixes
 patch2:
  - fixed build errors on s390 by including mem_encrypt.h
  - converted system heap flag implementation to a separate heap

Based on dma-mapping-fixes HEAD d5b5e8149af0f5efed58653cbebf1cb3258ce49a

Jiri Pirko (2):
  dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
  dma-buf: heaps: system: add system_cc_decrypted heap for explicitly
    decrypted memory

 drivers/dma-buf/heaps/system_heap.c | 103 ++++++++++++++++++++++++++--
 include/linux/dma-heap.h            |   1 +
 include/linux/dma-mapping.h         |   6 ++
 include/trace/events/dma.h          |   3 +-
 include/uapi/linux/dma-heap.h       |   3 +-
 kernel/dma/direct.h                 |  14 +++-
 6 files changed, 119 insertions(+), 11 deletions(-)

-- 
2.51.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
