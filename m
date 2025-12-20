Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGZwNpIK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A07E5411717
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:13:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4106446D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:13:05 +0000 (UTC)
Received: from mail-ej1-f73.google.com (mail-ej1-f73.google.com [209.85.218.73])
	by lists.linaro.org (Postfix) with ESMTPS id 14CD83F789
	for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 10:05:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=15ckmB2J;
	spf=pass (lists.linaro.org: domain of 38HRGaQkKDUUhspjly5osnvvnsl.jvtspuhyv-tt-zpnspz0z.spuhyv.vyn@flex--aliceryhl.bounces.google.com designates 209.85.218.73 as permitted sender) smtp.mailfrom=38HRGaQkKDUUhspjly5osnvvnsl.jvtspuhyv-tt-zpnspz0z.spuhyv.vyn@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f73.google.com with SMTP id a640c23a62f3a-b801784f406so308967766b.0
        for <linaro-mm-sig@lists.linaro.org>; Sat, 20 Dec 2025 02:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766225137; x=1766829937; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=+5We+jBO0+cCD3c++ROAWKy2uW8li7ctcnKyzh7ve8o=;
        b=15ckmB2Jo5vXvug30MDQNBSZjBFGDetO+Q3j1JjohfACjXw9mL7y+/PkFchc5cb4RE
         39ImlDXCj4da1HzXph3bEHy7XFKAB5htjjMS7CIh8lr/rwMeKodBkgfe8pKFRR0Xt9S1
         PlWwlopkH8f/xQMb/uREf46EqqhXWHluP0SeUVVRn50viw3eg9FafP0WWIsQOwt0VufF
         ZHRxe4wmi/r7Ptff67dggRWH+KpufnHGh4Cgd1iOBLY67ZSrWCtKv3ySn18cBTYpKAuU
         FxQfToOYvoEtND3sok0yBv5NPjnNAoDl12K5jqHzx/s7qLBSzAYsI/XORt+idoQx7cQb
         7wng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766225137; x=1766829937;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+5We+jBO0+cCD3c++ROAWKy2uW8li7ctcnKyzh7ve8o=;
        b=TETFPbxqV4Ge23BTMOrZnUTvfd6QEWffyHfaMDt5NPb6nmhrvj6LTIgFJ+3Mu1tkze
         oDdPrGNjgULrzuAfT/rvSMKWTtYW7iBg/FqN+5Yl2YBT4laZWPxKYBDBM0uaOlBJKXI0
         UUqvKgsNMTlE78pJ+MGWBoD16CZUz7JtCjSZ8dKSmmTsrYy2DTRmcFAvGKYSyMQq1imt
         RKm2V6XiZQjqHMozXW9QyNdsi5l/hv54y+6iRORKImaseH9c06DZfntRQa5lEkCj/w6l
         StEV84hmPIpFSRq/nBj1fy0Ex3jZQdtyA/iUlIPqf1qxeVtc+XinBHk/Mp0LulUNWSQc
         FThA==
X-Forwarded-Encrypted: i=1; AJvYcCUlAzY3/+XLXFScQbJj/pcSqJZSF+GW2rEtWFZ3wxm58YGIxHRSUnGX13qoV/W8MVzGwz0RyEtqVjZkZxoJ@lists.linaro.org
X-Gm-Message-State: AOJu0YwDXBFyMiGbL/oEGttkoOVA84A7bki00SArAm29xc7nm1FRnCG1
	Wr3cN11ZLly4gfs+nEoxHXsPEB6/tJx/NDpH5nyhRNACh7eShbjVLP9ubDPCTlKc7qZjuqwYn/S
	WSk8JK4VQzjQZ964+Mg==
X-Google-Smtp-Source: AGHT+IH+qbCL3E4KlR/xCuII76jDF4Kk0p12le+sQrE5wjNjdmbXoR9Ff184WWDRAFxJ6twYy7w7Nft4HG28DGY=
X-Received: from edtn6.prod.google.com ([2002:aa7:db46:0:b0:64b:a192:b5])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:907:7814:b0:b80:4141:a470 with SMTP id a640c23a62f3a-b804141a5d5mr252551866b.6.1766225136958;
 Sat, 20 Dec 2025 02:05:36 -0800 (PST)
