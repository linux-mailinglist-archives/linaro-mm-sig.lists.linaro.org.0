Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF6584217E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jan 2024 11:38:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0F0D400A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jan 2024 10:38:45 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 8302C400A1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jan 2024 10:38:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=HaUOfT8W;
	dmarc=none;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.44) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a30e898db99so88509666b.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jan 2024 02:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1706611111; x=1707215911; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q0DpHsp78524WTcdq3ZlObN34BwE3mZw0kMPMavoOX4=;
        b=HaUOfT8Wq+HbbU7cOADCYuqC0YTVzr+vyM7XfQQOvPGabmSYP0oXtVExLr+yvWK4tF
         iXBuBx0ejefB5p/HWOWzufjxth5h20EoPNh0ioXM7wXO/woz+Xo5H6pkc+QcfcNPyUIO
         3wW9creq9wMqshqttaOh142kEY5mH4n7YCVfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706611111; x=1707215911;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q0DpHsp78524WTcdq3ZlObN34BwE3mZw0kMPMavoOX4=;
        b=Mmem76CTTYYmpUmTe+FEWiyC12JSPfNKdJeBL9sMccT4M+Lv0rjGzS7ZRahgiYtsky
         ldlEN36i+BmE93WmPvDTCRURgOJVUiZ1zVHd4lBqXbr+/HjxTbnXI/jA6iHuWBygeZOf
         0UiNTd0FKzf+Ns7jLxUANvo2ffaGOakQn9vo/l/pBWO/SY7Q149rpNQvQFYya0UNzVAh
         hITr/t2s5u2mwbChVRlohp5qJvXCZyE7J85SExCv9VrlSdj8KOpENWS2NmguqbsqJR6h
         PwobXD/cVaVFjlheywdp0pKoN3+LFIGihk4t7MzOPiRytgQrxZ9akAxnB2pKTvSNZIyg
         LXwg==
X-Forwarded-Encrypted: i=0; AJvYcCWndPMq12md3Of45q0Uc+kNybhEq8eh9cByEU8S5tFnpwd9mk1AntR+Y/EI6C/wbFowc1Y6yTiQaI3Xw4QZn6ulxR/kSDdZkfapcwVH6IM=
X-Gm-Message-State: AOJu0Yzm7Fx0juGAg5Iy11+yh7YWkb3y7lVqIEPn+Rx0ckTZaiNQhxMw
	VmE9QZxCggN4TkzKlhfMmM+PJWDzMALSHoj37Tw/mT+h8N3PcXhFAhJeuTYHDCY=
X-Google-Smtp-Source: AGHT+IGOdGiExTeKnmBCfXOvsiugsDOp4x/n9iwmfZrcr5SM95YNybe4aCyt7LzfW61YerkaMsSHkg==
X-Received: by 2002:a17:906:c0c6:b0:a34:4c5e:40db with SMTP id bn6-20020a170906c0c600b00a344c5e40dbmr6071192ejb.4.1706611111218;
        Tue, 30 Jan 2024 02:38:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id cx1-20020a170907168100b00a354d25da36sm3704061ejd.83.2024.01.30.02.38.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 02:38:30 -0800 (PST)
Date: Tue, 30 Jan 2024 11:38:28 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <ZbjRpDemivdBJaSN@phenom.ffwll.local>
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
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	Christoph Hellwig <hch@lst.de>
References: <e4620acdf24628d904cedcb0030d78b14559f337.camel@crapouillou.net>
 <85a89505-edeb-4619-86c1-157f7abdd190@amd.com>
 <0fe2755fb320027234c086bcc88fd107855234c5.camel@crapouillou.net>
 <577501f9-9d1c-4f8d-9882-7c71090e5ef3@amd.com>
 <7928c0866ac5b2bfaaa56ad3422bedc9061e0f7b.camel@crapouillou.net>
 <2ac7562c-d221-409a-bfee-1b3cfcc0f1c6@amd.com>
 <ZbKiCPhRvWaz4Icn@phenom.ffwll.local>
 <c97e38ee-b860-4990-87f1-3e59d7d9c999@amd.com>
 <Zbi6zQYtnfOZu5Wh@phenom.ffwll.local>
 <a2346244-e22b-4ff6-b6cd-1da7138725ae@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2346244-e22b-4ff6-b6cd-1da7138725ae@amd.com>
