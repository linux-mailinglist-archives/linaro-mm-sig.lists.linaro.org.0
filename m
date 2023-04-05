Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CCE6D7B36
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 13:25:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACF2C3F702
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 11:25:44 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by lists.linaro.org (Postfix) with ESMTPS id 144DE3F045
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 11:25:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Ymp6rk8v;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.50) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5002f12ccfeso33302a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 04:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680693930; x=1683285930;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AI1amrbU+WuMTPC0ykU/yn27gLgJaltOCzBzxnZuJf0=;
        b=Ymp6rk8v2u3OJbN1zV0ew8BHZ1sbkm4R4Gygk5vo82Y3wq3VY+2aG2MiolldPOHfx7
         nRWiAHDn01FaCoo7mJR7Kgel8lqTeDmjveazh+XNAC5zGNhBue2LD/6NRIUo/bokLy9V
         xzUcMUdH7MjuaRr9GYy82N93fJGeemmJ8C3Zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680693930; x=1683285930;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AI1amrbU+WuMTPC0ykU/yn27gLgJaltOCzBzxnZuJf0=;
        b=Kdn4qcg/AYTdQNo1MIc4JGQ8wK22FiMB1+Cn1yXC6Z1uUPXW+yUVZr8oUoMYTs9Hs0
         ZB2UHWczCMPTl78uGAO3YVtkflyneW8iRbYhqSDbkfCz0oTI2TreqtWQOJm6rC5H+4vJ
         5hpuZszm1pNuc1JWkXnUspdu9UrpFpuPPG5CTIICLG6JFkifw70hbQv58RtpcMhQjBVL
         0h8dF4u/hiskGMmFa8BoAmsItIEj+2H3jDm2YyAg5UQRm1yzilZ0Ptn2XrWZO06e2DNA
         kNShz6qse/cYC2CWdz9mfID4xkXi62VTBoFDSG3u3DD1l7BLOWPphptFPJI79NZBe/AE
         jPYw==
X-Gm-Message-State: AAQBX9emUj3uYee0yYQs0Jb5OAsinXd/Qrqoida3obXMqCCs82w1SX28
	oQonQ15bETNfxBZukB0W5qR6pw==
X-Google-Smtp-Source: AKy350YMIxVALMDJBM6lXvvVAzSNI3yHL9CytARStBLWeQHTXaiLkniLmQrCeaI/y67kRaMd6y1gdQ==
X-Received: by 2002:a05:6402:d0e:b0:502:e50:3358 with SMTP id eb14-20020a0564020d0e00b005020e503358mr1579402edb.3.1680693929873;
        Wed, 05 Apr 2023 04:25:29 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id z21-20020a056402275500b00501d73cfc86sm7091936edd.9.2023.04.05.04.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 04:25:29 -0700 (PDT)
Date: Wed, 5 Apr 2023 13:25:26 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Boqun Feng <boqun.feng@gmail.com>
Message-ID: <ZC1apgO6Aci6J+nS@phenom.ffwll.local>
Mail-Followup-To: Boqun Feng <boqun.feng@gmail.com>,
	Faith Ekstrand <faith.ekstrand@collabora.com>,
	Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Luben Tuikov <luben.tuikov@amd.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Karol Herbst <kherbst@redhat.com>,
	Ella Stanforth <ella@iglunix.org>, Mary <mary@mary.zone>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org,
	asahi@lists.linux.dev
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-3-917ff5bc80a8@asahilina.net>
 <9ba89e97155400fb379f5101ccb8960d0bcbc025.camel@collabora.com>
 <28fa3f97-4c7c-212e-2be2-fb1c05f7f576@asahilina.net>
 <5a0db63c043adc47b289b3f1d22935a0a63c926e.camel@collabora.com>
 <ZA/WzQj97lI2rNeK@boqun-archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZA/WzQj97lI2rNeK@boqun-archlinux>
X-Operating-System: Linux phenom 6.1.0-7-amd64
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 144DE3F045
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[collabora.com,asahilina.net,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.50:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: D2Y6EFWYZ3ASDRMTDGEBX24U6TGGO3T7
X-Message-ID-Hash: D2Y6EFWYZ3ASDRMTDGEBX24U6TGGO3T7
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Faith Ekstrand <faith.ekstrand@collabora.com>, Asahi Lina <lina@asahilina.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@
 lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 03/18] rust: drm: file: Add File abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D2Y6EFWYZ3ASDRMTDGEBX24U6TGGO3T7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 13, 2023 at 07:07:09PM -0700, Boqun Feng wrote:
