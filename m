Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE6fEclmHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:14:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A6262876D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:14:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1BC740991
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:14:47 +0000 (UTC)
Received: from mail-lj1-f201.google.com (mail-lj1-f201.google.com [209.85.208.201])
	by lists.linaro.org (Postfix) with ESMTPS id 86AC63FDAE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 12:16:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=LY9XTkDP;
	spf=pass (lists.linaro.org: domain of 3mOAWagkKDQ0nyvpr4Buyt11tyr.p1zyv0n41-zz-5vtyv565.yv0n41.14t@flex--aliceryhl.bounces.google.com designates 209.85.208.201 as permitted sender) smtp.mailfrom=3mOAWagkKDQ0nyvpr4Buyt11tyr.p1zyv0n41-zz-5vtyv565.yv0n41.14t@flex--aliceryhl.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lj1-f201.google.com with SMTP id 38308e7fff4ca-3940824a47dso4614921fa.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 05:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779884185; x=1780488985; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=3GySeGqKvH9w0k+SKK+eNFV995XnhG9D+usTEWb/rPg=;
        b=LY9XTkDPkEsWLoiTG5DIuqXwnvzlbbbavX6sfdhsZW7tAcz6j9wrNsfoaA8ETGMYjC
         RcEJ99JvspOxq2nlZaINaejQl0OPPXRpKttNnuQVwN/Cw6kbVnIUiKh9gQ0Dx+C684fW
         p5HcfjTQH56R5QGRM5310ojrFIG8YHg072AWF9Drym/J9GwRIY/RXmgTSZ642kFmnRhT
         dVZreXX/NKw+MDeRw4xsNhxLyhg9baSx5InzmbipseRth5LjeSiArbv2SkJSSBKvXNxc
         9z0Itw7JeJhmV6NcN551amQeoeEBpajPVaUP8YqCTKvwQEjH6Z/rUkeWhagEgKPXx0tb
         ki5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779884185; x=1780488985;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3GySeGqKvH9w0k+SKK+eNFV995XnhG9D+usTEWb/rPg=;
        b=LUAWHU/QMuTMx/y7sEBYdihn92Nd8968/hJbGIyr3LwSP8rSGBoCulrwha/r1f9Rb9
         bImv6/YW7OdAOnWtD/t6Hb372U+tsByOMJ8izDqNE/Sq2vEyNde4xFoHOio9APHlHuJv
         KAllmLWWh3bMnVxAJm3bVeHpLGQ3zuAosEfBC6LLI95LBBsz39yohda0E/mKCL7BQZ+d
         j6IRFeHb3n9rfdXVXrBz1AILKUVE5O08iZo+euNL5S6qswIONpafl3YqWp9NRcRtgFv0
         ypCEAi6FYeyZAcUjOJ3vtLcpppBabQvl25effWnIUA/q6DPSbYZZwm5TXyKN/48XG6xP
         T+Qw==
X-Forwarded-Encrypted: i=1; AFNElJ/a1UWVU28TBhaCQN8GeK3a8SYXRaCUVKcjjADGfodajh+X+OzgBLpFQWSb1uF/BcOm5Igu7zMW6cASiXDm@lists.linaro.org
X-Gm-Message-State: AOJu0YxNVocWi46oD7pSrg+W3oRTocraYIc/28s7bzthx4FY4yewTK65
	ypjDk2ES4qf8tXA6u8qhxDB81ehDmwm+0HBGaznRzZW11/yTp+NkK3fPvsrrvdkGdzZ3kj/SfTJ
	L7iKOhAl0ohy6yNnG6A==
X-Received: from ljey13.prod.google.com ([2002:a2e:bb8d:0:b0:393:7fb2:6b5a])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:651c:907:b0:396:c3c:d27e with SMTP id 38308e7fff4ca-3960c3cd3femr45362351fa.12.1779884184566;
 Wed, 27 May 2026 05:16:24 -0700 (PDT)
Date: Wed, 27 May 2026 12:16:23 +0000
In-Reply-To: <20260526212857.1158294-6-lyude@redhat.com>
Mime-Version: 1.0
References: <20260526212857.1158294-1-lyude@redhat.com> <20260526212857.1158294-6-lyude@redhat.com>
Message-ID: <ahbglxo5yePyjE81@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Lyude Paul <lyude@redhat.com>
X-Spamd-Bar: ---
X-MailFrom: 3mOAWagkKDQ0nyvpr4Buyt11tyr.p1zyv0n41-zz-5vtyv565.yv0n41.14t@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DYIMVFKB32I76BZQOB3WYLAH6YGUH3VP
X-Message-ID-Hash: DYIMVFKB32I76BZQOB3WYLAH6YGUH3VP
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:14:33 +0000
CC: dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, Alexandre Courbot <acourbot@nvidia.com>, Gary Guo <gary@garyguo.net>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 5/6] rust: drm: gem/shmem: Add DmaResvGuard helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DYIMVFKB32I76BZQOB3WYLAH6YGUH3VP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[136];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,nvidia.com,garyguo.net,amd.com,lists.linux.dev,kernel.org,linux.intel.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: E4A6262876D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 05:28:56PM -0400, Lyude Paul wrote:
> Just a temporary holdover to make locking/unlocking the dma_resv lock much
> easier.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Co-authored-by: Alexandre Courbot <acourbot@nvidia.com>

Missing SoB for Alexandre.

> ---
>  rust/kernel/drm/gem/shmem.rs | 31 ++++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/rust/kernel/drm/gem/shmem.rs b/rust/kernel/drm/gem/shmem.rs
> index 116ed0a13eac2..1b24cb1129a8b 100644
> --- a/rust/kernel/drm/gem/shmem.rs
> +++ b/rust/kernel/drm/gem/shmem.rs
> @@ -27,7 +27,10 @@
>          Deref,
>          DerefMut, //
>      },
> -    ptr::NonNull,
> +    ptr::{
> +        self,
> +        NonNull, //
> +    },
>  };
>  use gem::{
>      BaseObjectPrivate,
> @@ -233,3 +236,29 @@ impl<T: DriverObject> driver::AllocImpl for Object<T> {
>          dumb_map_offset: None,
>      };
>  }
> +
> +/// Private helper-type for holding the `dma_resv` object for a GEM shmem object.
> +///
> +/// When this is dropped, the `dma_resv` lock is dropped as well.
> +///
> +// TODO: This should be replace with a WwMutex equivalent once we have such bindings in the kernel.
> +struct DmaResvGuard<'a, T: DriverObject>(&'a Object<T>);

Is this missing a NotThreadSafe, or is it safe to unlock on a different
thread than where it was locked?

> +impl<'a, T: DriverObject> DmaResvGuard<'a, T> {
> +    #[inline(always)]
> +    #[expect(unused)]
> +    fn new(obj: &'a Object<T>) -> Self {
> +        // SAFETY: This lock is initialized throughout the lifetime of `object`.
> +        unsafe { bindings::dma_resv_lock(obj.raw_dma_resv(), ptr::null_mut()) };
> +
> +        Self(obj)
> +    }
> +}
> +
> +impl<'a, T: DriverObject> Drop for DmaResvGuard<'a, T> {
> +    #[inline(always)]
> +    fn drop(&mut self) {
> +        // SAFETY: We are releasing the lock grabbed during the creation of this object.
> +        unsafe { bindings::dma_resv_unlock(self.0.raw_dma_resv()) };
> +    }
> +}
> -- 
> 2.54.0
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
