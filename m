Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B00A6C42CE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:16:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EFB244795
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:16:39 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by lists.linaro.org (Postfix) with ESMTPS id 2EA423EE23
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Mar 2023 05:41:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=JCrmDH75;
	spf=pass (lists.linaro.org: domain of boqun.feng@gmail.com designates 209.85.160.173 as permitted sender) smtp.mailfrom=boqun.feng@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id s12so8101208qtq.11
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Mar 2023 21:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678513266;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:feedback-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hBnbrHjdJqCycEaPHLF3SoWIQqolVe0vVU3sGJzdcqg=;
        b=JCrmDH75MWI6C4BQ6Nt6hJet7wA8eJiW8PPfMZAOC9Eb0zicSw4iJgBXqGFl4tbd07
         kSBQhixAf+a1xmDOjNKCmPKrl6L0jyPy/MOtfMx9LA76vw9NYif240OF35sL3cMAdrB9
         20UyOpDx/F6mf8b3T23HfOV7LfqSH7uVgI6mrf8fs1Q0T6nbzCSt+bd7gdRZXbXoB6nN
         Oag00Y1PIbB6zIzFq+TWAH9VD4h1Ew4SVDYx0dtZxHQwgF/P2YuoacOmlGijGey0sRgp
         pH3r+gp3XuwduyRHF4szq8xbf7fCxHENdRJr7mQhhZD/4GVsssboE4kBk98s6xNoZW7g
         2BkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678513266;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:feedback-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hBnbrHjdJqCycEaPHLF3SoWIQqolVe0vVU3sGJzdcqg=;
        b=iA1bpf300RsiWE8ljNwa1sXVVgQ9mAWWG6HTUdy+lkkgH81FqHqav/ne3aZPoOY68R
         e+jJKfL3h0hHdA/Le7Gu5PRKPfNVkD7643MznaHvFRznzR2zuzWPRBGEYD/TDvSbU4+I
         IhOKbspElw+lR/F+eQG7919GEcNt9G+H+J4kWfPouIPlTODW8lhYHnrQqTdKcwBlr2CZ
         hi9hHxUBKjmkj0swE8EEUKPDBfS2mDJzTmx14KgXoVGQJl6sIdPmaM36+Ut6BjTEZTrQ
         zAuYlUsRTBWuvoAmmtdr1m7P8piY5JpI79YQ8WDkw7iV7AFB6uexVm6bxtvEDclVnyiA
         ZaYg==
X-Gm-Message-State: AO0yUKW/4MrsvnDPbTylJGVdE/f80DlO2Ev0b3g/fVdXyiCk4FcrwaUo
	jndMOCxT7kvTj0K8vBPjnbc=
X-Google-Smtp-Source: AK7set/plVrigjnAHyTng8mFOgTpletal/lAWhwq8z+Al90Y9yMeAfybv5E81mH4i9EeLrrAFNPPTg==
X-Received: by 2002:a05:622a:182a:b0:3bf:cd42:7724 with SMTP id t42-20020a05622a182a00b003bfcd427724mr49636710qtc.11.1678513265735;
        Fri, 10 Mar 2023 21:41:05 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com. [66.111.4.227])
        by smtp.gmail.com with ESMTPSA id h9-20020ac85e09000000b003ba2a15f93dsm1381649qtx.26.2023.03.10.21.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 21:41:05 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailauth.nyi.internal (Postfix) with ESMTP id 799A327C0054;
	Sat, 11 Mar 2023 00:41:04 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Sat, 11 Mar 2023 00:41:04 -0500
X-ME-Sender: <xms:bhQMZBfymQwN8rpPD2I7inos-RmgCfUvR91xgSJj-Px65DbLzROxRw>
    <xme:bhQMZPPZNhTZ8fqeWdzBYxy5q3nKRCA6MQ5bTsT0vdKXySaD6SMOcUY2A4GfVaF4R
    P1aXaOiW7idfkQaVA>
X-ME-Received: <xmr:bhQMZKh2j4CRc34OgSzc7zD9IHg1IyreWKH49AqSiafOVd15IptlpyxDJn0CFxLtXFlRxuXA21Fntiq7r8iDpGS0_h8QDVZr72c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdduledgkeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepuehoqhhu
    nhcuhfgvnhhguceosghoqhhunhdrfhgvnhhgsehgmhgrihhlrdgtohhmqeenucggtffrrg
    htthgvrhhnpeefuddvvdelieeguefgveffvdffudeiueejiedvudfhleejgefhgeffveff
    hfekffenucffohhmrghinhepphhtrhdruggvvhenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhnodhmvghsmhhtphgruhhthhhpvghr
    shhonhgrlhhithihqdeiledvgeehtdeigedqudejjeekheehhedvqdgsohhquhhnrdhfvg
    hngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhnrghmvg
