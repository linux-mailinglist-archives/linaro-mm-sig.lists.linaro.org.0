Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C0D6D7FD3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 16:44:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3C503F49E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 14:44:26 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id AF0753EA3E
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 14:44:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=UJzXtPPw;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.42) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5029d4d90fbso63429a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 07:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680705855; x=1683297855;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9lLnJ1+P3Iu2mYgt/o+7cyTWl5Q1ydZ9Nz1cnrQ5Nmc=;
        b=UJzXtPPwq73Eu+NmBlgfXI9JxlVitZ4kXrO0pETGtZxMEVTi1y5WaveTdET9Z1qul9
         Rq1swKdnVflb+zz6G7f5yZdKkLbBRw/SLhrRIHaGaQOz0gUUHsYs1b1srMn29K4/4HYD
         j+tBSrvp2UABDduixiEjXDgqUUDvyx/FKcfCE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680705855; x=1683297855;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9lLnJ1+P3Iu2mYgt/o+7cyTWl5Q1ydZ9Nz1cnrQ5Nmc=;
        b=PMU4RdcoOifQZCF373hHdHu/HTzrZ0grBVv9AGHDy5mWBn11KQ5UsVA52zXsgGVyxl
         jGlAz4U/3KarJGc0MenZ/KjWRQLen9vmHHFumM8HATnhT7XTBYEHGR3/D+SmSI5R1BJn
         gFy8QB5y3WztFuk9VTahnrEktrR6nICO5u4qInKx3HA4VlG0eapnPj7J5BW34eNEgSA9
         9wNHfKoEgQ3qzWtinUmBPP4ctITKOFFeWmTKQoko1CgFfTy1TZ7iGMAlp8ODF296W0iC
         VF0+tMMZLDXcrOGK5fk0AprMDusnwyGoIqnGm7uK5w/Tbb0egl4/Ob9LjlSaC+jU6tom
         /LGw==
X-Gm-Message-State: AAQBX9eqaRbC7b2WykVH0EPRBi6bPowH4HmS0Nl8U9XHd3FqbNC69Vbh
	3z6plH9SXoZa7IurDKg8sXUk3A==
X-Google-Smtp-Source: AKy350bDxZoWmLNeFdkBJ8tM2X67oz1ppfs8T2swdma6bs6jcrru0HiaIH7cchQxIu2ClUv18HSI+A==
X-Received: by 2002:a05:6402:268e:b0:502:ffd:74a1 with SMTP id w14-20020a056402268e00b005020ffd74a1mr2119026edd.2.1680705855694;
        Wed, 05 Apr 2023 07:44:15 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id l2-20020a50c102000000b004fa012332ecsm7403362edf.1.2023.04.05.07.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 07:44:15 -0700 (PDT)
Date: Wed, 5 Apr 2023 16:44:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Asahi Lina <lina@asahilina.net>
Message-ID: <ZC2JPR3fGm0uE9yW@phenom.ffwll.local>
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
 <20230307-rust-drm-v1-18-917ff5bc80a8@asahilina.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230307-rust-drm-v1-18-917ff5bc80a8@asahilina.net>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AF0753EA3E
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	URIBL_BLOCKED(0.00)[ffwll.ch:dkim,ffwll.ch:url,mail-ed1-f42.google.com:helo,mail-ed1-f42.google.com:rdns];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: QE2ZQCFLLHE2EFU45VRGMHE52XMRVZUY
X-Message-ID-Hash: QE2ZQCFLLHE2EFU45VRGMHE52XMRVZUY
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asah
 i@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 18/18] drm/asahi: Add the Asahi driver for Apple AGX GPUs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QE2ZQCFLLHE2EFU45VRGMHE52XMRVZUY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 07, 2023 at 11:25:43PM +0900, Asahi Lina wrote:
> +/// Look up a GEM object handle for a `File` and return an `ObjectRef` for it.
> +pub(crate) fn lookup_handle(file: &DrmFile, handle: u32) -> Result<ObjectRef> {
> +    Ok(ObjectRef::new(shmem::Object::lookup_handle(file, handle)?))
> +}

So maybe my expectations for rust typing is a bit too much, but I kinda
expected this to be fully generic:

- trait Driver (drm_driver) knows the driver's object type
- a generic create_handle function could ensure that for drm_file (which
  is always for a specific drm_device and hence Driver) can ensure at the
  type level that you only put the right objects into the drm_file
- a generic lookup_handle function on the drm_file knows the Driver trait
  and so can give you back the right type right away.

Why the wrapping, what do I miss?
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
