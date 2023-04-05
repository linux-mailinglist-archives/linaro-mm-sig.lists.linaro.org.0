Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BBB6D7CB2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 14:33:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F34FC3F57A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 12:33:50 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id AA6003EE30
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 12:33:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Kj+iccol;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.42) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5002f12ccfeso43022a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 05:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680698018; x=1683290018;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLn0ogcl0BF5IqyMl3PAUGbH0jpqq1AyfGbugR/InEw=;
        b=Kj+iccolbVQfKM6jZP2rJr6vvKgZMe4H0SxVgfuZYTm3PnXPF0cVqAqxe80FPLqr+F
         L2MfX8A/pL0ohBy6Oshpt/8+orS19AKvmmkHGmmxImCIAvDHKY0BgnTDUZGzcVxDepO9
         EUSOhBxht69OnVyx6WqSCLMw6BX1kJjJ9TuYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680698018; x=1683290018;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mLn0ogcl0BF5IqyMl3PAUGbH0jpqq1AyfGbugR/InEw=;
        b=5o1ISF/ER7PSRsHqE185N/wybr9Gs8Nw1byb2eW8u9LynB7Bx9XW0M2xf+QInpI6j6
         DuebCo+kvOZGgA6VztqGVEZDTZwylt+lWd22MCOZ8w7MuCNk3tx7aezYriZpj9bFz4Xl
         MKzTpqdGrJ6x2Y9PX+kW2Vrdv7ww17/17gE4BIoU/7qRQTLnz/QHHJDwQQCoojin26K7
         y2EuPdq3V0XeNC+HGW5WsnmNR9ASFXXjOU6VyjpBNLHkoSPtT4JdzR34ShqZsVPAEBYF
         A7nKiFgXdmXRWFmwg3XKnu1/NJzQR/ecnZGTeZ89PkKjXYrt76OjJDJleDqSCDk4lUug
         UKkA==
X-Gm-Message-State: AAQBX9c4jgsuFncIg/JrlIXE4Dr8HEPXkkQIVMwmSdpdghSN6ucCSaog
	vvZ9nhLBGsZID7bW8bRIdb69Jg==
X-Google-Smtp-Source: AKy350ZhdduIanzLnwpHgJZbwRaxsW16jBrBpTeCLciV2XUS3BdaanzgWlA2CYXsm/8QSGFPkEXSjA==
X-Received: by 2002:a05:6402:34c8:b0:502:367:d5b8 with SMTP id w8-20020a05640234c800b005020367d5b8mr1906388edc.4.1680698018440;
        Wed, 05 Apr 2023 05:33:38 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id l2-20020a170906938200b00948a57aac08sm3761007ejx.204.2023.04.05.05.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 05:33:37 -0700 (PDT)
Date: Wed, 5 Apr 2023 14:33:35 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Asahi Lina <lina@asahilina.net>
Message-ID: <ZC1qn/VCVpudivh9@phenom.ffwll.local>
Mail-Followup-To: Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Luben Tuikov <luben.tuikov@amd.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Karol Herbst <kherbst@redhat.com>,
	Ella Stanforth <ella@iglunix.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>,
	Mary <mary@mary.zone>, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	linux-sgx@vger.kernel.org, asahi@lists.linux.dev
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-9-917ff5bc80a8@asahilina.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230307-rust-drm-v1-9-917ff5bc80a8@asahilina.net>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AA6003EE30
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:dkim,ffwll.ch:url,mail-ed1-f42.google.com:helo,mail-ed1-f42.google.com:rdns];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: QHQBB272EO7RJZIMBZ3I3IYWQK5ZFD75
X-Message-ID-Hash: QHQBB272EO7RJZIMBZ3I3IYWQK5ZFD75
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asah
 i@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 09/18] rust: drm: syncobj: Add DRM Sync Object abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QHQBB272EO7RJZIMBZ3I3IYWQK5ZFD75/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 07, 2023 at 11:25:34PM +0900, Asahi Lina wrote:
