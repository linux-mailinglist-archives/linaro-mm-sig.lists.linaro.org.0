Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gB6HG3YB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E132B410EB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:34:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B255444C8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:34:13 +0000 (UTC)
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com [209.85.128.74])
	by lists.linaro.org (Postfix) with ESMTPS id 87B2C3F6F2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 14:14:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=y1E7pKeL;
	spf=pass (lists.linaro.org: domain of 3RK4paQkKDZc1C935IP8C7FF7C5.3FDC9E1IF-DD-J97C9JKJ.C9E1IF.FI7@flex--aliceryhl.bounces.google.com designates 209.85.128.74 as permitted sender) smtp.mailfrom=3RK4paQkKDZc1C935IP8C7FF7C5.3FDC9E1IF-DD-J97C9JKJ.C9E1IF.FI7@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f74.google.com with SMTP id 5b1f17b1804b1-477c49f273fso16886485e9.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 06:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764339268; x=1764944068; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zhHL3BMFDuZhN/57WOJfnY5bammkP52DxCSg9ZesAV8=;
        b=y1E7pKeLcGFuBBMYTin3cQPqQvMEk/+PeoVyuELoYC7b6Kj/hB4ClNEah3vh0j4Hwa
         SXXXeTTGpO5B+RyU04U4Do3GEaj0PLqq+43kCJmsSJqKA7BkXIm0ehDVWv1DJSCKBt6f
         aiKjPfdzQQ1P+LW8AOC0AGVtU13IwX/KjVl8DLFSUBGxzsepfS4op9pd3BMVsmaPB+Bg
         M+xIReq7PcJLi+rctGi1wH1uNW2jGY+iAgzLfYlrfOd/zWBou+fKJ0wtcPsrD/F7oqMS
         yvx3jl4WWR7d2PtWRHh45rW2Hk4pCKPhvnmWgawErUGoqjjZkJM9nLjwQuLWXwCk7aEy
         AHVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764339268; x=1764944068;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zhHL3BMFDuZhN/57WOJfnY5bammkP52DxCSg9ZesAV8=;
        b=hvsnU4jaGUlCUipewllwxFsVn2Y7w+7TeUe22/bei2dHtsKUgk1+tFAeLS/gsaHNqh
         52g7lVM506qSutx4wAsDes2LoJTiKXss/wCWEEEoNaleTV27FbQjMEd5MskNJm9Wi2ub
         uWIogIsC243mWQ+D8ZMImYmVglBxDGQXh3gaQB4KjFt0C9Xp94syEaAdo7V2e5v4MIr7
         NwrHyR3J0aGga7VPzkZudtZ5+AIHl/FOrLkpkWiHKtcA6nopz4Zqsq7oOLERDOTxRUr5
         Ueqf8/kaCLSj1D43MTPXFOd+ZoMIn7cIUfSFXhCwnfJqHyZO1fwhFXl2R+jzYMESTzMq
         NBSA==
X-Forwarded-Encrypted: i=1; AJvYcCWtwK2B/7xE2WrbvQmDpIE2xDRAFVrpOCj9n0mv/1bKHkqdp/JiQyLurTow9wLWXuRcibhxoEkC0WXClGw7@lists.linaro.org
X-Gm-Message-State: AOJu0Yz5CO09SxjgY/mUAGT2JORPlVgzqPQsoduq7nKfPVFqCm3xCdm/
	UrFyhLWc2QuJh2DhciKOJQqx9jMwNEvLzy3ybDaRSLc7D00DnhuP1nA3n+vHX8wT197i+6YMAjf
	AZW7ZO8p2rFkzu1feqw==
X-Google-Smtp-Source: AGHT+IGWyokfoxvVAeT84HHEwKkD03sQllI97v9KLdFvEaRTwW3WBOhmDf1Nxj/s6YQQl7dQASa85gm3ScQahxM=
X-Received: from wmbjq9.prod.google.com ([2002:a05:600c:55c9:b0:477:5c35:1b95])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:1994:b0:46f:c55a:5a8d with SMTP id 5b1f17b1804b1-477c0176437mr295297385e9.4.1764339268358;
 Fri, 28 Nov 2025 06:14:28 -0800 (PST)
