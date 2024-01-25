Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 734E183CA6E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 19:01:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 101C343C85
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jan 2024 18:01:55 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by lists.linaro.org (Postfix) with ESMTPS id 9156D3F00C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jan 2024 18:01:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=VZf1eQgS;
	dmarc=none;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.50) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a2e633c5365so190592666b.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Jan 2024 10:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1706205707; x=1706810507; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CFqyIQAenEPHTlUKCgxpUzsk/M5i7GUmHQ+F9rSmRts=;
        b=VZf1eQgSX26Jgzy9V7EDuTmuGub7uuQbWyb6B8VFId64mGw8rvRU+skw9lB4ZV2SUW
         Y8X6fkh5bxfSMSHsFlkOMZaQEzSpzyKl8nc3VSxMtgTBCrTMNPP1daRIdsGyNw3mFN3T
         SltqRNljeK6Fd2PnmNqRSMOqoHDa3TWy+ujBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706205707; x=1706810507;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CFqyIQAenEPHTlUKCgxpUzsk/M5i7GUmHQ+F9rSmRts=;
        b=FLcq/UQML+k3vPIWOZYfyi6mWXfL2+QW7rAEi8zdikgAs7dQzhQRR6nkYC856ZFg5T
         61ZuGxRVZ1+Xwh3mZxmLOP7538hc16WVrWQMZnvJ/4eZu1BUsyUFNUpI5eId3ENes+WF
         dj9e1mUT3Yb4NrM8f2XAcLw0x9hJx3Wmxr3z0424lXbp1R3KNSPdPOeSEYxLrLkLBleH
         ytCacCdpS4bQ6zrrs1JwJtrljKTvbDpSs0DAWRI/1sy6btQSJ9ZLo3cdJXM+/1/hix24
         P8kczJ+rQkPwA3tZr11lrNlw0MD1JUYfF3+ad9iBossPOdOC94CA31MR5oLgyfhKU4Ds
         HonQ==
X-Gm-Message-State: AOJu0YyzfNl1L/Lnlfmt4ibnTik4On8lwuMRaYKGwGETsUtYTpss6ABu
	nuAqevbRVnFcnSsc8qScQiFjXBki1yZi+oGQrCm+1IQtPNpJX1SYWgb74gzm2pk=
X-Google-Smtp-Source: AGHT+IGRjRpDyNOyGtuJwlJxMN3a/MkViwBNNJWcBYt6eYY1at9oh6gL4DpJYdHp/Lo+PN/TxtWMRw==
X-Received: by 2002:a17:906:5fd3:b0:a30:e4e7:c54b with SMTP id k19-20020a1709065fd300b00a30e4e7c54bmr1617880ejv.1.1706205706963;
        Thu, 25 Jan 2024 10:01:46 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id c26-20020a170906529a00b00a2f181266f6sm1261225ejm.148.2024.01.25.10.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 10:01:46 -0800 (PST)
Date: Thu, 25 Jan 2024 19:01:44 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <ZbKiCPhRvWaz4Icn@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Paul Cercueil <paul@crapouillou.net>,
	Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-usb@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20240119141402.44262-2-paul@crapouillou.net>
 <8035f515-591f-4c87-bf0a-23d5705d9b1c@gmail.com>
 <442f69f31ece6d441f3dc41c3dfeb4dcf52c00b8.camel@crapouillou.net>
 <0b6b8738-9ea3-44fa-a624-9297bd55778f@amd.com>
 <e4620acdf24628d904cedcb0030d78b14559f337.camel@crapouillou.net>
 <85a89505-edeb-4619-86c1-157f7abdd190@amd.com>
 <0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net>
 <577501f9-9d1c-4f8d-9882-7c71090e5ef3@amd.com>
 <7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net>
 <2ac7562c-d221-409a-bfee-1b3cfcc0f1c6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ac7562c-d221-409a-bfee-1b3cfcc0f1c6@amd.com>