> On Mon, Mar 13, 2023 at 12:49:57PM -0500, Faith Ekstrand wrote:
> > On Fri, 2023-03-10 at 07:16 +0900, Asahi Lina wrote:
> > > On 10/03/2023 06.16, Faith Ekstrand wrote:
> > > > On Tue, 2023-03-07 at 23:25 +0900, Asahi Lina wrote:
> > > > > A DRM File is the DRM counterpart to a kernel file structure,
> > > > > representing an open DRM file descriptor. Add a Rust abstraction
> > > > > to
> > > > > allow drivers to implement their own File types that implement
> > > > > the
> > > > > DriverFile trait.
> > > > >=20
> > > > > Signed-off-by: Asahi Lina <lina@asahilina.net>
> > > > > ---
> > > > > =A0rust/bindings/bindings_helper.h |=A0=A0 1 +
> > > > > =A0rust/kernel/drm/drv.rs=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 7 ++-
> > > > > =A0rust/kernel/drm/file.rs=A0=A0=A0=A0=A0=A0=A0=A0 | 113
> > > > > ++++++++++++++++++++++++++++++++++++++++
> > > > > =A0rust/kernel/drm/mod.rs=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0=A0 1 +
> > > > > =A04 files changed, 120 insertions(+), 2 deletions(-)
> > > > >=20
> > > > > diff --git a/rust/bindings/bindings_helper.h
> > > > > b/rust/bindings/bindings_helper.h
> > > > > index 2a999138c4ae..7d7828faf89c 100644
> > > > > --- a/rust/bindings/bindings_helper.h
> > > > > +++ b/rust/bindings/bindings_helper.h
> > > > > @@ -8,6 +8,7 @@
> > > > > =A0
> > > > > =A0#include <drm/drm_device.h>
> > > > > =A0#include <drm/drm_drv.h>
> > > > > +#include <drm/drm_file.h>
> > > > > =A0#include <drm/drm_ioctl.h>
> > > > > =A0#include <linux/delay.h>
> > > > > =A0#include <linux/device.h>
> > > > > diff --git a/rust/kernel/drm/drv.rs b/rust/kernel/drm/drv.rs
> > > > > index 29a465515dc9..1dcb651e1417 100644
> > > > > --- a/rust/kernel/drm/drv.rs
> > > > > +++ b/rust/kernel/drm/drv.rs
> > > > > @@ -144,6 +144,9 @@ pub trait Driver {
> > > > > =A0=A0=A0=A0 /// Should be either `drm::gem::Object<T>` or
> > > > > `drm::gem::shmem::Object<T>`.
> > > > > =A0=A0=A0=A0 type Object: AllocImpl;
> > > > > =A0
> > > > > +=A0=A0=A0 /// The type used to represent a DRM File (client)
> > > > > +=A0=A0=A0 type File: drm::file::DriverFile;
> > > > > +
> > > > > =A0=A0=A0=A0 /// Driver metadata
> > > > > =A0=A0=A0=A0 const INFO: DriverInfo;
> > > > > =A0
> > > > > @@ -213,8 +216,8 @@ macro_rules! drm_device_register {
> > > > > =A0impl<T: Driver> Registration<T> {
> > > > > =A0=A0=A0=A0 const VTABLE: bindings::drm_driver =3D drm_legacy_fi=
elds! {
> > > > > =A0=A0=A0=A0=A0=A0=A0=A0 load: None,
> > > > > -=A0=A0=A0=A0=A0=A0=A0 open: None, // TODO: File abstraction
> > > > > -=A0=A0=A0=A0=A0=A0=A0 postclose: None, // TODO: File abstraction
> > > > > +=A0=A0=A0=A0=A0=A0=A0 open: Some(drm::file::open_callback::<T::F=
ile>),
> > > > > +=A0=A0=A0=A0=A0=A0=A0 postclose:
> > > > > Some(drm::file::postclose_callback::<T::File>),
> > > > > =A0=A0=A0=A0=A0=A0=A0=A0 lastclose: None,
> > > > > =A0=A0=A0=A0=A0=A0=A0=A0 unload: None,
> > > > > =A0=A0=A0=A0=A0=A0=A0=A0 release: None,
> > > > > diff --git a/rust/kernel/drm/file.rs b/rust/kernel/drm/file.rs
> > > > > new file mode 100644
> > > > > index 000000000000..48751e93c38a
> > > > > --- /dev/null
> > > > > +++ b/rust/kernel/drm/file.rs
> > > > > @@ -0,0 +1,113 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0 OR MIT
> > > > > +
> > > > > +//! DRM File objects.
> > > > > +//!
> > > > > +//! C header:
> > > > > [`include/linux/drm/drm_file.h`](../../../../include/linux/drm/dr
> > > > > m_fi
> > > > > le.h)
> > > > > +
> > > > > +use crate::{bindings, drm, error::Result};
> > > > > +use alloc::boxed::Box;
> > > > > +use core::marker::PhantomData;
> > > > > +use core::ops::Deref;
> > > > > +
> > > > > +/// Trait that must be implemented by DRM drivers to represent a
> > > > > DRM
> > > > > File (a client instance).
> > > > > +pub trait DriverFile {
> > > > > +=A0=A0=A0 /// The parent `Driver` implementation for this
> > > > > `DriverFile`.
> > > > > +=A0=A0=A0 type Driver: drm::drv::Driver;
> > > > > +
> > > > > +=A0=A0=A0 /// Open a new file (called when a client opens the DRM
> > > > > device).
> > > > > +=A0=A0=A0 fn open(device: &drm::device::Device<Self::Driver>) ->
> > > > > Result<Box<Self>>;
> > > > > +}
> > > > > +
> > > > > +/// An open DRM File.
> > > > > +///
> > > > > +/// # Invariants
> > > > > +/// `raw` is a valid pointer to a `drm_file` struct.
> > > > > +#[repr(transparent)]
> > > > > +pub struct File<T: DriverFile> {
> > > > > +=A0=A0=A0 raw: *mut bindings::drm_file,
> > > > > +=A0=A0=A0 _p: PhantomData<T>,
> > > > > +}
> > > > > +
> > > > > +pub(super) unsafe extern "C" fn open_callback<T: DriverFile>(
> > > > > +=A0=A0=A0 raw_dev: *mut bindings::drm_device,
> > > > > +=A0=A0=A0 raw_file: *mut bindings::drm_file,
> > > > > +) -> core::ffi::c_int {
> > > > > +=A0=A0=A0 let drm =3D core::mem::ManuallyDrop::new(unsafe {
> > > > > drm::device::Device::from_raw(raw_dev) });
> > > >=20
> > > > Maybe you can help educate me a bit here... This feels like a
> > > > really
> > > > sketchy pattern.=A0 We're creating a Device from a pointer, an
> > > > operation
> > > > which inherently consumes a reference but then marking it
> > > > ManuallyDrop
> > > > so drm_device_put() never gets called.=A0 It took me a while but I
> > > > think
> > > > I figured out what you're trying to do: Make it so all the Rust
> > > > stuff
> > > > works with Device, not drm_device but it still feels really wrong.=
=A0
> > > > It
> > > > works, it just feels like there's a lot of unsafe abstraction
> > > > juggling
> > > > happening here and I expect this operation is going to be pretty
> > > > common
> > > > in the Rust abstraction layer.
> > >=20
> > > So I think this is going to be a pretty common pattern in this kind
> > > of
> > > abstraction. The problem is that, of course, in C there is no
> > > distinction between an owned reference and a borrowed one. Here we
> > > have
> > > a borrowed reference to a struct drm_device, and we need to turn it
> > > into
> > > a &Device (which is the Rust equivalent type). But for &Device to
> > > exist
> > > we need a Device to exist in the first place, and Device normally
> > > implies ownership of the underlying drm_device.
> >=20
> > Thanks! Putting it in terms of borrow really helps clear up the
> > difference.
> >=20
> > > We could just acquire a reference here, but then we're needlessly
> > > grabbing a ref only to drop it at the end of the function, which is
> > > pointless when the caller is holding another reference for us while
> > > the
> > > callback runs. And of course Rust likes to claim to offer zero-cost
> > > abstractions, so it would be kind of sad to have to do that... ^^
> >=20
> > Yeah, I agree we don't want to take extra references.
> >=20
> > > Just doing drm::device::Device::from_raw(raw_dev) is a ticking time
> > > bomb, because we haven't acquired a reference (which would normally
> > > be
> > > required). If that Device ever gets dropped, we've messed up the
> > > refcounting and stolen the caller's reference. We could try to ensure
> > > it
> > > gets passed to core::mem::forget in all paths out, but that gets
> > > error-prone very quickly when trying to cover error paths. So
> > > instead,
> > > we put it into a ManuallyDrop. That takes care of neutering the ref
> > > drop, so we don't have to worry about messing that up. Then the only
> > > remaining safety requirement is that that the ManuallyDrop<Device>
> > > never
> > > escape the callback function, and that's easy to ensure: we only pass
> > > a
> > > &ref to the user (which via auto-deref ends up being a &Device), and
> > > then nothing bad can happen. If the user wants an owned reference to
> > > the
> > > device to keep around, they can call .clone() on it and that's when
> > > the
> > > incref happens.
> > >=20
> > > Basically, ManuallyDrop<T> where T is a reference counted type
> > > represents a borrowed reference to a T coming from the C side. You
> > > can
> > > see another use of this pattern in gem::Object, which contains a
> > > ManuallyDrop<Device> that represents a borrowed reference to the
> > > device
> > > that owns that object. The DRM core (as far as I know!) guarantees
> > > that
> > > DRM devices outlive all of their GEM objects, so we can materialize a
> > > borrowed reference and as long as it never leaves the GEM object, it
> > > will be sound. Then we can take &Device references from it whenever
> > > we
> > > want, and the usual Rust borrow checker rules ensure we can't do
> > > something illegal.
> >=20
> > Ok, that all matches my understanding of what I thought was going on. I
> > do wonder if it would be good to wrap this up in a
> >=20
> > struct DeviceBorrow {
> >    dev: ManuallyDrop<Device>
> > }
> >=20
> > impl DeviceBorrow {
> >    pub unsafe fn from_raw(*mut bindings::drm_device) -> DeviceBorrow;
> > }
> >=20
> > impl Deref<Device> for DeviceBorrow {
> >    ...
> > }
> >=20
> > with documentation, etc.  Seeing a ManuallyDrop which is never dropped
> > sets my rust senses tingling.  Maybe that's too much typing for each
> > object?  I don't want to add a bunch of extra work but this seems like
> > a pretty common pattern we're going to hit everywhere.
> >=20
>=20
> I just want to mention, there is a different way to do the abstraction
> here:
>=20
> similar to https://lore.kernel.org/rust-for-linux/ZA9l0EHCRRr%2Fmyoq@boqu=
n-archlinux
>=20
> * Define Device as tranparent represention of struct drm_device:
>=20
> 	#[repr(transparent)]
> 	struct Device(Opaque<bindings::drm_device>);
>=20
> * impl `AlwaysRefCounted`[1] for `Device`, therefore we can use
>   `ARef<Device>`[2] as a smart pointer to `drm_device`.
>=20
> * drm_device related methods are still implemented in `impl Device`
>=20
> * In `open_callback`, we can just get a `&Device` from `*mut
>   bindings::drm_device` unsafely, and that's all. Or introduce a helper
>   function if we want:
>=20
>     pub unsafe fn with_device<F>(ptr: *mut drm_device, f: F) -> Result
>     where
>       F: FnOnce(&Device) -> Result
>     {
>     	let d =3D unsafe { &*ptr };
> 	f(d)
>     }
>=20
> The main difference is that we now treat a pointer to drm_device as a
> reference to the device, not the owner.
>=20
> It seems we need to also change our driver/device framework to use this
> approach, but it looks better to me.

So I really don't have enough rust clue to have any useful opinion on how
the glue should look like, but semantically the struct drm_file should
only ever be borrowed as a parameter to a driver hook, so that rust can
guarantee that the driver doesn't do anything funny and uses it beyond the
end of that function. This holds for all the callbacks like open/close or
also all the ioctl.

The other semantic thing is that that the ioctls should be able to rely on
open having fully constructed the thing. I think the trait and dependent
type stuff ensure that?

What I've missed (but maybe just looked in the wrong place) is that the
ioctl support (and really anything else where the driver gets a struct
drm_file on the C side, but I don't think there is anything else) should
also make sure you get the right driver-specific type and not something
else.

I did notice the FIXME in the first patch, I guess if it makes
landing all this easier we could also keep this as a todo item to improve
once things landed. That btw holds for a lot of the big "how to map
semantics correctly to rust" questions I'm throwing up here. Maybe a
Documentation/gpu/rust.rst file would be good to include, with these todo
items noted instead of just FIXME sprinkled in patches? At least for
things that will take more effort to polish.
-Daniel


>=20
> Regards,
> Boqun
>=20
> [1]: https://rust-for-linux.github.io/docs/kernel/trait.AlwaysRefCounted.=
html
> [2]: https://rust-for-linux.github.io/docs/kernel/struct.ARef.html
>=20
> > ~Faith

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
