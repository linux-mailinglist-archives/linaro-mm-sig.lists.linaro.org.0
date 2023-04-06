Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCD76D950B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Apr 2023 13:26:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57ED43EA49
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Apr 2023 11:26:03 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id 618223EA49
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Apr 2023 11:25:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=VRl9UtQf;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.45) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-502aa0f24daso126722a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 06 Apr 2023 04:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680780351;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hroPDDqbeK3KP3ft/vk5XXJhx4hlY+C3UjJVTgzuyfY=;
        b=VRl9UtQfF7A9tPxqhu/i6AA4YLuIE9ggXBEL9ZyuchaTkPNo7wuDK+vnz2hQ+0/bPw
         TSIKhRD6SA4Z5er4CXRULeRH39V+Y0WalgcRvaUTx8mpQ0PNTxILEYv9A50gi0EUOKyM
         42dwpNZOXYiJD2zR/Mrh1SlgOPF/McxwSXF90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680780351;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hroPDDqbeK3KP3ft/vk5XXJhx4hlY+C3UjJVTgzuyfY=;
        b=ooDx7JOwxcgHmND4Na+rORKus4ZGAvjGowFTgp2lBQELqzaaSkrOr+1RxtDYB/ybxq
         Q/FftMKyguhqLj4IDDuW+qMiEtHUhj7y0yPTlLC2Xn+LgxXwqyyciVw0M1L64QrjRII5
         h1AwhrtrpN5FNWcTHQ9+s+j5RHhU1pkkGgQ5jo5paG1D+wgxEBurvMZDRfNsYmSIAX18
         9M05rEfcSIATg8SuuChY9M1Dhjd4u1tCFYw+LvarDyUOREGwNzE223j0UrUfFTHhN4Tz
         bdwV5fPboYaEuozAJvRW9JBOgF5PlGwPZfWnj0QgmI7Sss7LJzCL1qtRBMhUlGqyBlGG
         6lYg==
X-Gm-Message-State: AAQBX9fCjCCYgyUDJaNRXG1Xm2Ijn1Fb2NlUmFl1wnw9nM+BLBDH0bpT
	gOVMVRWWtzclMJSFsvvjS9JKfg==
X-Google-Smtp-Source: AKy350YPfn28LG1fbLn36Juw7fvJRCV/Dyp+bOKOoRgXlKhXaL/TLKj7dKKe5UkKfvhy3hU+bF/k9A==
X-Received: by 2002:a17:906:2219:b0:92f:39d9:1e50 with SMTP id s25-20020a170906221900b0092f39d91e50mr4936235ejs.3.1680780351274;
        Thu, 06 Apr 2023 04:25:51 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id p14-20020a1709061b4e00b00930a4e5b46bsm672302ejg.211.2023.04.06.04.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 04:25:50 -0700 (PDT)
Date: Thu, 6 Apr 2023 13:25:48 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Asahi Lina <lina@asahilina.net>
Message-ID: <ZC6sPBuH3vz7vMO2@phenom.ffwll.local>
Mail-Followup-To: Asahi Lina <lina@asahilina.net>,
	David Airlie <airlied@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Miguel Ojeda <ojeda@kernel.org>,
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
 <20230307-rust-drm-v1-18-917ff5bc80a8@asahilina.net>
 <ZC2JPR3fGm0uE9yW@phenom.ffwll.local>
 <6200f93d-6d95-5d03-cc1c-22d7924d66eb@asahilina.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6200f93d-6d95-5d03-cc1c-22d7924d66eb@asahilina.net>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 618223EA49
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	DMARC_NA(0.00)[ffwll.ch];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.45:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: YC4AOGGVDCBM6HGUVZFFTFIBSZQHHU5Q
X-Message-ID-Hash: YC4AOGGVDCBM6HGUVZFFTFIBSZQHHU5Q
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 18/18] drm/asahi: Add the Asahi driver for Apple AGX GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YC4AOGGVDCBM6HGUVZFFTFIBSZQHHU5Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Apr 06, 2023 at 02:02:55PM +0900, Asahi Lina wrote:
> On 05/04/2023 23.44, Daniel Vetter wrote:
> > On Tue, Mar 07, 2023 at 11:25:43PM +0900, Asahi Lina wrote:
> > > +/// Look up a GEM object handle for a `File` and return an `ObjectRef` for it.
> > > +pub(crate) fn lookup_handle(file: &DrmFile, handle: u32) -> Result<ObjectRef> {
> > > +    Ok(ObjectRef::new(shmem::Object::lookup_handle(file, handle)?))
> > > +}
> > 
> > So maybe my expectations for rust typing is a bit too much, but I kinda
> > expected this to be fully generic:
> > 
> > - trait Driver (drm_driver) knows the driver's object type
> > - a generic create_handle function could ensure that for drm_file (which
> >    is always for a specific drm_device and hence Driver) can ensure at the
> >    type level that you only put the right objects into the drm_file
> > - a generic lookup_handle function on the drm_file knows the Driver trait
> >    and so can give you back the right type right away.
> > 
> > Why the wrapping, what do I miss?
> 
> Sigh, so this is one of the many ways I'm trying to work around the "Rust
> doesn't do subclasses" problem (so we can figure out what the best one is
> ^^).
> 
> The generic shmem::Object::lookup_handle() call *is* fully generic and will
> get you back a driver-specific object. But since Rust doesn't do
> subclassing, what you get back isn't a driver-specific type T, but rather a
> (reference to a) shmem::Object<T>. T represents the inner driver-specific
> data/functionality (only), and the outer shmem::Object<T> includes the
> actual drm_gem_shmem_object plus a T. This is backwards from C, where you
> expect the opposite situation where T contains a shmem object, but that just
> doesn't work with Rust because there's no way to build a safe API around
> that model as far as I know.

Ah I think I just got confused. I did untangle (I think at least) the
Object<T> trick, I guess the only thing that confused me here is why this
is in the shmem module? Or is that the rust problem again?

I'd kinda have expected that we'd have a gem::Object<T> here that the
lookup_handle function returns. So for the shmem case I guess that would
then be gem::Object<shmem::Object<T>> for the driver type T with driver
specific stuff? I guess not very pretty ...

> Now the problem is from the higher layers I want object operations that
> interact with the shmem::Object<T> (that is, they call generic GEM functions
> on the object). Options so far:
> 
> 1. Add an outer wrapper and put that functionality there.
> 2. Just have the functions on T as helpers, so you need to call T::foo(obj)
> instead of obj.foo().
> 3. Use the undocumented method receiver trait thing to make shmem::Object<T>
> a valid `self` type, plus add auto-Deref to shmem::Object. Then obj.foo()
> works.
> 
> #1 is what I use here. #2 is how the driver-specific File ioctl callbacks
> are implemented, and also sched::Job<T>. #3 is used for fence callbacks
> (FenceObject<T>). None of them are great, and I'd love to hear what people
> think of the various options...
> 
> There are other unexplored options, like in this GEM case it could be
> covered with a driver-internal auxiliary trait impl'd on shmem::Object<T>
> buuut that doesn't work when you actually need callbacks on T itself to
> circle back to shmem::Object<T>, as is the case with File/Job/FenceObject.

Ok I think I'm completely lost here. But I also havent' looked at how this
is all really used in the driver, it's really just the shmem:: module in
the lookup_handle function which looked strange to me.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
hvettp://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