X-Operating-System: Linux phenom 6.6.11-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8302C400A1
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from];
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
	FREEMAIL_CC(0.00)[crapouillou.net,gmail.com,linuxfoundation.org,lwn.net,linaro.org,kernel.org,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lst.de];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
Message-ID-Hash: CNKALZW3GE2ARHN3RKLXI3MEJAQ3P52A
X-Message-ID-Hash: CNKALZW3GE2ARHN3RKLXI3MEJAQ3P52A
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Paul Cercueil <paul@crapouillou.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Cameron <jic23@kernel.org>, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christoph Hellwig <hch@lst.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CNKALZW3GE2ARHN3RKLXI3MEJAQ3P52A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 30, 2024 at 10:23:03AM +0100, Christian K=F6nig wrote:
> Am 30.01.24 um 10:01 schrieb Daniel Vetter:
> > On Fri, Jan 26, 2024 at 05:42:50PM +0100, Christian K=F6nig wrote:
> > > [SNIP]
> > > Well I think we should have some solution, but I'm not sure if it sho=
uld be
> > > part of DMA-buf.
> > >=20
> > > Essentially a DMA-buf exports the buffers as he uses it and the impor=
ter (or
> > > the DMA-buf subsystem) is then the one who says ok I can use this or =
I can't
> > > use this or I need to call extra functions to use this or whatever.
> > >=20
> > > It's not the job of the exporter to provide the coherency for the imp=
orter,
> > > cause otherwise we would have a lot of code in the exporter which can=
 only
> > > be tested when you have the right importer around. And I strongly thi=
nk that
> > > this is a no-go for having a reliable solution.
> > The trouble is, that if you have other memory than stuff allocated by t=
he
> > dma-api or mapped using the dma-api, then by necessity the exporter has=
 to
> > deal with this.
>=20
> Yes, I was thinking about that as well.
>=20
> > Which is the exact same reason we also force the exporters to deal with
> > the cpu cache flushing - you're argument that it's not great to replica=
te
> > this everywhere holds there equally.
>=20
> And I'm not really happy with that either.
>=20
> > The other thing is that right now the exporter is the only one who
> > actually knows what kind of dma coherency rules apply for a certain pie=
ce
> > of memory. E.g. on i915-gem even if it's dma_map_sg mapped the underlyi=
ng
> > i915-gem buffer might be non-coherent, and i915-gem makes it all work by
> > doing the appropriate amount of clflush.
>=20
> Yeah, exactly that's the reason why I think that this stuff doesn't belong
> into exporters/drivers.
>=20
> Looking at what kind of hacks and workarounds we have in both amdgpu as w=
ell
> as i915 it's pretty clear that we need to improve this design somehow.

Yeah it's been a well-known issue, and we've very slowly improved things.

> > Similar funky things happen in other cases.
> >=20
> > So unless we add an interface which allows importers to figure out how
> > much flushing is needed, currently the exporter is the only one who kno=
ws
> > (because it can inspect the struct device at dma_buf_attach time).
> >=20
> > We could flip this around, but it would be a rather serious depature fr=
om
> > the dma-buf design approach thus far.
>=20
> Well clients already give the DMA-direction to exporters when creating the
> mapping and get an appropriate sg_table in return.
>=20
> All we need to do is getting the information what flushing is needed into
> the object returned here so that the DMA API can work with it.

So the problem is that we can provide this information from exporters that
do device specific stuff. But we cannot get this information from
exporters which just use the dma-api, whether it's dma_alloc or
dma_map_sg, because the core design principle of the dma-api is to hide
the coherency rules for device dma.

