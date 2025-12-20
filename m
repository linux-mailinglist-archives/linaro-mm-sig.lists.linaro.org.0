Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4M2IGY0K4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAC6411710
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39FBB40A5D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:13:00 +0000 (UTC)
Received: from mail-wm1-f73.google.com (mail-wm1-f73.google.com [209.85.128.73])
	by lists.linaro.org (Postfix) with ESMTPS id ABB224013F
	for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 09:48:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=CfQYY7HA;
	spf=pass (lists.linaro.org: domain of 34nBGaQkKDS8LWTNPcjSWRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--aliceryhl.bounces.google.com designates 209.85.128.73 as permitted sender) smtp.mailfrom=34nBGaQkKDS8LWTNPcjSWRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f73.google.com with SMTP id 5b1f17b1804b1-477c49f273fso32938045e9.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 01:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766224099; x=1766828899; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=qOW4PnpVwJ1a1ow90wBbPY5V5qFqMGNXJlCYoRRToZ8=;
        b=CfQYY7HACckW0lKoLfNBv3H6s6+ZZG6buBwynYRwPO3XlFpVPIP9Y4qbXXT9Uj6bXJ
         EyjGFEZ0AhgE/2U4EnBgPHuH1Iw8KQCjJtmai1kWcXaZcAwahaDnsF6dEEIKFi0gTpoB
         dhEIVWrNY6vAVIrHYbieZQBCRl+HYTiUnqOxyocrVgrq/xQr+u5XsugMrHdOXuDV5zHj
         a1Mu14+bK0JKcgfWO5i03bc3zsJZwu/mFHESnUR051yVS8MD4DjpXqrLKWdWIyGX4WmN
         BJEK7eXCTuE8U5CitqakeHx35OmxzKGMrXfWdbFdB2m41dVF4rOJaJ1b9Xyrn8cz2/pJ
         nzUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766224099; x=1766828899;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qOW4PnpVwJ1a1ow90wBbPY5V5qFqMGNXJlCYoRRToZ8=;
        b=LEjApcinq6cbaSjMqok7fQiBbq6LWrmnUxfVx71bLZwo2jHwIdvRP2xu1tTLDt/auL
         rRRDroqUC0wnrfgFAqtFlHFBSMwbvlXR9BlMaPyb4hPzZ9yVXA7kAFuJ7QXpOPsVi97r
         4zlTqDrXnRsfWL3VtxkESaD+qNe2qWNGvPWfzjZHB+NXR0um/AvBz3HG9pidU/unfGlo
         WbUGyYIR5FyppYK0NjDQl/ve68Pls0KpTrAVhf/woOOLdHGQi8KP83fGwdsPdXEmmO/s
         6w7k1FL34Q8CP6VhfO/rxy4Cfz/zvOHq/YUn94XV7SMeqtZ7QLgt0BMtWamm+DFdZsef
         pOAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgjBuVi0WtTOjpAtzsW7M0ykTZMH/zW7NEzaSv/SMiqD28B8wGeHv61SZk0ufSRhWRDLm1gaMGYoKHIyvg@lists.linaro.org
X-Gm-Message-State: AOJu0YzcvINqzqEoqXljUJ9EXPgX1yjZZcL21D4IeG9acQVbLwhA69RQ
	0+2JXPoDPI8ahVfkCUdAyDinzwGLp7jUH68jFd8ZYKFNFx3MDEyanNN8Rtr7o/+1C1EkcBYEdaf
	Aga/X70wAH0TTuBQScw==
X-Google-Smtp-Source: AGHT+IF/wwyCbmZKrb9+OJuirDYtRZw2m8SWoZaJ0QqeIqy0vt7I3G/xdsnBsD2ylGONwHmPG8Ly7PYUfnT9IJg=
X-Received: from wmbjp12.prod.google.com ([2002:a05:600c:558c:b0:475:decb:4c4d])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:608d:b0:477:93f7:bbc5 with SMTP id 5b1f17b1804b1-47d195667d6mr53518855e9.10.1766224098608;
 Sat, 20 Dec 2025 01:48:18 -0800 (PST)
