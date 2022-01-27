Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A623A49DE9E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 11:00:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C0E6401D4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 10:00:29 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id 4428C3EBBC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 10:00:19 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id c23so3715893wrb.5
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 02:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=dj+Wxdz6jJyNZo3oThjdxQEE66JUp4dziKqN/pwvYhw=;
        b=YpQltIzwqQUIZLwJV9b7TpxpNtLjJFOUUFaDuIY26pQRByLg/xUO0XcNO1hXuzgrtv
         aXl2Ea2ymMN7sHKA1BKyX7TuvIs+MfmbCx1sApsh3bpKknTlQ9SWaixDSnqHtxqdTSri
         E4CRr7QEGLltTYA32aqiK2eD9wBeb86J4/dhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=dj+Wxdz6jJyNZo3oThjdxQEE66JUp4dziKqN/pwvYhw=;
        b=ze9DyBkeWUjMNHNtyyV8xuz9AMMLyPT0SsSoZEWNDm9hUYJesgW5a5UjY7fmYQpRg7
         ++TwcDD3yPxyUWUlraIoinEtp9Qe4Y8XpSmqB9bX+WE3xZ97JgP3IU9EujWyw45owle/
         YhjWCQsFquBKJyhf537reI32bwXANLyN41/4aOZ8WMTQ9OnsgxXVK4th3hc94XwjCgjk
         MwBVkeNTpmenK2VBl2jjx1gfJpmzmYafYuvNdhA7Jqnzm5+AS4GHAReLzHu9t7/5ZPNQ
         iG6aAGDyULKrwMFrMERhnxp+/aL9VbMDsmsied/f13oR5IJeQ2OOBuCMteHC6iy3wU71
         UvxQ==
X-Gm-Message-State: AOAM533VCfZlZ+8P8U0oM7MWQhiExIX/rKhT5BNKMc16Ki4KypfX2ks0
	sec93wIfoU4cOdDpC1PYO7ME4Q==
X-Google-Smtp-Source: ABdhPJyZcMRUfkbUyRjJW3Arq9MAqFzUEFnjmUGAvJqKbxi8qGWFKt2XXxgNxptn90NiYH0fbc4aFA==
X-Received: by 2002:a5d:55c3:: with SMTP id i3mr2307961wrw.537.1643277618288;
        Thu, 27 Jan 2022 02:00:18 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id i2sm1843836wmq.23.2022.01.27.02.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 02:00:17 -0800 (PST)
Date: Thu, 27 Jan 2022 11:00:14 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YfJtLkdkh4yde20f@phenom.ffwll.local>
Mail-Followup-To: Lucas De Marchi <lucas.demarchi@intel.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
 <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
 <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
 <YfJedaoeJjE3grum@phenom.ffwll.local>
 <20220127093332.wnkd2qy4tvwg5i5l@ldmartin-desk2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220127093332.wnkd2qy4tvwg5i5l@ldmartin-desk2>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: Y7P6LJWOB44RTAGJSETKJI6OBW777ZGS
