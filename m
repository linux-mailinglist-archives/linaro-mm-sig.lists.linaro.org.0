Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 582EC827862
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jan 2024 20:19:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45E9B43FAB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jan 2024 19:19:51 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by lists.linaro.org (Postfix) with ESMTPS id 6B2A53EC5F
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jan 2024 19:19:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=VW9Jd7YK;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.167.53) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50eafc5b39eso367993e87.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Jan 2024 11:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1704741568; x=1705346368; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EJ2fxcKwoH+j3zf8yKo3Vu+cgAPiKaowc7Mo1YkN7dA=;
        b=VW9Jd7YKGo/AZrkoF5uDOEG5bqwYJ4pY2Mv7QeDD/Etdni54BhlRh7b5Q3Yofq/5lx
         lr9H62FXW7z+Nr2xir68jnz+GN/jm6CwcD5h1dElSnV81g/fNbl2PpqUkTjY2S7/bpPQ
         FFlquxGCrSCjjOmmyfKW4py/3Gci5akELl5+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704741568; x=1705346368;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EJ2fxcKwoH+j3zf8yKo3Vu+cgAPiKaowc7Mo1YkN7dA=;
        b=Lalg7LfsUcAfQ0/CwZwHpJaVdeINZ2/8aR9B3FhdhC0Yntr8CHP5pujSMhkCCmNsfi
         g9ZlZdKQPTD87QAzOmYyjE4IA+4R3SSMkqP/5MoIBwtnrh0uvcsfI/+cwV5Rd/4Y2SBR
         6ggZpe/PLuoyr8YNMklzWWuCv2GhCxzcDzyLj7fMA6VpqO9mCRgMscpJQgCDAqi8gBSN
         D1ZobHgHXNUZUB8IkWmcg5og9W7nM/QGoUndPdI4TCkIhkfHoOjZ60b+VMrgBKWQnrD8
         QawpuhEId6D50HI4wOBA5zKQclCD250ku/ju0pc5/w0KyOamxv6y+wPqsnUyJFydjw18
         exzA==
X-Gm-Message-State: AOJu0Yzj8f0w7QJjzOp0HfFzEgf6Imcsx51LFx/WBIHkQ/RSVFqMY7jN
	drYrP6uyiJZvxWvWaeB5lJYASeqXcQisHA==
X-Google-Smtp-Source: AGHT+IE/x3yLDZZ6n/5O2iCOUHnc0Ya5TLPSdiVuLb4m5g8sI5sQyD6iWnZm6A7Hd4Q/GNClgkhmrQ==
X-Received: by 2002:a05:6512:3ba1:b0:50e:b2ba:15d with SMTP id g33-20020a0565123ba100b0050eb2ba015dmr4109768lfv.1.1704741567605;
        Mon, 08 Jan 2024 11:19:27 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id p7-20020a05600c468700b0040d30af488asm12097912wmo.40.2024.01.08.11.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 11:19:27 -0800 (PST)
Date: Mon, 8 Jan 2024 20:19:25 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <ZZxKvR9gjH8D5qxj@phenom.ffwll.local>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2c0d4ef1b657c56ea2290fe16d757ce563a3e71b.camel@crapouillou.net>
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.53:from];
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
X-Rspamd-Queue-Id: 6B2A53EC5F
X-Spamd-Bar: -----
Message-ID-Hash: 2WOPPAB2XE6UDZFYABSWTTPEVVJRETIU
X-Message-ID-Hash: 2WOPPAB2XE6UDZFYABSWTTPEVVJRETIU
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linaro-mm-sig@lists.linaro.org, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/4] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2WOPPAB2XE6UDZFYABSWTTPEVVJRETIU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 08, 2024 at 05:27:33PM +0100, Paul Cercueil wrote:
> Le lundi 08 janvier 2024 =E0 16:29 +0100, Daniel Vetter a =E9crit=A0:
> > On Mon, Jan 08, 2024 at 03:21:21PM +0100, Paul Cercueil wrote:
> > > Hi Daniel (Sima?),
> > >=20
> > > Le lundi 08 janvier 2024 =E0 13:39 +0100, Daniel Vetter a =E9crit=A0:
> > > > On Mon, Jan 08, 2024 at 01:00:55PM +0100, Paul Cercueil wrote:
> > > > > +static void ffs_dmabuf_signal_done(struct ffs_dma_fence
> > > > > *dma_fence, int ret)
> > > > > +{
> > > > > +	struct ffs_dmabuf_priv *priv =3D dma_fence->priv;
> > > > > +	struct dma_fence *fence =3D &dma_fence->base;
> > > > > +
> > > > > +	dma_fence_get(fence);
> > > > > +	fence->error =3D ret;
> > > > > +	dma_fence_signal(fence);
> > > > > +
> > > > > +	dma_buf_unmap_attachment(priv->attach, dma_fence->sgt,
> > > > > dma_fence->dir);
> > > > > +	dma_fence_put(fence);
> > > > > +	ffs_dmabuf_put(priv->attach);
> > > >=20
> > > > So this can in theory take the dma_resv lock, and if the usb
> > > > completion
> > > > isn't an unlimited worker this could hold up completion of future
> > > > dma_fence, resulting in a deadlock.
> > > >=20
> > > > Needs to be checked how usb works, and if stalling indefinitely
> > > > in
> > > > the
> > > > io_complete callback can hold up the usb stack you need to:
> > > >=20
> > > > - drop a dma_fence_begin/end_signalling annotations in here
> > > > - pull out the unref stuff into a separate preallocated worker
> > > > (or at
> > > > =A0 least the final unrefs for ffs_dma_buf).
> > >=20
> > > Only ffs_dmabuf_put() can attempt to take the dma_resv and would
> > > have
> > > to be in a worker, right? Everything else would be inside the
> > > dma_fence_begin/end_signalling() annotations?
> >=20
> > Yup. Also I noticed that unlike the iio patches you don't have the
> > dma_buf_unmap here in the completion path (or I'm blind?), which
> > helps a
> > lot with avoiding trouble.
>=20
> They both call dma_buf_unmap_attachment() in the "signal done"
> callback, the only difference I see is that it is called after the
> dma_fence_put() in the iio patches, while it's called before
> dma_fence_put() here.

I was indeed blind ...

So the trouble is this wont work because:
- dma_buf_unmap_attachment() requires dma_resv_lock. This is a somewhat
  recent-ish change from 47e982d5195d ("dma-buf: Move
  dma_buf_map_attachment() to dynamic locking specification"), so maybe
  old kernel or you don't have full lockdep enabled to get the right
  splat.

- dma_fence critical section forbids dma_resv_lock

Which means you need to move this out, but then there's the potential
cache management issue. Which current gpu drivers just kinda ignore
because it doesn't matter for current use-case, they all cache the mapping
for about as long as the attachment exists. You might want to do the same,
unless that somehow breaks a use-case you have, I have no idea about that.
If something breaks with unmap_attachment moved out of the fence handling
then I guess it's high time to add separate cache-management only to
dma_buf (and that's probably going to be quite some wiring up, not sure
even how easy that would be to do nor what exactly the interface should
look like).

Cheers, Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