> DRM Sync Objects are a container for a DMA fence, and can be waited on
> signaled, exported, and imported from userspace. Add a Rust abstraction
> so Rust DRM drivers can support this functionality.
> 
> Signed-off-by: Asahi Lina <lina@asahilina.net>
> ---
>  rust/bindings/bindings_helper.h |  1 +
>  rust/helpers.c                  | 19 ++++++++++
>  rust/kernel/drm/mod.rs          |  1 +
>  rust/kernel/drm/syncobj.rs      | 77 +++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 98 insertions(+)
> 
> diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
> index 705af292a5b4..b6696011f3a4 100644
> --- a/rust/bindings/bindings_helper.h
> +++ b/rust/bindings/bindings_helper.h
> @@ -12,6 +12,7 @@
>  #include <drm/drm_gem.h>
>  #include <drm/drm_gem_shmem_helper.h>
>  #include <drm/drm_ioctl.h>
> +#include <drm/drm_syncobj.h>
>  #include <linux/delay.h>
>  #include <linux/device.h>
>  #include <linux/dma-fence.h>
> diff --git a/rust/helpers.c b/rust/helpers.c
> index 8e906a7a7d8a..11965b1e2f4e 100644
> --- a/rust/helpers.c
> +++ b/rust/helpers.c
> @@ -20,6 +20,7 @@
>  
>  #include <drm/drm_gem.h>
>  #include <drm/drm_gem_shmem_helper.h>
> +#include <drm/drm_syncobj.h>
>  #include <linux/bug.h>
>  #include <linux/build_bug.h>
>  #include <linux/device.h>
> @@ -461,6 +462,24 @@ __u64 rust_helper_drm_vma_node_offset_addr(struct drm_vma_offset_node *node)
>  }
>  EXPORT_SYMBOL_GPL(rust_helper_drm_vma_node_offset_addr);
>  
> +void rust_helper_drm_syncobj_get(struct drm_syncobj *obj)
> +{
> +	drm_syncobj_get(obj);
> +}
> +EXPORT_SYMBOL_GPL(rust_helper_drm_syncobj_get);
> +
> +void rust_helper_drm_syncobj_put(struct drm_syncobj *obj)
> +{
> +	drm_syncobj_put(obj);
> +}
> +EXPORT_SYMBOL_GPL(rust_helper_drm_syncobj_put);
> +
> +struct dma_fence *rust_helper_drm_syncobj_fence_get(struct drm_syncobj *syncobj)
> +{
> +	return drm_syncobj_fence_get(syncobj);
> +}
> +EXPORT_SYMBOL_GPL(rust_helper_drm_syncobj_fence_get);
> +
>  #ifdef CONFIG_DRM_GEM_SHMEM_HELPER
>  
>  void rust_helper_drm_gem_shmem_object_free(struct drm_gem_object *obj)
> diff --git a/rust/kernel/drm/mod.rs b/rust/kernel/drm/mod.rs
> index 73fab2dee3af..dae98826edfd 100644
> --- a/rust/kernel/drm/mod.rs
> +++ b/rust/kernel/drm/mod.rs
> @@ -8,3 +8,4 @@ pub mod file;
>  pub mod gem;
>  pub mod ioctl;
>  pub mod mm;
> +pub mod syncobj;
> diff --git a/rust/kernel/drm/syncobj.rs b/rust/kernel/drm/syncobj.rs
> new file mode 100644
> index 000000000000..10eed05eb27a
> --- /dev/null
> +++ b/rust/kernel/drm/syncobj.rs
> @@ -0,0 +1,77 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +
> +//! DRM Sync Objects
> +//!
> +//! C header: [`include/linux/drm/drm_syncobj.h`](../../../../include/linux/drm/drm_syncobj.h)
> +
> +use crate::{bindings, dma_fence::*, drm, error::Result, prelude::*};
> +
> +/// A DRM Sync Object
> +///
> +/// # Invariants
> +/// ptr is a valid pointer to a drm_syncobj and we own a reference to it.
> +pub struct SyncObj {
> +    ptr: *mut bindings::drm_syncobj,
> +}
> +
> +impl SyncObj {
> +    /// Looks up a sync object by its handle for a given `File`.
> +    pub fn lookup_handle(file: &impl drm::file::GenericFile, handle: u32) -> Result<SyncObj> {
> +        // SAFETY: The arguments are all valid per the type invariants.
> +        let ptr = unsafe { bindings::drm_syncobj_find(file.raw() as *mut _, handle) };

Just an aside, but the semantics of this are nasty: You're not allowed to
hold any locks while calling this. We have runtime checks for that (if you
enable lockdep), but I don't see any way to encode that on the rust side
and check it at compile time :-/

> +
> +        if ptr.is_null() {
> +            Err(ENOENT)
> +        } else {
> +            Ok(SyncObj { ptr })
> +        }
> +    }
> +
> +    /// Returns the DMA fence associated with this sync object, if any.
> +    pub fn fence_get(&self) -> Option<Fence> {
> +        let fence = unsafe { bindings::drm_syncobj_fence_get(self.ptr) };
> +        if fence.is_null() {
> +            None
> +        } else {
> +            // SAFETY: The pointer is non-NULL and drm_syncobj_fence_get acquired an
> +            // additional reference.
> +            Some(unsafe { Fence::from_raw(fence) })
> +        }
> +    }
> +
> +    /// Replaces the DMA fence with a new one, or removes it if fence is None.
> +    pub fn replace_fence(&self, fence: Option<&Fence>) {
> +        unsafe {
> +            bindings::drm_syncobj_replace_fence(
> +                self.ptr,
> +                fence.map_or(core::ptr::null_mut(), |a| a.raw()),
> +            )
> +        };
> +    }
> +
> +    /// Adds a new timeline point to the syncobj.
> +    pub fn add_point(&self, chain: FenceChain, fence: &Fence, point: u64) {
> +        // SAFETY: All arguments should be valid per the respective type invariants.
> +        // This takes over the FenceChain ownership.
> +        unsafe { bindings::drm_syncobj_add_point(self.ptr, chain.into_raw(), fence.raw(), point) };
> +    }
> +}
> +
> +impl Drop for SyncObj {
> +    fn drop(&mut self) {
> +        // SAFETY: We own a reference to this syncobj.
> +        unsafe { bindings::drm_syncobj_put(self.ptr) };
> +    }
> +}
> +
> +impl Clone for SyncObj {
> +    fn clone(&self) -> Self {
> +        // SAFETY: `ptr` is valid per the type invariant and we own a reference to it.
> +        unsafe { bindings::drm_syncobj_get(self.ptr) };

So yeah syncobj are refcounted because they're shareable uapi objects (you
can pass them around as fd), but that really should be entirely the
subsystems business, not for drivers.

This is kinda like drm_file, which is also refcounted (by virtue of
hanging of struct file), but the refcounting is entirely handled by the
vfs and all drivers get is a borrowed reference, which nicely bounds the
lifetime to the callback (which is usually an ioctl handler). I think we
want the same semantics for syncobj, because if a driver is hanging onto a
syncobj for longer than the ioctl. If my rust understanding is right we'd
get that by dropping Clone here and relying on lookup_handle only being
able to return stuff that's bound by the drm_file?

People are talking about drivers holding onto syncobj for longer, but I'm
still not sold on the idea that this is any good and doesn't just bend the
dma_fence and syncobj rules a bit too much over the breaking point. For
kernel drivers it really should be just a different way to lookup and
return dma_fence from the ioctl, pretty much matching what you could also
do with sync_file (but since syncobj provides generic compat ioctl to
convert to/from sync_file drivders only need to handle syncobj).
-Daniel


> +        SyncObj { ptr: self.ptr }
> +    }
> +}
> +
> +// SAFETY: drm_syncobj operations are internally locked.
> +unsafe impl Sync for SyncObj {}
> +unsafe impl Send for SyncObj {}
> 
> -- 
> 2.35.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