X-Operating-System: Linux phenom 6.6.11-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9156D3F00C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.50:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:dkim];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[crapouillou.net,gmail.com,linuxfoundation.org,lwn.net,linaro.org,kernel.org,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,ffwll.ch];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: K3APLNZOJZL2HRNOGITV5VVH4UISBRWK
X-Message-ID-Hash: K3APLNZOJZL2HRNOGITV5VVH4UISBRWK
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Paul Cercueil <paul@crapouillou.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Cameron <jic23@kernel.org>, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K3APLNZOJZL2HRNOGITV5VVH4UISBRWK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 25, 2024 at 04:00:16PM +0100, Christian K=F6nig wrote:
> Am 24.01.24 um 11:58 schrieb Paul Cercueil:
> > [SNIP]
> > > > The problem was then that dma_buf_unmap_attachment cannot be called
> > > > before the dma_fence is signaled, and calling it after is already
> > > > too
> > > > late (because the fence would be signaled before the data is
> > > > sync'd).
> > >  =A0Well what sync are you talking about? CPU sync? In DMA-buf that is
> > > handled differently.
> > >  =A0For importers it's mandatory that they can be coherent with the
> > > exporter. That usually means they can snoop the CPU cache if the
> > > exporter can snoop the CPU cache.
> > I seem to have such a system where one device can snoop the CPU cache
> > and the other cannot. Therefore if I want to support it properly, I do
> > need cache flush/sync. I don't actually try to access the data using
> > the CPU (and when I do, I call the sync start/end ioctls).
>=20
> Usually that isn't a problem as long as you don't access the data with the
> CPU.
>=20
> [SNIP]
>=20
> > > > (and I *think* there is a way to force coherency in the
> > > > Ultrascale's
> > > > interconnect - we're investigating it)
> > >  =A0What you can do is that instead of using udmabuf or dma-heaps is
> > > that the device which can't provide coherency act as exporters of the
> > > buffers.
> > >  =A0The exporter is allowed to call sync_for_cpu/sync_for_device on i=
t's
> > > own buffers and also gets begin/end CPU access notfications. So you
> > > can then handle coherency between the exporter and the CPU.
> > But again that would only work if the importers would call
> > begin_cpu_access() / end_cpu_access(), which they don't, because they
> > don't actually access the data using the CPU.
>=20
> Wow, that is a completely new use case then.
>=20
> Neither DMA-buf nor the DMA subsystem in Linux actually supports this as =
far
> as I can see.
>=20
> > Unless you mean that the exporter can call sync_for_cpu/sync_for_device
> > before/after every single DMA transfer so that the data appears
> > coherent to the importers, without them having to call
> > begin_cpu_access() / end_cpu_access().
>=20
> Yeah, I mean the importers don't have to call begin_cpu_access() /
> end_cpu_access() if they don't do CPU access :)
>=20
> What you can still do as exporter is to call sync_for_device() and
> sync_for_cpu() before and after each operation on your non-coherent devic=
e.
> Paired with the fence signaling that should still work fine then.
>=20
> But taking a step back, this use case is not something even the low level
> DMA subsystem supports. That sync_for_cpu() does the right thing is
> coincident and not proper engineering.
>=20
> What you need is a sync_device_to_device() which does the appropriate
> actions depending on which devices are involved.
>=20
> > In which case - this would still demultiply the complexity; my USB-
> > functionfs interface here (and IIO interface in the separate patchset)
> > are not device-specific, so I'd rather keep them importers.
> > >  =A0If you really don't have coherency between devices then that would
> > > be a really new use case and we would need much more agreement on how
> > > to do this.
> > [snip]
> >=20
> > Agreed. Desiging a good generic solution would be better.
> >=20
> > With that said...
> >=20
> > Let's keep it out of this USB-functionfs interface for now. The
> > interface does work perfectly fine on platforms that don't have
> > coherency problems. The coherency issue in itself really is a
> > tangential issue.
>=20
> Yeah, completely agree.
>=20
> > So I will send a v6 where I don't try to force the cache coherency -
> > and instead assume that the attached devices are coherent between
> > themselves.
> >=20
> > But it would be even better to have a way to detect non-coherency and
> > return an error on attach.
>=20
> Take a look into the DMA subsystem. I'm pretty sure we already have
> something like this in there.
>=20
> If nothing else helps you could take a look if the coherent memory access
> mask is non zero or something like that.

Jumping in way late and apolgies to everyone since yes I indeed suggested
this entire mess to Paul in some private thread.

And worse, I think we need it, it's just that we got away without it thus
far.

So way back at the og dma-buf kick-off dma coherency was discussed, and a
few things where noted:
- the dma api only supports device<->cpu coherency
- getting the full coherency model off the ground right away is probably
  too hard, so we made the decision that where it matters, relevant
  flushing needs to be done in dma_buf_map/unmap.

If you look at the earliest patches for dma-buf we had pretty clear
language that all dma-operations should be bracketed with map/unmap. Of
course that didn't work out for drm at all, and we had to first get
dma_resv_lock and dma_fence landed and then your dynamic exporter/importer
support in just to get the buffer migration functionality working, which
was only one of the things discussed that braketing everything with
map/unmap was supposed to take care of.

The other was coherency management. But looking through archives I think
this was already agreed to be postponed for later in the original kick-off
meeting and never further discussed on the mailing list.

This worked for a fairly long time, because thus far dma-buf was used on
fairly reaasonable architectures where all participating devices are
coherent enough.

We did have to add the cpu access flushing fairly quickly because there's
a lot of SoC chips (including intel) where that was necessary, but even
that was added later on, as an opt-in and without fixing every. See
fc13020e086b ("dma-buf: add support for kernel cpu access").

The ioctl to allow userspace to do flushing was added even later on, and
there the entire yolo opt-in situation is even worse. c11e391da2a8
("dma-buf: Add ioctls to allow userspace to flush") was only in 2016, 5
years after dma-buf landed.

It looks like it's finally time to add the device side flushing functions
we've talked about first over 12 years ago :-)

The reason this pops up now is that unlike other dma-buf users on maybe
somewhat more funky architectures, Paul's patches want to use dma_fence
for synchronization of the dma operations. Which means you cannot call the
full dma_buf_map/unmap dance because that takes dma_resv_lock, and
absolute no-go in a dma_fence critical path.

And yes in those 12 years the dma-api hasn't gained the device2device sync
support we'd need, but neither has it gained the multiple devices <-> cpu
sync support we'd strictly need for dma-buf. So yes this is all a terrible
hodge-podge of hacks, but if we'd require theoretically perfect code we'd
still have zero dma-buf support in upstream.

This also includes how we landed these extensions, none of them in the
past have landed with a "update all existing exporters/importers" rule. We
talked about that every time, and rejected it every time for imo pretty
good reasons - the perf impact tends to be way too harsh if you impose
over-flushing on everyone, including the reasonable platforms. And we
currently can't do less than overflushing with the current dma-api
interfaces because we dont have the specific flush functions we'd need. So
really this isn't doing a worse abuse of the dma-api than what we have.
It's definitely a bit wasteful since the functions we use do in theory
flush too much. But in practice on the these funky architectures they
flush enough.

There's also the very hard issue of actually trying to optimize flushes,
because a dma operation might only access part of a buffer, and you might
interleave read/write access by different devices in very innovative ways.
So I'm firmly on the "make it work first, then fast" side of things.

So dma-buf will continue to be a thing that's tested for specific combos,
and then we'll patch them. It's a decade-plus tradition at this point.

Which is all a very long winded way of saying that yes, I think we need
this, and we needed this 12 years ago already if we'd have aimed for
perfect.

I have a bunch of detail comments on the patch itself, but I guess we
first need to find consensus on whether it's a good idea in the first
place.

Cheers, Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
