Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB098286B5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Jan 2024 14:02:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CC9C43D1E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Jan 2024 13:02:25 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id C651E40B79
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Jan 2024 13:02:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=Ez8Op8er;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.47) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a29b850ec66so97177466b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Jan 2024 05:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1704805323; x=1705410123; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tgjWq+GNDqJ5m/X5ry3BHL3SU/PqMtpMN091r7LGUoA=;
        b=Ez8Op8ertlf1BkHYHFWKbKcmYLHMOwF50ItT8OIBccKFg8DT6SvUxSmvzMdqTrFCdi
         LGBNtpXvG8PEkVW6DZEkWIawEMosSrnYVAOaadR71X78j/z6MCZPugggAYSlALAnxjWW
         1tGXfvovU7OqWDcV8tYD4CQcGYK0k/QuI+VgM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704805323; x=1705410123;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tgjWq+GNDqJ5m/X5ry3BHL3SU/PqMtpMN091r7LGUoA=;
        b=fPcl0Hsq0HQyDScsY3+9WI2n+4D6E5S891eV7+qI1udLHbGACSCVop8mlNvJhanKsQ
         pYOGvFO/PMmmqP5e3sEoVYFaA3ztMJC6g6Y4Aiqq5jG98wWHvvSCUUDLBHhR5PXWpfJF
         8aXoemER4jB22+fEuPBP5jC0WAb4msmQB8s4luc9uwN+Eey4gQuvA/B4arWPpsjsy0Yc
         Zv5EKdxxvVKC9kvdQRyi6sGzuYPWR/FX8RsLJzo3A0ISzRTLw1NQbmTV32cmdzzL2ad0
         GCivtfereb5BzO5TeMqbA9V3Qr/QwYcP3un7oxItdPCveJMXOAaZgfNUEe9e8IF9PZ+n
         Qm6Q==
X-Gm-Message-State: AOJu0Yz3j54LTl9l2Im4QRNzDiC6PJBbGhLev0n2RMemn/0LOVS7qbHo
	ItJ9xgKYDpdAoKcdhr5bIfrEMYkwCraqvQ==
X-Google-Smtp-Source: AGHT+IGjVfkl4K5438EgxZNYkdIb8UWsXUs419kNzc6Ewo2f7z4uJ8gnFTH0tvWgAwZexzBu/d17zw==
X-Received: by 2002:a17:906:fe47:b0:a28:34e5:b609 with SMTP id wz7-20020a170906fe4700b00a2834e5b609mr5343630ejb.6.1704805322530;
        Tue, 09 Jan 2024 05:02:02 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id x12-20020a170906710c00b00a29430458efsm1031296ejj.65.2024.01.09.05.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 05:02:01 -0800 (PST)
Date: Tue, 9 Jan 2024 14:01:59 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <ZZ1Dx1Jqbi61_Afb@phenom.ffwll.local>
Mail-Followup-To: Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-doc@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	linaro-mm-sig@lists.linaro.org,
	Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>,
	Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
References: <20240108120056.22165-1-paul@crapouillou.net>
 <20240108120056.22165-4-paul@crapouillou.net>
 <ZZvtEXL8DLPPdtPs@phenom.ffwll.local>
 <a44aca93adc60ce56a64c50797a029631900172e.camel@crapouillou.net>
 <ZZwU827NMHbx7bsO@phenom.ffwll.local>
 <2c0d4ef1b657c56ea2290fe16d757ce563a3e71b.camel@crapouillou.net>
 <ZZxKvR9gjH8D5qxj@phenom.ffwll.local>
 <31e56028b4d865c60b7c01b2a305b3dd8a21ff7a.camel@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31e56028b4d865c60b7c01b2a305b3dd8a21ff7a.camel@crapouillou.net>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,linuxfoundation.org,linaro.org,amd.com,lwn.net,analog.com,vger.kernel.org,lists.freedesktop.org,collabora.com,lists.linaro.org,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C651E40B79
