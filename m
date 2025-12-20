Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFW6HpgK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7A241171E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43B04446FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:13:11 +0000 (UTC)
Received: from mail-wm1-f73.google.com (mail-wm1-f73.google.com [209.85.128.73])
	by lists.linaro.org (Postfix) with ESMTPS id 9A8973F7AA
	for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 10:18:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="rwHMhM/x";
	spf=pass (lists.linaro.org: domain of 3-3dGaQkKDVYy9602FM594CC492.0CA96ByFC-AA-G6496GHG.96ByFC.CF4@flex--aliceryhl.bounces.google.com designates 209.85.128.73 as permitted sender) smtp.mailfrom=3-3dGaQkKDVYy9602FM594CC492.0CA96ByFC-AA-G6496GHG.96ByFC.CF4@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f73.google.com with SMTP id 5b1f17b1804b1-4779ecc3cc8so17524115e9.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 02:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766225915; x=1766830715; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=+oURe4aXMdk0LjKAZ44d1/hPSLfZHh6FrPzIxlIWzd8=;
        b=rwHMhM/xAyebuHFwkr+6G59vxQSiWKzqfPh8THajh3aM50J+3252gVLg6VVKG/FRDr
         WKNhfn5rt5jFyRmP0orcOa0LnJMXsp2RYSlBDe2ktWq8TFNuMbV0uzdFeVrhYuOMzGvj
         T0rMPUXvpp2AqxCaqsaiFlRbBBb/JOaIAbsIKJyMGkvjFYiZOIbee68+Wi1VrpGqY9IB
         +QKEpgYWQku1FTh5qCOGEiJBL03eA9KR3st/oKpPdLAC/rN4z7YLOS9xDYcoAb2zOtqJ
         s/lLfYSGrzQd0n/2E39Ox3fFpwFJF8faS782U6wkUK6/sHLcTRPAiUaLx//1z1sW3FcZ
         3l5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766225915; x=1766830715;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+oURe4aXMdk0LjKAZ44d1/hPSLfZHh6FrPzIxlIWzd8=;
        b=FReI+I11WhMyT3BaaALU42TcRjdE53zCSUf5MYaA8ZSRYT5CebnMJoXo2PHsCkXr6W
         Pwvnk2N8orrFDeF8n2XogRkjQTox9g2GZQpJYCTwJ+9JdCOpF/6A7q5bVMVIe7OV1Ef8
         +/dyrUaMQqry5NKPD5ZrUvkYjYi3ywkCEzoqRqBEw6KSnrlrwODmbE9VRnsggnJbOH1V
         jnJeEE2Ms4uX8yExyB2CUs3IOyJIQnMFcsS3aym5HUQsqAKWQ7FO2FwW4LsQhsZoD7aq
         Zgn4ZKBGY646A156C3ehXOsHkVZwCa89f9CRAvSxnKWGE1TggmGHfkqq9JrN3CqYeTAW
         mYow==
X-Forwarded-Encrypted: i=1; AJvYcCVH7//xoUQ2fjx8AM+7rW0vOLKBsGHXyIdVHsgW1bsHAml3i1xti+uQdxhHO+TkUfy8U4vjXNWTxhmU7PE2@lists.linaro.org
X-Gm-Message-State: AOJu0YxTZVUbilW6WJkSFcVJMEaLatskxdwmnt3YLUodnAxFpHHP81G5
	vHKfx4ZEkO7S62E0a0LSs+Hjvp3Xg819khQJfcixE2amunfpzrifxhMkYvDPNhEAmXNLccKRVGz
	Xh1rf53Ek8ENmdw2q1g==
X-Google-Smtp-Source: AGHT+IHezTbdkQabpgPR3pVcmu1YjPdSolIwP7RQSXNt0PalcelZIDHJL+QGmDx/ShI8sV3gW2XIBlw4p3buplU=
X-Received: from wmxa7-n1.prod.google.com ([2002:a05:600d:6447:10b0:477:5a0f:1860])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:8b8b:b0:46e:6d5f:f68 with SMTP id 5b1f17b1804b1-47d19566aa8mr51108125e9.12.1766225915629;
 Sat, 20 Dec 2025 02:18:35 -0800 (PST)
Date: Sat, 20 Dec 2025 10:18:34 +0000
In-Reply-To: <aUZ07zYew7Mfwc_C@google.com>
Mime-Version: 1.0
References: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
 <20251128-gpuvm-rust-v1-4-ebf66bf234e0@google.com> <DF2AXQ67412G.33JOX2CF0VFCK@kernel.org>
 <aUZw4fpWRUWFsb9r@google.com> <aUZ07zYew7Mfwc_C@google.com>
Message-ID: <aUZ3-iStCAWShvt8@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Danilo Krummrich <dakr@kernel.org>
X-Spamd-Bar: -
X-MailFrom: 3-3dGaQkKDVYy9602FM594CC492.0CA96ByFC-AA-G6496GHG.96ByFC.CF4@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FIT45OUYOMFGGAFH35HK7KU2JOZKJ6Z7
X-Message-ID-Hash: FIT45OUYOMFGGAFH35HK7KU2JOZKJ6Z7
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:07 +0000
CC: Daniel Almeida <daniel.almeida@collabora.com>, Matthew Brost <matthew.brost@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Lyude Paul <lyude@
 redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/4] rust: drm: add GPUVM immediate mode abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FIT45OUYOMFGGAFH35HK7KU2JOZKJ6Z7/>
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
	DATE_IN_PAST(1.00)[2813];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[39];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[collabora.com,intel.com,linux.intel.com,kernel.org,gmail.com,ffwll.ch,arm.com,garyguo.net,protonmail.com,umich.edu,imgtec.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org, redhat.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,asahilina.net];
	ARC_NA(0.00)[];
	NEURAL_SPAM(0.00)[0.999];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 2E7A241171E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Dec 20, 2025 at 10:05:35AM +0000, Alice Ryhl wrote:

Aha! This one didn't get duplicated on lore. It's the nouveau list that
is broken.

Alice
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
