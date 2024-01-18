Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 703C5831AF5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 14:59:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AB813F380
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Jan 2024 13:59:27 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 53F333F380
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 13:59:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=LMxgfe0R;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.41) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55760f84177so2636539a12.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jan 2024 05:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1705586345; x=1706191145; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=qjibwC0Pm0aKsecVEm1CI9Jop+u2Qm2VSXFGfFyZIo8=;
        b=LMxgfe0RhZjfPVF0vhJvAaw1/CMJMlO4h3g1OZ9hvPlJlcdML79e2wrMd042ewxTgH
         c0X/ULhhDkZJAocxkumq+dfHNHbHC11WOEKDyeb3NEIyWDZjb9wsW1zrYyhgFEzmKKzq
         zdsdnHsEJ15hPBMuN1sm6dvq/qdPtlgSPkeIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705586345; x=1706191145;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qjibwC0Pm0aKsecVEm1CI9Jop+u2Qm2VSXFGfFyZIo8=;
        b=wS32JubVmy3l9LFYr4k67aPKybuEUQlDmJD6ucMsc/tMSQ1H+QBXFDJvd31dJ6R/UN
         ODkf4fUz3YydUODZdBiqJEOnenhZMP1mQoKatSPH2Cc09WA632C/obM/qjnmZhJ2zTBs
         7EFObuU5eEEBWj88Hc/KAmmwq100dB1rQDzuStPXnzK6S/UOuPUc/KGiOehXK3SWKGcu
         uq5iqW7KXZ00CZAXj6LWZT+uVP+FJNenGex8veebKoaBaz/KTCofjypWWFm0QS6njBzQ
         XxoUH5bBANGVVFD7t+WDkuernYm6RmYNAV59Csr/TGJaf6npQYk3EvHIWoC8+wo0rWn7
         m5fA==
X-Gm-Message-State: AOJu0YyQNjSTH3iGJxyjaJhDCeuUhViJ3QkYrI1LKb139Rmwqf5CVkNB
	QmyJf2CeTzN0DHqszX+zKBMlmtOupxRa2AewbXVE2OBsXx95hDxl+FoAYLsPJHw=
X-Google-Smtp-Source: AGHT+IFY8Kxs594jsuK2rUy7WAVPHDnGECZOoMzsVJ25pNzJ9447ocIjSe/xC5v5/5dl598y8kCJ6A==
X-Received: by 2002:a17:906:c352:b0:a28:ab63:db33 with SMTP id ci18-20020a170906c35200b00a28ab63db33mr1195735ejb.7.1705586345068;
        Thu, 18 Jan 2024 05:59:05 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id t3-20020a170906608300b00a2c8dfa5c25sm8554918ejj.123.2024.01.18.05.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 05:59:04 -0800 (PST)
