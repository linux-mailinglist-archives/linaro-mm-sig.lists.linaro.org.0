Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDVBAswB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 930EC410F5D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A642D445F4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:35:38 +0000 (UTC)
Received: from mail-wm1-f73.google.com (mail-wm1-f73.google.com [209.85.128.73])
	by lists.linaro.org (Postfix) with ESMTPS id 08A223F80B
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Dec 2025 09:55:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=M3+X6Ohy;
	spf=pass (lists.linaro.org: domain of 39WUtaQkKDcYmxuoq3Atxs00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--aliceryhl.bounces.google.com designates 209.85.128.73 as permitted sender) smtp.mailfrom=39WUtaQkKDcYmxuoq3Atxs00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f73.google.com with SMTP id 5b1f17b1804b1-4779edba8f3so27896165e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Dec 2025 01:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764582902; x=1765187702; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=72s8cxP8m32nLOQlBnrTppnRNNSnWx6bZ8vmeua9AuM=;
        b=M3+X6OhysPQ02Lq+IXRs879aJ6WR4ScGxBgsOrvMYTh3dAExAenpTdje6zNV1NvOwt
         1O9MfUGz/C+27NQZQ7NTheFBvdpRsUuIp6iQMqXgljQO26J9qZRkuy4910NHp3xWn9TG
         ksbP1Hw4iMslxwP5inTPOpJ+aW5bviQN0r0GVRRJHbHtNgVMVT0VL16NiQIj0yIBYA3Y
         uH1b14FhwEWAmYhVN37LoxfwfQWwZsW5GayS1Xi9zFdb+98XaX++ISTxOFw+a/4XyQgn
         bQFgs7AKrL5i0Dc7gaVYFJt0zZebqFFKxyduJQU7+z9/W41sssXa7z/1t33UkxIDx2Ck
         mAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764582902; x=1765187702;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=72s8cxP8m32nLOQlBnrTppnRNNSnWx6bZ8vmeua9AuM=;
        b=xKW8w/yBgOPumIWj5QBcrjEiwJtM6+G0IYpHvC+dwxR2OV9XO6DjR6UsO3jiFc4Vk6
         RPqdFJEg3uyPpiAzn6x/I54EE14s0/Dne4zRUtqGMvkEseWHuUP05g40OQwSEMF9RVGu
         rTPbNx0ylqq8mKbXka4lwr/aW9cb5h2eabPwdNA39Oc7ZQ1RXj88XsgC2TmYHfFE3cpN
         x655GFsJhsXeLbR+Wm8Ewwyhv4EnImTQ/gZyz+332LO62y89tFw2WzFMmkvlO7H0hh1l
         cTrcMyYEYF21c0PkjvutYXSKxRpjIJ8vIRrat29iRwsDNwfR4UUJ6bdc/5f5Ev/Ym7Jq
         M6YQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0uyN5zZT3s0BAem1G6OAc5M6vm4Z8lu4JvIghOb0HrTRL2VoWZnAzROFX/QUSoSb+XkGdJ00GamivVQMW@lists.linaro.org
X-Gm-Message-State: AOJu0YyMAY6ynoKS20hHLRsZaFxEZI/UXitRjnvoJ8jsIoEMDJoR4b4c
	+tck/m8FUTWNggEju9xkDkzndL63+WY/uTpWmFPw0GSRd36PUdX6lLmd2zYhoqZl3Afke4h8YsO
	uwdkDgHh37io/6fsxbA==
X-Google-Smtp-Source: AGHT+IHR/gzeFh7+KeD1MsGLOFVqoY8R7VwUnjkirrmR28Kdsu+0Qy8DFoIl1J3N86VCTwEGoZO2EDfdb0ODTEY=
X-Received: from wmba22.prod.google.com ([2002:a05:600c:6dd6:b0:477:7ad9:2aa])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:4f4c:b0:475:da1a:53f9 with SMTP id 5b1f17b1804b1-477c0184b1emr414720285e9.14.1764582901820;
 Mon, 01 Dec 2025 01:55:01 -0800 (PST)
Date: Mon, 1 Dec 2025 09:55:00 +0000
In-Reply-To: <20251128152403.72aedafa@fedora>
Mime-Version: 1.0
References: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
 <20251128-gpuvm-rust-v1-1-ebf66bf234e0@google.com> <20251128152403.72aedafa@fedora>
Message-ID: <aS1l9Mm9smUzAJ3A@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Spamd-Bar: ---
X-MailFrom: 39WUtaQkKDcYmxuoq3Atxs00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YRWEAUCKQL7OIJXRHEJC32J3UFPPHFS2
X-Message-ID-Hash: YRWEAUCKQL7OIJXRHEJC32J3UFPPHFS2
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:28 +0000
CC: Danilo Krummrich <dakr@kernel.org>, Daniel Almeida <daniel.almeida@collabora.com>, Matthew Brost <matthew.brost@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poo
 rly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Lyude Paul <lyude@redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] drm/gpuvm: take GEM lock inside drm_gpuvm_bo_obtain_prealloc()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YRWEAUCKQL7OIJXRHEJC32J3UFPPHFS2/>
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
	DATE_IN_PAST(1.00)[3269];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[41];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,intel.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,arm.com,garyguo.net,protonmail.com,umich.edu,imgtec.com,oss.qualcomm.com,linux.dev,poo rly.run,somainline.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	ARC_NA(0.00)[];
	NEURAL_SPAM(0.00)[0.999];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 930EC410F5D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Nov 28, 2025 at 03:24:03PM +0100, Boris Brezillon wrote:
> On Fri, 28 Nov 2025 14:14:15 +0000
> Alice Ryhl <aliceryhl@google.com> wrote:
> 
> > When calling drm_gpuvm_bo_obtain_prealloc() and using immediate mode,
> > this may result in a call to ops->vm_bo_free(vm_bo) while holding the
> > GEMs gpuva mutex. This is a problem if ops->vm_bo_free(vm_bo) performs
> > any operations that are not safe in the fence signalling critical path,
> > and it turns out that Panthor (the only current user of the method)
> > calls drm_gem_shmem_unpin() which takes a resv lock internally.
> > 
> > This constitutes both a violation of signalling safety and lock
> > inversion. To fix this, we modify the method to internally take the GEMs
> > gpuva mutex so that the mutex can be unlocked before freeing the
> > preallocated vm_bo.
> > 
> > Note that this modification introduces a requirement that the driver
> > uses immediate mode to call drm_gpuvm_bo_obtain_prealloc() as it would
> > otherwise take the wrong lock.
> > 
> > Signed-off-by: Alice Ryhl <aliceryhl@google.com>
> 
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> 
> Should we add a Fixes tag?

Yeah, let's add:

Fixes: 63e919a31625 ("panthor: use drm_gpuva_unlink_defer()")

Alice
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