Date: Sat, 20 Dec 2025 10:05:35 +0000
In-Reply-To: <aUZw4fpWRUWFsb9r@google.com>
Mime-Version: 1.0
References: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
 <20251128-gpuvm-rust-v1-4-ebf66bf234e0@google.com> <DF2AXQ67412G.33JOX2CF0VFCK@kernel.org>
 <aUZw4fpWRUWFsb9r@google.com>
Message-ID: <aUZ07zYew7Mfwc_C@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Danilo Krummrich <dakr@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: 38HRGaQkKDUUhspjly5osnvvnsl.jvtspuhyv-tt-zpnspz0z.spuhyv.vyn@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QXTR7UKOT7VX2VF3X4QNCI6AINTQBIUR
X-Message-ID-Hash: QXTR7UKOT7VX2VF3X4QNCI6AINTQBIUR
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:06 +0000
CC: Daniel Almeida <daniel.almeida@collabora.com>, Matthew Brost <matthew.brost@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Lyude Paul <lyude@
 redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/4] rust: drm: add GPUVM immediate mode abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QXTR7UKOT7VX2VF3X4QNCI6AINTQBIUR/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: A07E5411717
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Dec 20, 2025 at 09:48:17AM +0000, Alice Ryhl wrote:
> On Fri, Dec 19, 2025 at 04:35:00PM +0100, Danilo Krummrich wrote:
> > On Fri Nov 28, 2025 at 3:14 PM CET, Alice Ryhl wrote:
> > > +    /// Returns a [`GpuVmBoObtain`] for the provided GEM object.
> > > +    #[inline]
> > > +    pub fn obtain(
> > > +        &self,
> > > +        obj: &T::Object,
> > > +        data: impl PinInit<T::VmBoData>,
> > > +    ) -> Result<GpuVmBoObtain<T>, AllocError> {
> > > +        Ok(GpuVmBoAlloc::new(self, obj, data)?.obtain())
> > > +    }
> > 
> > Does this method make sense? We usually preallocate a VM_BO, then enter the
> > fence signalling critical path and then obtain the VM_BO.
> 
> Hmm, but there is something tricky here. When do we add it to the extobj
> list, then? If we add it before starting the critical path, then we must
> also call drm_gpuvm_bo_obtain_prealloc() before starting the critical
> path because obtain must happen before drm_gpuvm_bo_extobj_add(). And
> adding it to extobj after signalling the fence seems error prone.
> 
> And besides, adding it to the extobj list before the critical path
> means that we can have drm_gpuvm_exec_lock() lock the new BO without
> having to do anything special - it's simply in the extobj list by the
> time we call drm_gpuvm_exec_lock().
> 
> > > +impl<T: DriverGpuVm> DerefMut for GpuVmCore<T> {
> > > +    #[inline]
> > > +    fn deref_mut(&mut self) -> &mut T {
> > > +        // SAFETY: By the type invariants we may access `core`.
> > > +        unsafe { &mut *self.0.core.get() }
> > > +    }
> > > +}
> > 
> > Hm..it seems more natural to me to deref to &GpuVm<T> and provide data() and
> > data_mut().
> 
> That's fair.
> 
> > > +impl<T: DriverGpuVm> Drop for GpuVmBoAlloc<T> {
> > > +    #[inline]
> > > +    fn drop(&mut self) {
> > > +        // SAFETY: It's safe to perform a deferred put in any context.
> > > +        unsafe { bindings::drm_gpuvm_bo_put_deferred(self.as_raw()) };
> > 
> > This does not need to be deferred, no?
> 
> I think what I *actually* want to call here is
> 
> 	kref_put(&self->kref, drm_gpuvm_bo_destroy_not_in_lists_kref);
> 
> like what drm_gpuvm_bo_obtain_prealloc() does as of the first patch in
> this series.
> 
> > > +    }
> > > +}
> > > +
> > > +/// A [`GpuVmBo`] object in the GEM list.
> > > +///
> > > +/// # Invariants
> > > +///
> > > +/// Points at a `drm_gpuvm_bo` that contains a valid `T::VmBoData` and is present in the gem list.
> > > +pub struct GpuVmBoObtain<T: DriverGpuVm>(NonNull<GpuVmBo<T>>);
> > 
> > How is this different from GpuVmBo? The only object that is not in the GEM list
> > should be GpuVmBoAlloc, i.e. the preallocated one.
> 
> The difference is whether there is pointer indirection or not.
> 
> This type is morally an ARef<GpuVm<T>>, except I don't expose any way
> to increment the refcount.
> 
> Alice
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