Date: Thu, 18 Jan 2024 14:59:02 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Paul Cercueil <paul@crapouillou.net>,
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
Message-ID: <Zakupp1GCZMk5aDT@phenom.ffwll.local>
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
References: <20240108120056.22165-4-paul@crapouillou.net>
 <ZZvtEXL8DLPPdtPs@phenom.ffwll.local>
 <a44aca93adc60ce56a64c50797a029631900172e.camel@crapouillou.net>
 <ZZwU827NMHbx7bsO@phenom.ffwll.local>
 <2c0d4ef1b657c56ea2290fe16d757ce563a3e71b.camel@crapouillou.net>
 <ZZxKvR9gjH8D5qxj@phenom.ffwll.local>
 <31e56028b4d865c60b7c01b2a305b3dd8a21ff7a.camel@crapouillou.net>
 <ZZ1Dx1Jqbi61_Afb@phenom.ffwll.local>
 <c100b5f75b12de4a331dd36de3573483dbde915f.camel@crapouillou.net>
 <ZakuD-ns-5UJmrRi@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZakuD-ns-5UJmrRi@phenom.ffwll.local>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.41:from];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[crapouillou.net,linuxfoundation.org,linaro.org,amd.com,lwn.net,analog.com,vger.kernel.org,lists.freedesktop.org,collabora.com,lists.linaro.org,gmail.com,kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 53F333F380
X-Spamd-Bar: -
Message-ID-Hash: MBBEW23MMAENN5NSWSZH76E47NRZRQT5
X-Message-ID-Hash: MBBEW23MMAENN5NSWSZH76E47NRZRQT5
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/4] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MBBEW23MMAENN5NSWSZH76E47NRZRQT5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 18, 2024 at 02:56:31PM +0100, Daniel Vetter wrote:
> On Mon, Jan 15, 2024 at 01:54:27PM +0100, Paul Cercueil wrote:
> > Hi Daniel / Sima,
> >=20
> > Le mardi 09 janvier 2024 =E0 14:01 +0100, Daniel Vetter a =E9crit=A0:
> > > On Tue, Jan 09, 2024 at 12:06:58PM +0100, Paul Cercueil wrote:
> > > > Hi Daniel / Sima,
> > > >=20
> > > > Le lundi 08 janvier 2024 =E0 20:19 +0100, Daniel Vetter a =E9crit=
=A0:
> > > > > On Mon, Jan 08, 2024 at 05:27:33PM +0100, Paul Cercueil wrote:
> > > > > > Le lundi 08 janvier 2024 =E0 16:29 +0100, Daniel Vetter a =E9cr=
it=A0:
> > > > > > > On Mon, Jan 08, 2024 at 03:21:21PM +0100, Paul Cercueil
> > > > > > > wrote:
> > > > > > > > Hi Daniel (Sima?),
> > > > > > > >=20
> > > > > > > > Le lundi 08 janvier 2024 =E0 13:39 +0100, Daniel Vetter a
> > > > > > > > =E9crit=A0:
> > > > > > > > > On Mon, Jan 08, 2024 at 01:00:55PM +0100, Paul Cercueil
> > > > > > > > > wrote:
> > > > > > > > > > +static void ffs_dmabuf_signal_done(struct
> > > > > > > > > > ffs_dma_fence
> > > > > > > > > > *dma_fence, int ret)
> > > > > > > > > > +{
> > > > > > > > > > +	struct ffs_dmabuf_priv *priv =3D dma_fence-
> > > > > > > > > > >priv;
> > > > > > > > > > +	struct dma_fence *fence =3D &dma_fence->base;
> > > > > > > > > > +
> > > > > > > > > > +	dma_fence_get(fence);
> > > > > > > > > > +	fence->error =3D ret;
> > > > > > > > > > +	dma_fence_signal(fence);
> > > > > > > > > > +
> > > > > > > > > > +	dma_buf_unmap_attachment(priv->attach,
> > > > > > > > > > dma_fence-
> > > > > > > > > > > sgt,
> > > > > > > > > > dma_fence->dir);
> > > > > > > > > > +	dma_fence_put(fence);
> > > > > > > > > > +	ffs_dmabuf_put(priv->attach);
> > > > > > > > >=20
> > > > > > > > > So this can in theory take the dma_resv lock, and if the
> > > > > > > > > usb
> > > > > > > > > completion
> > > > > > > > > isn't an unlimited worker this could hold up completion
> > > > > > > > > of
> > > > > > > > > future
> > > > > > > > > dma_fence, resulting in a deadlock.
> > > > > > > > >=20
> > > > > > > > > Needs to be checked how usb works, and if stalling
> > > > > > > > > indefinitely
> > > > > > > > > in
> > > > > > > > > the
> > > > > > > > > io_complete callback can hold up the usb stack you need
> > > > > > > > > to:
> > > > > > > > >=20
> > > > > > > > > - drop a dma_fence_begin/end_signalling annotations in
> > > > > > > > > here
> > > > > > > > > - pull out the unref stuff into a separate preallocated
> > > > > > > > > worker
> > > > > > > > > (or at
> > > > > > > > > =A0 least the final unrefs for ffs_dma_buf).
> > > > > > > >=20
> > > > > > > > Only ffs_dmabuf_put() can attempt to take the dma_resv and
> > > > > > > > would
> > > > > > > > have
> > > > > > > > to be in a worker, right? Everything else would be inside
> > > > > > > > the
> > > > > > > > dma_fence_begin/end_signalling() annotations?
> > > > > > >=20
> > > > > > > Yup. Also I noticed that unlike the iio patches you don't
> > > > > > > have
> > > > > > > the
> > > > > > > dma_buf_unmap here in the completion path (or I'm blind?),
> > > > > > > which
> > > > > > > helps a
> > > > > > > lot with avoiding trouble.
> > > > > >=20
> > > > > > They both call dma_buf_unmap_attachment() in the "signal done"
> > > > > > callback, the only difference I see is that it is called after
> > > > > > the
> > > > > > dma_fence_put() in the iio patches, while it's called before
> > > > > > dma_fence_put() here.
> > > > >=20
> > > > > I was indeed blind ...
> > > > >=20
> > > > > So the trouble is this wont work because:
> > > > > - dma_buf_unmap_attachment() requires dma_resv_lock. This is a
> > > > > somewhat
> > > > > =A0 recent-ish change from 47e982d5195d ("dma-buf: Move
> > > > > =A0 dma_buf_map_attachment() to dynamic locking specification"), =
so
> > > > > maybe
> > > > > =A0 old kernel or you don't have full lockdep enabled to get the
> > > > > right
> > > > > =A0 splat.
> > > > >=20
> > > > > - dma_fence critical section forbids dma_resv_lock
> > > > >=20
> > > > > Which means you need to move this out, but then there's the
> > > > > potential
> > > > > cache management issue. Which current gpu drivers just kinda
> > > > > ignore
> > > > > because it doesn't matter for current use-case, they all cache
> > > > > the
> > > > > mapping
> > > > > for about as long as the attachment exists. You might want to do
> > > > > the
> > > > > same,
> > > > > unless that somehow breaks a use-case you have, I have no idea
> > > > > about
> > > > > that.
> > > > > If something breaks with unmap_attachment moved out of the fence
> > > > > handling
> > > > > then I guess it's high time to add separate cache-management only
> > > > > to
> > > > > dma_buf (and that's probably going to be quite some wiring up,
> > > > > not
> > > > > sure
> > > > > even how easy that would be to do nor what exactly the interface
> > > > > should
> > > > > look like).
> > > >=20
> > > > Ok. Then I'll just cache the mapping for now, I think.
> > >=20
> > > Yeah I think that's simplest. I did ponder a bit and I don't think
> > > it'd be
> > > too much pain to add the cache-management functions for device
> > > attachments/mappings. But it would be quite some typing ...
> > > -Sima
> >=20
> > It looks like I actually do have some hardware which requires the cache
> > management. If I cache the mappings in both my IIO and USB code, it
> > works fine on my ZedBoard, but it doesn't work on my ZCU102.
> >=20
> > (Or maybe it's something else? What I get from USB in that case is a
> > stream of zeros, I'd expect it to be more like a stream of
> > garbage/stale data).
> >=20
> > So, change of plans; I will now unmap the attachment in the cleanup
> > worker after the fence is signalled, and add a warning comment before
> > the end of the fence critical section about the need to do cache
> > management before the signal.
> >=20
> > Does that work for you?
>=20
> The trouble is, I'm not sure this works for you. If you rely on the
> fences, and you have to do cache management in between dma operations,
> then doing the unmap somewhen later will only mostly paper over the issue,
> but not consistently.
>=20
> I think that's really bad because the bugs this will cause are very hard
> to track down and with the current infrastructure impossible to fix.
>=20
> Imo cache the mappings, and then fix the cache management bug properly.
>=20
> If you want an interim solution that isn't blocked on the dma-buf cache
> management api addition, the only thing that works is doing the operations
> synchronously in the ioctl call. Then you don't need fences, and you can
> guarantee that the unmap has finished before userspace proceeds.
>=20
> With the dma_fences you can't guarantee that, it's just pure luck.

Maybe a follow up: Double check you really need the cache management
between the dma operations from 2 different devices, and not for the cpu
access that you then probably do to check the result.

Because if the issue is just cpu access, then protecting the cpu access
needs to use the begin/end_cpu_access dma-functions (or the corresponding
ioctl if you use mmap from userspace) anyway, and that should sort out any
issues you have for cpu access.

Just to make sure we're not needlessly trying to fix something that isn't
actually the problem.
-Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