X-Spamd-Bar: -----
Message-ID-Hash: D3ALF2F63SW3I2U6RCEFLD6OA3QVI3TY
X-Message-ID-Hash: D3ALF2F63SW3I2U6RCEFLD6OA3QVI3TY
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linaro-mm-sig@lists.linaro.org, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/4] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D3ALF2F63SW3I2U6RCEFLD6OA3QVI3TY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 09, 2024 at 12:06:58PM +0100, Paul Cercueil wrote:
> Hi Daniel / Sima,
>=20
> Le lundi 08 janvier 2024 =E0 20:19 +0100, Daniel Vetter a =E9crit=A0:
> > On Mon, Jan 08, 2024 at 05:27:33PM +0100, Paul Cercueil wrote:
> > > Le lundi 08 janvier 2024 =E0 16:29 +0100, Daniel Vetter a =E9crit=A0:
> > > > On Mon, Jan 08, 2024 at 03:21:21PM +0100, Paul Cercueil wrote:
> > > > > Hi Daniel (Sima?),
> > > > >=20
> > > > > Le lundi 08 janvier 2024 =E0 13:39 +0100, Daniel Vetter a =E9crit=
=A0:
> > > > > > On Mon, Jan 08, 2024 at 01:00:55PM +0100, Paul Cercueil
> > > > > > wrote:
> > > > > > > +static void ffs_dmabuf_signal_done(struct ffs_dma_fence
> > > > > > > *dma_fence, int ret)
> > > > > > > +{
> > > > > > > +	struct ffs_dmabuf_priv *priv =3D dma_fence->priv;
> > > > > > > +	struct dma_fence *fence =3D &dma_fence->base;
> > > > > > > +
> > > > > > > +	dma_fence_get(fence);
> > > > > > > +	fence->error =3D ret;
> > > > > > > +	dma_fence_signal(fence);
> > > > > > > +
> > > > > > > +	dma_buf_unmap_attachment(priv->attach, dma_fence-
> > > > > > > >sgt,
> > > > > > > dma_fence->dir);
> > > > > > > +	dma_fence_put(fence);
> > > > > > > +	ffs_dmabuf_put(priv->attach);
> > > > > >=20
> > > > > > So this can in theory take the dma_resv lock, and if the usb
> > > > > > completion
> > > > > > isn't an unlimited worker this could hold up completion of
> > > > > > future
> > > > > > dma_fence, resulting in a deadlock.
> > > > > >=20
> > > > > > Needs to be checked how usb works, and if stalling
> > > > > > indefinitely
> > > > > > in
> > > > > > the
> > > > > > io_complete callback can hold up the usb stack you need to:
> > > > > >=20
> > > > > > - drop a dma_fence_begin/end_signalling annotations in here
> > > > > > - pull out the unref stuff into a separate preallocated
> > > > > > worker
> > > > > > (or at
> > > > > > =A0 least the final unrefs for ffs_dma_buf).
> > > > >=20
> > > > > Only ffs_dmabuf_put() can attempt to take the dma_resv and
> > > > > would
> > > > > have
> > > > > to be in a worker, right? Everything else would be inside the
> > > > > dma_fence_begin/end_signalling() annotations?
> > > >=20
> > > > Yup. Also I noticed that unlike the iio patches you don't have
> > > > the
> > > > dma_buf_unmap here in the completion path (or I'm blind?), which
> > > > helps a
> > > > lot with avoiding trouble.
> > >=20
> > > They both call dma_buf_unmap_attachment() in the "signal done"
> > > callback, the only difference I see is that it is called after the
> > > dma_fence_put() in the iio patches, while it's called before
> > > dma_fence_put() here.
> >=20
> > I was indeed blind ...
> >=20
> > So the trouble is this wont work because:
> > - dma_buf_unmap_attachment() requires dma_resv_lock. This is a
> > somewhat
> > =A0 recent-ish change from 47e982d5195d ("dma-buf: Move
> > =A0 dma_buf_map_attachment() to dynamic locking specification"), so
> > maybe
> > =A0 old kernel or you don't have full lockdep enabled to get the right
> > =A0 splat.
> >=20
> > - dma_fence critical section forbids dma_resv_lock
> >=20
> > Which means you need to move this out, but then there's the potential
> > cache management issue. Which current gpu drivers just kinda ignore
> > because it doesn't matter for current use-case, they all cache the
> > mapping
> > for about as long as the attachment exists. You might want to do the
> > same,
> > unless that somehow breaks a use-case you have, I have no idea about
> > that.
> > If something breaks with unmap_attachment moved out of the fence
> > handling
> > then I guess it's high time to add separate cache-management only to
> > dma_buf (and that's probably going to be quite some wiring up, not
> > sure
> > even how easy that would be to do nor what exactly the interface
> > should
> > look like).
>=20
> Ok. Then I'll just cache the mapping for now, I think.

Yeah I think that's simplest. I did ponder a bit and I don't think it'd be
too much pain to add the cache-management functions for device
attachments/mappings. But it would be quite some typing ...
-Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