The idea is that you have the same ip on different socs, where on one the
soc needs cache flushing and on the other you dont (because different
architecture, or just the ip being connected to different interconnects),
you can use the exact same driver since the dma-api hides all this.

And at least every time it was discussed in the past, dma-api maintainers
insisted that we don't break this abstraction rule. Which means for most
exporters, we simply do not have this information available. This is also
why after epic long discussions it was decided that cache coherency was
the exporter's problem, so that from an importer pov there's no difference
between an sg list optained through dma_buf_map and an sg list obtained
from dma_map_sg or memory allocated with dma_alloc - in none of these
cases does the driver have to do its own cache management.

> Christoph Hellwig pretty much nailed it when he said that the problem with
> the sg_table is that it mixes input and output parameters of the DMA-API.

Hm my take away from these discussions was that sg as a data structure is
not a clean design, but I haven't ever seen Christoph (or anyone else from
the dma-api side) say that they're ok with leaking cache coherency
management to clients.

We couldn't even get the core arch primitives exported to drivers so that
dma-buf exporters could do the right cache management for their driver
specific allocators that entirely bypass the dma-api. I think what you're
suggesting would go way beyond that.

> I would extend that and say that we need a mapping object the DMA-API can
> work with so that it can know what needs to be done when devices request
> that data is made coherent between them or the CPU.

Personally I do think it makes sense as a design and iirc we discussed it
plenty in the early dma-buf discussions. I just don't think it's a
realistic design approach to upstream.

I think best we can hope for is a new set of device2device sync functions
in the dma_sg_sync_for* family of functions, so that on platforms where
syncing for cpu access requires cache flushes, but going from one device
to the next doesn't we could avoid some unecessary flushing. Currently
there's no way to do that and we have to pessimistically flush for cpu
coherency with the dma-api. Or suffer from device2device coherency issues
on funky platforms.

> > > That's why I think the approach of having DMA-buf callbacks is most l=
ikely
> > > the wrong thing to do.
> > >=20
> > > What should happen instead is that the DMA subsystem provides functio=
nality
> > > which to devices which don't support coherency through it's connectio=
n to
> > > say I want to access this data, please make sure to flush the appropr=
iate
> > > catches. But that's just a very very rough design idea.
> > >=20
> > > This will become more with CXL at the horizon I think.
> > Yeah CXL will make this all even more fun, but we are firmly there alre=
ady
> > with devices deciding per-buffer (or sometimes even per-access with
> > intel's MOCS stuff) what coherency mode to use for a buffer.
> >=20
> > Also arm soc generally have both coherent and non-coherent device
> > interconnects, and I think some devices can switch with runtime flags t=
oo
> > which mode they use for a specific transition.
> >=20
> > CXL just extends this to pcie devices.
> >=20
> > So the mess is here, how do we deal with it?
>=20
> I would say we start with the DMA-API by getting away from sg_tables to
> something cleaner and state oriented.

Imo that's a tangential distraction. Definitely would be great to untangle
that data structure, but I don't think that gets us any closer to getting
the coherency information out of the dma-api abstraction that we'd like to
have.

That part has been an extremely firm "no" every time we asked.

> > My take is that the opt-in callback addition is far from great, but it's
> > in line with how we extended dma-buf the past decade plus too. So unless
> > someone's volunteering to pour some serious time into re-engineering th=
is
> > all (including testing all the different device/driver<->device/driver
> > interactions) I think there's only really one other option: To not supp=
ort
> > these cases at all. And I don't really like that, because it means peop=
le
> > will hack together something even worse in their drivers.
> >=20
> > By adding it to dma-buf it'll stare us in our faces at least :-/
>=20
> Yeah, it's the way of the least resistance. But with CXL at the horizon a=
nd
> more and more drivers using it I think it's predictable that this will
> sooner or later blow up.

I know, it's kinda been blowing up already.

My prediction is that the best we can get out of the dma-api is a new
device2device sync, while all the coherency details are still 100% hidden
behind the dma-api. And even that is probably going to take years.

Cheers, Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