Date: Sat, 20 Dec 2025 09:48:17 +0000
In-Reply-To: <DF2AXQ67412G.33JOX2CF0VFCK@kernel.org>
Mime-Version: 1.0
References: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
 <20251128-gpuvm-rust-v1-4-ebf66bf234e0@google.com> <DF2AXQ67412G.33JOX2CF0VFCK@kernel.org>
Message-ID: <aUZw4fpWRUWFsb9r@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Danilo Krummrich <dakr@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: 34nBGaQkKDS8LWTNPcjSWRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LTRWHJ6KTJUHIXNZMZBYQBTBIQMA4VSS
X-Message-ID-Hash: LTRWHJ6KTJUHIXNZMZBYQBTBIQMA4VSS
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:06 +0000
CC: Daniel Almeida <daniel.almeida@collabora.com>, Matthew Brost <matthew.brost@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean P
 aul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Lyude Paul <lyude@redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/4] rust: drm: add GPUVM immediate mode abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LTRWHJ6KTJUHIXNZMZBYQBTBIQMA4VSS/>
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
	DATE_IN_PAST(1.00)[2814];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[42];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[collabora.com,intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,arm.com,garyguo.net,protonmail.com,umich.edu,imgtec.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,asahilina.net];
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
X-Rspamd-Queue-Id: 1EAC6411710
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Dec 19, 2025 at 04:35:00PM +0100, Danilo Krummrich wrote:
> On Fri Nov 28, 2025 at 3:14 PM CET, Alice Ryhl wrote:
> > +    /// Returns a [`GpuVmBoObtain`] for the provided GEM object.
> > +    #[inline]
> > +    pub fn obtain(
> > +        &self,
> > +        obj: &T::Object,
> > +        data: impl PinInit<T::VmBoData>,
> > +    ) -> Result<GpuVmBoObtain<T>, AllocError> {
> > +        Ok(GpuVmBoAlloc::new(self, obj, data)?.obtain())
> > +    }
> 
> Does this method make sense? We usually preallocate a VM_BO, then enter the
> fence signalling critical path and then obtain the VM_BO.

Hmm, but there is something tricky here. When do we add it to the extobj
list, then? If we add it before starting the critical path, then we must
also call drm_gpuvm_bo_obtain_prealloc() before starting the critical
path because obtain must happen before drm_gpuvm_bo_extobj_add(). And
adding it to extobj after signalling the fence seems error prone.

And besides, adding it to the extobj list before the critical path
means that we can have drm_gpuvm_exec_lock() lock the new BO without
having to do anything special - it's simply in the extobj list by the
time we call drm_gpuvm_exec_lock().

> > +impl<T: DriverGpuVm> DerefMut for GpuVmCore<T> {
> > +    #[inline]
> > +    fn deref_mut(&mut self) -> &mut T {
> > +        // SAFETY: By the type invariants we may access `core`.
> > +        unsafe { &mut *self.0.core.get() }
> > +    }
> > +}
> 
> Hm..it seems more natural to me to deref to &GpuVm<T> and provide data() and
> data_mut().

That's fair.

> > +impl<T: DriverGpuVm> Drop for GpuVmBoAlloc<T> {
> > +    #[inline]
> > +    fn drop(&mut self) {
> > +        // SAFETY: It's safe to perform a deferred put in any context.
> > +        unsafe { bindings::drm_gpuvm_bo_put_deferred(self.as_raw()) };
> 
> This does not need to be deferred, no?

I think what I *actually* want to call here is

	kref_put(&self->kref, drm_gpuvm_bo_destroy_not_in_lists_kref);

like what drm_gpuvm_bo_obtain_prealloc() does as of the first patch in
this series.

> > +    }
> > +}
> > +
> > +/// A [`GpuVmBo`] object in the GEM list.
> > +///
> > +/// # Invariants
> > +///
> > +/// Points at a `drm_gpuvm_bo` that contains a valid `T::VmBoData` and is present in the gem list.
> > +pub struct GpuVmBoObtain<T: DriverGpuVm>(NonNull<GpuVmBo<T>>);
> 
> How is this different from GpuVmBo? The only object that is not in the GEM list
> should be GpuVmBoAlloc, i.e. the preallocated one.

The difference is whether there is pointer indirection or not.

This type is morally an ARef<GpuVm<T>>, except I don't expose any way
to increment the refcount.

Alice
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
