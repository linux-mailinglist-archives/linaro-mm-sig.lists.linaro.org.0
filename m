Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEUlJ40A4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:21 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F19410D07
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:30:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73EEA40978
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:30:20 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 63DBA3F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 13:20:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YloxW97u;
	spf=pass (lists.linaro.org: domain of phasta@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=phasta@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C390C43804;
	Wed, 26 Nov 2025 13:20:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88A38C113D0;
	Wed, 26 Nov 2025 13:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764163201;
	bh=Sxi/6Q4jvM2wf7pGd7IQAsQCeNxuHVhX9VsDta4LQiA=;
	h=From:To:Cc:Subject:Date:From;
	b=YloxW97ukkemiEAEPPhT3JNEHRNsVszBesyclyxTRy/EnrWClbK0bOMKoj3DfHXYz
	 qoI4/w2RckPGF92iCtRSt0iYnXyoM8Tc88E/i3SGDnoJAVqj1KaIxoqV/t0KumtfHg
	 7eQHOasX20pp/F4RF8CDvu7tYubl2WDsVGsRbqWeXsn9htX/5681mjms4g1PWtPT9m
	 Z0H73pNH42qhH97McsOJran19ljL/9/E989x8UdZfitpJSEVz95DcX/Dbty5lKKfmz
	 D63AVLSZR/MJ4CnCHUZ4j/BSbAPPTzStWNmNcKA9dSOgRtNbeK2KIECPRkfHhReJzG
	 QTlTTkRMr0uGg==
From: Philipp Stanner <phasta@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Gustavo Padovan <gustavo@padovan.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Felix Kuehling <Felix.Kuehling@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	Huang Rui <ray.huang@amd.com>,
	Matthew Auld <matthew.auld@intel.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	=?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 26 Nov 2025 14:19:09 +0100
Message-ID: <20251126131914.149445-2-phasta@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OSVVOFED5WBSXRR6AA6A3YBX2NO4LUXH
X-Message-ID-Hash: OSVVOFED5WBSXRR6AA6A3YBX2NO4LUXH
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:02 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, rust-for-linux@vger.kernel.org, Philipp Stanner <phasta@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/6] dma-fence: Remove return code of dma_fence_signal() et al.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OSVVOFED5WBSXRR6AA6A3YBX2NO4LUXH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[3386];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,padovan.org,amd.com,gmail.com,ffwll.ch,linux.intel.com,intel.com,ursulin.net,kernel.org,suse.de];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-0.938];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 55F19410D07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Barely anyone uses dma_fence_signal()'s (and similar functions') return
code. Checking it is pretty much useless anyways, because what are you
going to do if a fence was already signal it? Unsignal it and signal it
again? ;p

Removing the return code simplifies the API and makes it easier for me
to sit on top with Rust DmaFence.

Philipp Stanner (6):
  dma-buf/dma-fence: Add dma_fence_test_signaled_flag()
  amd/amdkfd: Ignore return code of dma_fence_signal()
  drm/gpu/xe: Ignore dma_fenc_signal() return code
  dma-buf: Don't misuse dma_fence_signal()
  drm/ttm: Remove return check of dma_fence_signal()
  dma-buf/dma-fence: Remove return code of signaling-functions

 drivers/dma-buf/dma-fence.c                   | 59 ++++++-------------
 drivers/dma-buf/st-dma-fence.c                |  7 +--
 drivers/gpu/drm/amd/amdkfd/kfd_process.c      |  5 +-
 .../gpu/drm/ttm/tests/ttm_bo_validate_test.c  |  3 +-
 drivers/gpu/drm/xe/xe_hw_fence.c              |  5 +-
 include/linux/dma-fence.h                     | 33 ++++++++---
 6 files changed, 53 insertions(+), 59 deletions(-)

-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
