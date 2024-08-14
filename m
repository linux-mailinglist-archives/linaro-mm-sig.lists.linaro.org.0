Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD8C951503
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2024 09:11:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C537344966
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Aug 2024 07:11:09 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by lists.linaro.org (Postfix) with ESMTPS id B69173EACC
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2024 07:10:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=DXKrtOgf;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.167.45) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52efcbfacb9so645073e87.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Aug 2024 00:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1723619447; x=1724224247; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L009pugR3zZsWpNfGU81RRmQUSZUEj3DLYLLNMmbkfo=;
        b=DXKrtOgfvDieWc9ZZjJB7ZM9LaG+BWXo0nKhOFaFcTje40SHPf7uSoPxj/Aco9NNg9
         oioXeNXSnLEsgAoYqZsmJsos2Z7icmLW6+SJm7WkD5cFp0X2R0hnC3weKesOa5Ywhu8K
         nKgheQd5w4gyqt61UfAAwbL/B1weuqYEKbkXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723619447; x=1724224247;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L009pugR3zZsWpNfGU81RRmQUSZUEj3DLYLLNMmbkfo=;
        b=Hf04Jy7Vr4qXjOskJT4jMyzteqET8mJkEl7iPlo/X6yMedsRHDyThhQDvG4Yew9stk
         6LMQE4H5hMeUDrOIGPNwJPvFG2uFYUx/Q/PbGSjlCdE52V0z8Q5WHmDlvWZ+uM3EjtzZ
         kmw2PTf0AKMe7jlsmO59tw68zYPm2Cail7FxnBTwlCPHYBsFdttcHUdyX16W1Kpsg8uy
         lNhO5kaM717LbKOYhMY7pGollr48fZTEbWNdtelGoPG/m9MXPg6azYSHVjTQwH321WAa
         UFlfXoBWPKGqv6eRXVviUgP+njuwYCw/uuLNYVSaM0MdQ39gU92aqiQoUcNeJ7CpryFd
         8Ozw==
X-Forwarded-Encrypted: i=1; AJvYcCWTFH3jC0GQiexLPvlRWpQm1C8rHIeKVeFQCipjmxjJYZvDslOgcehEvDwDmMPNQH3x2ZkZEo2JPu4w87rubnJFBHh42WsGA5pRibeudSs=
X-Gm-Message-State: AOJu0Ywy8MhTz0dnnv5S/UOE7zlQpDhsbIKbvgzWpE79zHvSLqELM7F3
	LDFgPvTyBllpJzeYeWwttlifCYmEJthLftdCf9NrQuqGmMyGSLmJoELgku04bfM=
X-Google-Smtp-Source: AGHT+IFJ0T+6ZPjrLE9RUkWiG7ivjV/AsZbBIxfzoGlMEd+h35WslR/zOFqPc/9Ohv4TR8VAErYwow==
X-Received: by 2002:a05:6512:3b28:b0:52f:c337:4c1f with SMTP id 2adb3069b0e04-532ed727acdmr616823e87.0.1723619447130;
        Wed, 14 Aug 2024 00:10:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded3d1bbsm11066285e9.26.2024.08.14.00.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 00:10:46 -0700 (PDT)
Date: Wed, 14 Aug 2024 09:10:44 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <ZrxYdIDdEJXRTFrn@phenom.ffwll.local>
References: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
 <be9b192a-a125-6774-bb4f-8b9fb517ce0d@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be9b192a-a125-6774-bb4f-8b9fb517ce0d@linux.intel.com>
X-Operating-System: Linux phenom 6.9.10-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B69173EACC
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.45:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	DWL_DNSWL_BLOCKED(0.00)[ffwll.ch:dkim];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.167.45:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
Message-ID-Hash: XIG4KZWP246L34VMUSDKJG5ISTBHRQLG
X-Message-ID-Hash: XIG4KZWP246L34VMUSDKJG5ISTBHRQLG
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, Christian Koenig <christian.koenig@amd.com>, intel-xe@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] dma-buf/dma-fence: Use a successful read_trylock() annotation for dma_fence_begin_signalling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XIG4KZWP246L34VMUSDKJG5ISTBHRQLG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, May 26, 2023 at 01:11:28PM +0200, Thomas Hellstr=F6m wrote:
> Daniel,
>=20
> On 4/28/23 14:52, Thomas Hellstr=F6m wrote:
> > Condsider the following call sequence:
> >=20
> > /* Upper layer */
> > dma_fence_begin_signalling();
> > lock(tainted_shared_lock);
> > /* Driver callback */
> > dma_fence_begin_signalling();
> > ...
> >=20
> > The driver might here use a utility that is annotated as intended for t=
he
> > dma-fence signalling critical path. Now if the upper layer isn't correc=
tly
> > annotated yet for whatever reason, resulting in
> >=20
> > /* Upper layer */
> > lock(tainted_shared_lock);
> > /* Driver callback */
> > dma_fence_begin_signalling();
> >=20
> > We will receive a false lockdep locking order violation notification fr=
om
> > dma_fence_begin_signalling(). However entering a dma-fence signalling
> > critical section itself doesn't block and could not cause a deadlock.
> >=20
> > So use a successful read_trylock() annotation instead for
> > dma_fence_begin_signalling(). That will make sure that the locking order
> > is correctly registered in the first case, and doesn't register any
> > locking order in the second case.
> >=20
> > The alternative is of course to make sure that the "Upper layer" is alw=
ays
> > correctly annotated. But experience shows that's not easily achievable
> > in all cases.
> >=20
> > Signed-off-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
>=20
> Resurrecting the discussion on this one. I can't see a situation where we
> would miss *relevant* locking
> order violation warnings with this patch. Ofc if we have a scheduler
> annotation patch that would work fine as well, but the lack of annotation=
 in
> the scheduler callbacks is really starting to hurt us.

Yeah this is just a bit too brain-melting to review, but I concur now.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I think what would help is some lockdep selftests to check that we both
catch the stuff we want to, and don't incur false positives. Maybe with a
plea that lockdep should have some native form of cross-release
annotations ...

But definitely seperate patch set, since it might take a few rounds of
review by lockdep folks.
-Sima

>=20
> Thanks,
>=20
> Thomas
>=20
>=20
>=20
> > ---
> >   drivers/dma-buf/dma-fence.c | 6 +++---
> >   1 file changed, 3 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> > index f177c56269bb..17f632768ef9 100644
> > --- a/drivers/dma-buf/dma-fence.c
> > +++ b/drivers/dma-buf/dma-fence.c
> > @@ -308,8 +308,8 @@ bool dma_fence_begin_signalling(void)
> >   	if (in_atomic())
> >   		return true;
> > -	/* ... and non-recursive readlock */
> > -	lock_acquire(&dma_fence_lockdep_map, 0, 0, 1, 1, NULL, _RET_IP_);
> > +	/* ... and non-recursive successful read_trylock */
> > +	lock_acquire(&dma_fence_lockdep_map, 0, 1, 1, 1, NULL, _RET_IP_);
> >   	return false;
> >   }
> > @@ -340,7 +340,7 @@ void __dma_fence_might_wait(void)
> >   	lock_map_acquire(&dma_fence_lockdep_map);
> >   	lock_map_release(&dma_fence_lockdep_map);
> >   	if (tmp)
> > -		lock_acquire(&dma_fence_lockdep_map, 0, 0, 1, 1, NULL, _THIS_IP_);
> > +		lock_acquire(&dma_fence_lockdep_map, 0, 1, 1, 1, NULL, _THIS_IP_);
> >   }
> >   #endif

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