Date: Fri, 28 Nov 2025 14:14:14 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADauKWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyML3fSC0rJc3aLS4hLdJHNDy+TEZCPzxBQzJaCGgqLUtMwKsGHRsbW 1AINOf21cAAAA
X-Change-Id: 20251128-gpuvm-rust-b719cac27ad6
X-Developer-Key: i=aliceryhl@google.com; a=openpgp; fpr=49F6C1FAA74960F43A5B86A1EE7A392FDE96209F
X-Developer-Signature: v=1; a=openpgp-sha256; l=1915; i=aliceryhl@google.com;
 h=from:subject:message-id; bh=YUJy7negUaDa3i/z93UmgA296mGxFrrof52RqnC+Knc=;
 b=owEBbQKS/ZANAwAKAQRYvu5YxjlGAcsmYgBpKa4+Ob9zfXNKSCD2DFuIEJCWhazHrkpyvwSJo
 grxNOXFGJaJAjMEAAEKAB0WIQSDkqKUTWQHCvFIvbIEWL7uWMY5RgUCaSmuPgAKCRAEWL7uWMY5
 Rs2LD/0QRiHXFNcsZ2UklzNBRGR+4GXh5VPmeo0TsfZfMCGPmTcBU9l1WecM8NywQUPp8ZomNB/
 rwHrXrvSsnUse/tDhhhk/e9OTimR8oPwJeESKrQv9nz6zzeAjX659YQu500CDt/WT2t2jsjjEAl
 CNtQRslkrFsfdypRq9MpxlittBcgMxXK/e0fJhVNpxGxYnk2pWI871g28GawhxjNJyrGBlf/g7g
 fUSepFjOCu3Xkho19aoO7I5fVZxjjbTG0EKs55RHfX1gwkmEO7aWO5kf4uhoemwqS2fHAvVeFNa
 BdVUXvDpPHF+pykOAyiNApNvuEwnYy9L1DhrctFxYr9YBQBo9G6kNvV/vi7ayj8vfTW5j55mFOz
 Id04xAmbps5UenSTRvSs3wNbVeT9ucvdli2v6FZEg5xrtxLg+vxNLgbR4+GwhHqfGlxOGW6ha6s
 cvrA4DL9Qgo7r1+bcqCAJuCDq0myOvN2O2j5cYQ7Z0DyYd2DKRpbxWsnVujocaMxY1/m2rMr4vj
 GYY+V3U+U2BdvMWNUWdYUvtgtQcpyefH1P1JcV1EzsB33B4TZx+UcIDUiliWIB7+4cfURnadtVI
 VUx0tRJwBnfii0nwY4yFFNBjzHPStgTKBzg6kfBXZ8Gfy6covgoZ8LEjfSTYaRUYArQyGr89AyP eGFLCahwk9vk6AA==
X-Mailer: b4 0.14.2
Message-ID: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Danilo Krummrich <dakr@kernel.org>, Daniel Almeida <daniel.almeida@collabora.com>
X-Spamd-Bar: ---
X-MailFrom: 3RK4paQkKDZc1C935IP8C7FF7C5.3FDC9E1IF-DD-J97C9JKJ.C9E1IF.FI7@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Y4SOQJLF7YYBP5ZE46J2F37Z5DXSOIE7
X-Message-ID-Hash: Y4SOQJLF7YYBP5ZE46J2F37Z5DXSOIE7
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:21 +0000
CC: Matthew Brost <matthew.brost@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn
 .suijten@somainline.org>, Lyude Paul <lyude@redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Alice Ryhl <aliceryhl@google.com>, Asahi Lina <lina+kernel@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/4] Rust GPUVM support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y4SOQJLF7YYBP5ZE46J2F37Z5DXSOIE7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed), No valid DKIM,reject];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3337];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,collabora.com,arm.com,garyguo.net,protonmail.com,umich.edu,imgtec.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,google.com,asahilina.net];
	NEURAL_SPAM(0.00)[0.997];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: E132B410EB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This makes a few changes to the way immediate mode works, and then it
implements a Rust immediate mode GPUVM abstraction on top of that.

Please see the following branch for example usage in Tyr:
https://gitlab.freedesktop.org/panfrost/linux/-/merge_requests/53

For context, please see this previous patch:
https://lore.kernel.org/rust-for-linux/20250621-gpuvm-v3-1-10203da06867@collabora.com/
and the commit message of the last patch.

Signed-off-by: Alice Ryhl <aliceryhl@google.com>
---
Alice Ryhl (4):
      drm/gpuvm: take GEM lock inside drm_gpuvm_bo_obtain_prealloc()
      drm/gpuvm: drm_gpuvm_bo_obtain() requires lock and staged mode
      drm/gpuvm: use const for drm_gpuva_op_* ptrs
      rust: drm: add GPUVM immediate mode abstraction

 MAINTAINERS                            |   1 +
 drivers/gpu/drm/drm_gpuvm.c            |  80 ++++--
 drivers/gpu/drm/imagination/pvr_vm.c   |   2 +-
 drivers/gpu/drm/msm/msm_gem.h          |   2 +-
 drivers/gpu/drm/msm/msm_gem_vma.c      |   2 +-
 drivers/gpu/drm/nouveau/nouveau_uvmm.c |   2 +-
 drivers/gpu/drm/panthor/panthor_mmu.c  |  10 -
 drivers/gpu/drm/xe/xe_vm.c             |   4 +-
 include/drm/drm_gpuvm.h                |  12 +-
 rust/bindings/bindings_helper.h        |   2 +
 rust/helpers/drm_gpuvm.c               |  43 +++
 rust/helpers/helpers.c                 |   1 +
 rust/kernel/drm/gpuvm/mod.rs           | 394 +++++++++++++++++++++++++++
 rust/kernel/drm/gpuvm/sm_ops.rs        | 469 +++++++++++++++++++++++++++++++++
 rust/kernel/drm/gpuvm/va.rs            | 148 +++++++++++
 rust/kernel/drm/gpuvm/vm_bo.rs         | 213 +++++++++++++++
 rust/kernel/drm/mod.rs                 |   1 +
 17 files changed, 1337 insertions(+), 49 deletions(-)
---
base-commit: 77b686f688126a5f758b51441a03186e9eb1b0f1
change-id: 20251128-gpuvm-rust-b719cac27ad6

Best regards,
-- 
Alice Ryhl <aliceryhl@google.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