X-Message-ID-Hash: Y7P6LJWOB44RTAGJSETKJI6OBW777ZGS
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y7P6LJWOB44RTAGJSETKJI6OBW777ZGS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 01:33:32AM -0800, Lucas De Marchi wrote:
> On Thu, Jan 27, 2022 at 09:57:25AM +0100, Daniel Vetter wrote:
> > On Thu, Jan 27, 2022 at 09:02:54AM +0100, Christian K=F6nig wrote:
> > > Am 27.01.22 um 08:57 schrieb Lucas De Marchi:
> > > > On Thu, Jan 27, 2022 at 08:27:11AM +0100, Christian K=F6nig wrote:
> > > > > Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
> > > > > > When dma_buf_map struct is passed around, it's useful to be abl=
e to
> > > > > > initialize a second map that takes care of reading/writing to a=
n offset
> > > > > > of the original map.
> > > > > >
> > > > > > Add a helper that copies the struct and add the offset to the p=
roper
> > > > > > address.
> > > > >
> > > > > Well what you propose here can lead to all kind of problems and is
> > > > > rather bad design as far as I can see.
> > > > >
> > > > > The struct dma_buf_map is only to be filled in by the exporter and
> > > > > should not be modified in this way by the importer.
> > > >
> > > > humn... not sure if I was=A0 clear. There is no importer and export=
er here.
> > >=20
> > > Yeah, and exactly that's what I'm pointing out as problem here.
> > >=20
> > > You are using the inter driver framework for something internal to the
> > > driver. That is an absolutely clear NAK!
> > >=20
> > > We could discuss that, but you guys are just sending around patches t=
o do
> > > this without any consensus that this is a good idea.
> >=20
> > Uh I suggested this, also we're already using dma_buf_map all over the
> > place as a convenient abstraction. So imo that's all fine, it should al=
low
> > drivers to simplify some code where on igpu it's in normal kernel memory
> > and on dgpu it's behind some pci bar.
> >=20
> > Maybe we should have a better name for that struct (and maybe also a
> > better place), but way back when we discussed that bikeshed I didn't co=
me
> > up with anything better really.
>=20
> I suggest iosys_map since it abstracts access to IO and system memory.
>=20
> >=20
> > > > There is a role delegation on filling out and reading a buffer when
> > > > that buffer represents a struct layout.
> > > >
> > > > struct bla {
> > > > =A0=A0=A0=A0int a;
> > > > =A0=A0=A0=A0int b;
> > > > =A0=A0=A0=A0int c;
> > > > =A0=A0=A0=A0struct foo foo;
> > > > =A0=A0=A0=A0struct bar bar;
> > > > =A0=A0=A0=A0int d;
> > > > }
> > > >
> > > >
> > > > This implementation allows you to have:
> > > >
> > > > =A0=A0=A0=A0fill_foo(struct dma_buf_map *bla_map) { ... }
> > > > =A0=A0=A0=A0fill_bar(struct dma_buf_map *bla_map) { ... }
> > > >
> > > > and the first thing these do is to make sure the map it's pointing =
to
> > > > is relative to the struct it's supposed to write/read. Otherwise yo=
u're
> > > > suggesting everything to be relative to struct bla, or to do the sa=
me
> > > > I'm doing it, but IMO more prone to error:
> > > >
> > > > =A0=A0=A0=A0struct dma_buf_map map =3D *bla_map;
> > > > =A0=A0=A0=A0dma_buf_map_incr(map, offsetof(...));
> >=20
> > Wrt the issue at hand I think the above is perfectly fine code. The idea
> > with dma_buf_map is really that it's just a special pointer, so writing
> > the code exactly as pointer code feels best. Unfortunately you cannot m=
ake
> > them typesafe (because of C), so the code sometimes looks a bit ugly.
> > Otherwise we could do stuff like container_of and all that with
> > typechecking in the macros.
>=20
> I had exactly this code above, but after writting quite a few patches
> using it, particularly with functions that have to write to 2 maps (see
> patch 6 for example), it felt much better to have something to
> initialize correctly from the start
>=20
> 	struct dma_buf_map other_map =3D *bla_map;
> 	/* poor Lucas forgetting dma_buf_map_incr(map, offsetof(...)); */
>=20
> is error prone and hard to debug since you will be reading/writting
> from/to another location rather than exploding
>=20
> While with the construct below
>=20
> 	other_map;
> 	...
> 	other_map =3D INITIALIZER()
>=20
> I can rely on the compiler complaining about uninitialized var. And
> in most of the cases I can just have this single line in the beggining of=
 the
> function when the offset is constant:
>=20
> 	struct dma_buf_map other_map =3D INITIALIZER(bla_map, offsetof(..));

Hm yeah that's a good point that this allows us to rely on the compiler to
check for uninitialized variables.

Maybe include the above (with editing, but keeping the examples) in the
kerneldoc to explain why/how to use this? With that the concept at least
has my

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I'll leave it up to you & Christian to find a prettier color choice for
the naming bikeshed.
-Daniel

>=20
> Lucas De Marchi
>=20
> > -Daniel
> >=20
> > > > IMO this construct is worse because at a point in time in the funct=
ion
> > > > the map was pointing to the wrong thing the function was supposed to
> > > > read/write.
> > > >
> > > > It's also useful when the function has double duty, updating a glob=
al
> > > > part of the struct and a table inside it (see example in patch 6)
> > > >
> > > > thanks
> > > > Lucas De Marchi
> > >=20
> >=20
> > --=20
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
