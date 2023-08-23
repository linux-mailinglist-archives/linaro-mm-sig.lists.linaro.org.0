Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDEB7862C5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Aug 2023 23:56:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F384F40F3B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Aug 2023 21:56:12 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by lists.linaro.org (Postfix) with ESMTPS id E31CD3EC22
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Aug 2023 21:56:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=kTrSNZkI;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.176 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-68a3b66f350so3774352b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Aug 2023 14:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692827768; x=1693432568;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vdlec6OkejfhXyJVQ4nqDZbY7wcrBeVjlgnKnIanHMs=;
        b=kTrSNZkIv3S6HbAZmwUpDq7mTW1gjmThol4blUtqcsMvzPx0S/pJ7soK/oGl92KvpY
         4X33Ws9xLe38VOupkqRWlWuEwdsLR9Dky7xF5eRyKy1qBC2G9H9JiodmWPrhY0yQpBIS
         XOaw8+ecfPdj/Kv4ZDrcPwuR3GI0e2avV5PG6h1ulR5xHi1df85LaxVouQUD34mKVEwL
         xGbNp9gh1+nMiuyIRV2QcveoPn217J2c6QhkjguHASMZW9XYQXEw/Zf9C1Sdm4B+wwu4
         /QFs6azeoTmS+7ABoTs8p+HTad9XeWKQCyM5BYwf3syPHBaFEcPsQ7ABg8J4MCkiJoNC
         PPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692827768; x=1693432568;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vdlec6OkejfhXyJVQ4nqDZbY7wcrBeVjlgnKnIanHMs=;
        b=Fb+cx7eyjXQhHM/T+nryRo1onOS7KmS4Wmna3fRPua2yscEgnIPR4t2nC3FORbENkf
         AU8z1QFiJZUe1rE5fx0q0Aqgaunj4F/FvpWvrq8M9qMelz+AWmf6k0EV/TaRIj5xYDFI
         +jzAQeWbiBVPmLMD6eTrGzrpA8l1KIeVZ1e1fEhovXKmDMdW0mSo6c6dqiIYfx6XfDqQ
         5m7P7FFTquiJFcXkoBASBwId/LUs5V9C4twBaoukOeyXk8g0tZG7Ul1gD0Jbg5WkvssK
         lDa//McLLZzhnOR3zH25cBCvXsfnkF1AcEMIMa0FEZ0G+25j/sfrxtcqoiPzNrErVA10
         NX7Q==
X-Gm-Message-State: AOJu0Yw96osSgakRvmwfS6LxLBEnBZt/nV18/ULpT/MBNFBqgyf/D9Gh
	hE5BUDl3m+kHP4PDJEF4f38=
X-Google-Smtp-Source: AGHT+IEkOWgvIsdyH4PYVN5etCF6RxN2hmwSfnLjmmcb5cZA9Oqzmyj1dnnsM/qqF7ZbaX1M8jzYgQ==
X-Received: by 2002:a05:6a20:7da9:b0:133:5f6a:fb6 with SMTP id v41-20020a056a207da900b001335f6a0fb6mr17085737pzj.1.1692827767845;
        Wed, 23 Aug 2023 14:56:07 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:6c80:7c10:75a0:44f4])
        by smtp.gmail.com with ESMTPSA id a21-20020aa780d5000000b00689f10adef9sm9968803pfn.67.2023.08.23.14.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 14:56:07 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 23 Aug 2023 14:54:53 -0700
Message-ID: <20230823215458.203366-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Rspamd-Queue-Id: E31CD3EC22
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com,chromium.org,padovan.org,lists.linaro.org,vger.kernel.org,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.210.176:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YSHX3K6GMBMF6DWE7NNWVAOWFG26M5LM
X-Message-ID-Hash: YSHX3K6GMBMF6DWE7NNWVAOWFG26M5LM
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Xaver Hugl <xaver.hugl@gmail.com>, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "open list:POWER MANAGEMENT CORE" <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v9 0/3] dma-fence: Deadline awareness (uabi edition)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YSHX3K6GMBMF6DWE7NNWVAOWFG26M5LM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

This is a re-post of the remaining patches from:
https://patchwork.freedesktop.org/series/114490/

Part of the hold-up of the remaining uabi patches was compositor
support, but now an MR for kwin exists:

  https://invent.kde.org/plasma/kwin/-/merge_requests/4358

The syncobj userspace is:

  https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/21973

v1: https://patchwork.freedesktop.org/series/93035/
v2: Move filtering out of later deadlines to fence implementation
    to avoid increasing the size of dma_fence
v3: Add support in fence-array and fence-chain; Add some uabi to
    support igt tests and userspace compositors.
v4: Rebase, address various comments, and add syncobj deadline
    support, and sync_file EPOLLPRI based on experience with perf/
    freq issues with clvk compute workloads on i915 (anv)
v5: Clarify that this is a hint as opposed to a more hard deadline
    guarantee, switch to using u64 ns values in UABI (still absolute
    CLOCK_MONOTONIC values), drop syncobj related cap and driver
    feature flag in favor of allowing count_handles==0 for probing
    kernel support.
v6: Re-work vblank helper to calculate time of _start_ of vblank,
    and work correctly if the last vblank event was more than a
    frame ago.  Add (mostly unrelated) drm/msm patch which also
    uses the vblank helper.  Use dma_fence_chain_contained().  More
    verbose syncobj UABI comments.  Drop DMA_FENCE_FLAG_HAS_DEADLINE_BIT.
v7: Fix kbuild complaints about vblank helper.  Add more docs.
v8: Add patch to surface sync_file UAPI, and more docs updates.
v9: Repost the remaining patches that expose new uabi to userspace.

Rob Clark (3):
  drm/syncobj: Add deadline support for syncobj waits
  dma-buf/sync_file: Add SET_DEADLINE ioctl
  dma-buf/sw_sync: Add fence deadline support

 drivers/dma-buf/dma-fence.c    |  3 +-
 drivers/dma-buf/sw_sync.c      | 82 ++++++++++++++++++++++++++++++++++
 drivers/dma-buf/sync_debug.h   |  2 +
 drivers/dma-buf/sync_file.c    | 19 ++++++++
 drivers/gpu/drm/drm_syncobj.c  | 64 ++++++++++++++++++++------
 include/uapi/drm/drm.h         | 17 +++++++
 include/uapi/linux/sync_file.h | 22 +++++++++
 7 files changed, 195 insertions(+), 14 deletions(-)

-- 
2.41.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