X-ME-Proxy: <xmx:bhQMZK_hc_mxP2PBVZaKsvEYZbv5qnMolvIg5gNaCSbqHa6VYq2CbQ>
    <xmx:bhQMZNsVsl6HnB3_XXn1BcSra2Nh0ZQsFKDSptGHjauurJofQj_idQ>
    <xmx:bhQMZJGsQOI_bpjrAdFslcuZpUS4v9HbNv-4iPwrqzy7x9s5B1Mw2g>
    <xmx:cBQMZNd1EQ9WNauHj_wI5NjKkSljOiZ_2aFgNwPO5npgKD1jkWbpdQ>
Feedback-ID: iad51458e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 11 Mar 2023 00:41:02 -0500 (EST)
Date: Fri, 10 Mar 2023 21:41:00 -0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Asahi Lina <lina@asahilina.net>
Message-ID: <ZAwUbAWvPt9aavXp@Boquns-Mac-mini.local>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-2-917ff5bc80a8@asahilina.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230307-rust-drm-v1-2-917ff5bc80a8@asahilina.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2EA423EE23
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.173:from];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: boqun.feng@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H6EUZIFKMKSS2M4UGWDN2BHNTKWH3LDH
X-Message-ID-Hash: H6EUZIFKMKSS2M4UGWDN2BHNTKWH3LDH
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:16:29 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 02/18] rust: drm: Add Device and Driver abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H6EUZIFKMKSS2M4UGWDN2BHNTKWH3LDH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 07, 2023 at 11:25:27PM +0900, Asahi Lina wrote:
> Add the initial abstractions for DRM drivers and devices. These go
> together in one commit since they are fairly tightly coupled types.
> 
> A few things have been stubbed out, to be implemented as further bits of
> the DRM subsystem are introduced.
> 
> Signed-off-by: Asahi Lina <lina@asahilina.net>
> ---
>  rust/bindings/bindings_helper.h |   3 +
>  rust/kernel/drm/device.rs       |  76 +++++++++
>  rust/kernel/drm/drv.rs          | 339 ++++++++++++++++++++++++++++++++++++++++
>  rust/kernel/drm/mod.rs          |   2 +
>  4 files changed, 420 insertions(+)
> 
> diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_helper.h
> index 2687bef1676f..2a999138c4ae 100644
> --- a/rust/bindings/bindings_helper.h
> +++ b/rust/bindings/bindings_helper.h
> @@ -6,10 +6,13 @@
>   * Sorted alphabetically.
>   */
>  
> +#include <drm/drm_device.h>
> +#include <drm/drm_drv.h>
>  #include <drm/drm_ioctl.h>
>  #include <linux/delay.h>
>  #include <linux/device.h>
>  #include <linux/dma-mapping.h>
> +#include <linux/fs.h>
>  #include <linux/ioctl.h>
>  #include <linux/io-pgtable.h>
>  #include <linux/ktime.h>
> diff --git a/rust/kernel/drm/device.rs b/rust/kernel/drm/device.rs
> new file mode 100644
> index 000000000000..6007f941137a
> --- /dev/null
> +++ b/rust/kernel/drm/device.rs
> @@ -0,0 +1,76 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +
> +//! DRM device.
> +//!
> +//! C header: [`include/linux/drm/drm_device.h`](../../../../include/linux/drm/drm_device.h)
> +
> +use crate::{bindings, device, drm, types::ForeignOwnable};
> +use core::marker::PhantomData;
> +
> +/// Represents a reference to a DRM device. The device is reference-counted and is guaranteed to
> +/// not be dropped while this object is alive.
> +pub struct Device<T: drm::drv::Driver> {
> +    // Type invariant: ptr must be a valid and initialized drm_device,
> +    // and this value must either own a reference to it or the caller
> +    // must ensure that it is never dropped if the reference is borrowed.
> +    pub(super) ptr: *mut bindings::drm_device,
> +    _p: PhantomData<T>,
> +}
> +
> +impl<T: drm::drv::Driver> Device<T> {
> +    // Not intended to be called externally, except via declare_drm_ioctls!()
> +    #[doc(hidden)]
> +    pub unsafe fn from_raw(raw: *mut bindings::drm_device) -> Device<T> {
> +        Device {
> +            ptr: raw,
> +            _p: PhantomData,
> +        }
> +    }
> +
> +    #[allow(dead_code)]
> +    pub(crate) fn raw(&self) -> *const bindings::drm_device {
> +        self.ptr
> +    }
> +
> +    pub(crate) fn raw_mut(&mut self) -> *mut bindings::drm_device {
> +        self.ptr
> +    }

Since you can always get a *mut bindings::drm_device safely from

	a.raw() as *mut _

, this mutable version seems unnecesarry to me. In other words, no way
to prevent getting a *mut bindings::drm_device from only &Device.

Regards,
Boqun

> +
> +    /// Returns a borrowed reference to the user data associated with this Device.
> +    pub fn data(&self) -> <T::Data as ForeignOwnable>::Borrowed<'_> {
> +        unsafe { T::Data::borrow((*self.ptr).dev_private) }
> +    }
> +}
> +
[...]
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
