Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3276E49E07B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 12:16:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29A8A401C5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 11:16:43 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id BC39C401C3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 11:16:33 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id f17so4158114wrx.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 03:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=EpsL82QGawXA+MspDkzQXzazfa90OBJ0RXteaUVBe0g=;
        b=efvV/UzuKzY52GovxKYPQeIOwEF/HuM9kP0DcVzxRxeiZWWO+6HIKDEdqb6uIKG6Hm
         l8DsuWLlYAVexgP9y9XfJ1bcXo4X/6C1qRV8zBrOUtJf8hHvNkHqpwPsr9Z7t5KH6+56
         uCtiV6ZgXKYtYH2nIjOXLj5xVMvWiKhtejfQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=EpsL82QGawXA+MspDkzQXzazfa90OBJ0RXteaUVBe0g=;
        b=lUMHblj+uqnW6GTdk6/OtTLBd1Usc/DMoJBKsYB1ROhVTdJHVGoBjSrKWjqIaDFC8u
         WPIlsfOn+gYkNb+Vo6xM4/E9eOCQzlAh8WHY1ykeUMVOJrzxArYcSOVcb4jywJhtlu08
         oh6t//y2vvDsTM8nvNryYwJlZZvj34GRT5GnvPXcWCmxkWR+Zslaub8vEh3kIVyv2C0a
         wqMRoXpcJlt7GD6sO2I90tIaoJbAMwlFTHFTXsP6J6oix9sw24b+PiNTLTTX9TQXayEH
         JNV4F9JIO/1iU/SD9nKhJc1GRMBbivrGKgNNKeI73kUbriLbLxrJeLfXqYqTUG2TIr4F
         nENQ==
X-Gm-Message-State: AOAM532n7wAS3WDUfXTzGpEhDWaOSeKvTjDjcv4vtZANhLXfHPTOZY6A
	0/7BZ1Nv9rCMwxiRUDjWaIU2uA==
X-Google-Smtp-Source: ABdhPJzmIT7dU5BCh30CNcGC9AQVTactJUFazjPm1BxcLRrSK8+gWT5be+KpPQUszELrlaAL5DNYVQ==
X-Received: by 2002:a5d:6543:: with SMTP id z3mr2671000wrv.619.1643282192772;
        Thu, 27 Jan 2022 03:16:32 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id f6sm1813759wrj.26.2022.01.27.03.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 03:16:31 -0800 (PST)
Date: Thu, 27 Jan 2022 12:16:30 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YfJ/DvhxaGGppGV6@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
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
 <YfJtLkdkh4yde20f@phenom.ffwll.local>
 <27aed6b1-b465-6a52-2b0a-d748c9798414@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27aed6b1-b465-6a52-2b0a-d748c9798414@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: IABONENPB5GYDHCV53APIG7LN47AUH6E
X-Message-ID-Hash: IABONENPB5GYDHCV53APIG7LN47AUH6E
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Lucas De Marchi <lucas.demarchi@intel.com>, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IABONENPB5GYDHCV53APIG7LN47AUH6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 11:21:20AM +0100, Christian K=F6nig wrote:
> Am 27.01.22 um 11:00 schrieb Daniel Vetter:
> > On Thu, Jan 27, 2022 at 01:33:32AM -0800, Lucas De Marchi wrote:
> > > On Thu, Jan 27, 2022 at 09:57:25AM +0100, Daniel Vetter wrote:
> > > > On Thu, Jan 27, 2022 at 09:02:54AM +0100, Christian K=F6nig wrote:
> > > > > Am 27.01.22 um 08:57 schrieb Lucas De Marchi:
> > > > > > On Thu, Jan 27, 2022 at 08:27:11AM +0100, Christian K=F6nig wro=
te:
> > > > > > > Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
> > > > > > > > When dma_buf_map struct is passed around, it's useful to be=
 able to
> > > > > > > > initialize a second map that takes care of reading/writing =
to an offset
> > > > > > > > of the original map.
> > > > > > > >=20
> > > > > > > > Add a helper that copies the struct and add the offset to t=
he proper
> > > > > > > > address.
> > > > > > > Well what you propose here can lead to all kind of problems a=
nd is
> > > > > > > rather bad design as far as I can see.
> > > > > > >=20
> > > > > > > The struct dma_buf_map is only to be filled in by the exporte=
r and
> > > > > > > should not be modified in this way by the importer.
> > > > > > humn... not sure if I was=A0 clear. There is no importer and ex=
porter here.
> > > > > Yeah, and exactly that's what I'm pointing out as problem here.
> > > > >=20
> > > > > You are using the inter driver framework for something internal t=
o the
> > > > > driver. That is an absolutely clear NAK!
> > > > >=20
> > > > > We could discuss that, but you guys are just sending around patch=
es to do
> > > > > this without any consensus that this is a good idea.
> > > > Uh I suggested this, also we're already using dma_buf_map all over =
the
> > > > place as a convenient abstraction. So imo that's all fine, it shoul=
d allow
> > > > drivers to simplify some code where on igpu it's in normal kernel m=
emory
> > > > and on dgpu it's behind some pci bar.
> > > >=20
> > > > Maybe we should have a better name for that struct (and maybe also a
> > > > better place), but way back when we discussed that bikeshed I didn'=
t come
> > > > up with anything better really.
> > > I suggest iosys_map since it abstracts access to IO and system memory.
> > >=20
> > > > > > There is a role delegation on filling out and reading a buffer =
when
> > > > > > that buffer represents a struct layout.
> > > > > >=20
> > > > > > struct bla {
> > > > > >  =A0=A0=A0=A0int a;
> > > > > >  =A0=A0=A0=A0int b;
> > > > > >  =A0=A0=A0=A0int c;
> > > > > >  =A0=A0=A0=A0struct foo foo;
> > > > > >  =A0=A0=A0=A0struct bar bar;
> > > > > >  =A0=A0=A0=A0int d;
> > > > > > }
> > > > > >=20
> > > > > >=20
> > > > > > This implementation allows you to have:
> > > > > >=20
> > > > > >  =A0=A0=A0=A0fill_foo(struct dma_buf_map *bla_map) { ... }
> > > > > >  =A0=A0=A0=A0fill_bar(struct dma_buf_map *bla_map) { ... }
> > > > > >=20
> > > > > > and the first thing these do is to make sure the map it's point=
ing to
> > > > > > is relative to the struct it's supposed to write/read. Otherwis=
e you're
> > > > > > suggesting everything to be relative to struct bla, or to do th=
e same
> > > > > > I'm doing it, but IMO more prone to error:
> > > > > >=20
> > > > > >  =A0=A0=A0=A0struct dma_buf_map map =3D *bla_map;
> > > > > >  =A0=A0=A0=A0dma_buf_map_incr(map, offsetof(...));
> > > > Wrt the issue at hand I think the above is perfectly fine code. The=
 idea
> > > > with dma_buf_map is really that it's just a special pointer, so wri=
ting
> > > > the code exactly as pointer code feels best. Unfortunately you cann=
ot make
> > > > them typesafe (because of C), so the code sometimes looks a bit ugl=
y.
> > > > Otherwise we could do stuff like container_of and all that with
> > > > typechecking in the macros.
> > > I had exactly this code above, but after writting quite a few patches
> > > using it, particularly with functions that have to write to 2 maps (s=
ee
> > > patch 6 for example), it felt much better to have something to
> > > initialize correctly from the start
> > >=20
> > > 	struct dma_buf_map other_map =3D *bla_map;
> > > 	/* poor Lucas forgetting dma_buf_map_incr(map, offsetof(...)); */
> > >=20
> > > is error prone and hard to debug since you will be reading/writting
> > > from/to another location rather than exploding
> > >=20
> > > While with the construct below
> > >=20
> > > 	other_map;
> > > 	...
> > > 	other_map =3D INITIALIZER()
> > >=20
> > > I can rely on the compiler complaining about uninitialized var. And
> > > in most of the cases I can just have this single line in the begginin=
g of the
> > > function when the offset is constant:
> > >=20
> > > 	struct dma_buf_map other_map =3D INITIALIZER(bla_map, offsetof(..));
> > Hm yeah that's a good point that this allows us to rely on the compiler=
 to
> > check for uninitialized variables.
> >=20
> > Maybe include the above (with editing, but keeping the examples) in the
> > kerneldoc to explain why/how to use this? With that the concept at least
> > has my
> >=20
> > Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> >=20
> > I'll leave it up to you & Christian to find a prettier color choice for
> > the naming bikeshed.
>=20
> There is one major issue remaining with this and that is dma_buf_vunmap():
>=20
> void dma_buf_vunmap(struct dma_buf *dmabuf, struct dma_buf_map *map);
>=20
> Here we expect the original pointer as returned by dma_buf_map(), otherwi=
se
> we vunmap() the wrong area!
>=20
> For all TTM based driver this doesn't matter since we keep the vmap base
> separately in the BO anyway (IIRC), but we had at least one case where th=
is
> made boom last year.

Yeah but isn't that the same if it's just a void *?

If you pass the wrong pointer to an unmap function and not exactly what
you go from the map function, then things go boom. This is like
complaining that the following code wont work

	u32 *stuff

	stuff =3D kmap_local(some_page);
	*stuff++ =3D 0;
	*stuff =3D 1;
	kunmap_locak(stuff);

It's just ... don't do that :-) Also since we pass dma_buf_map by value
and not by pointer anywhere, the risk of this happening is pretty low
since you tend to work on a copy. Same with void * pointers really.

Now if people start to pass around struct dma_buf_map * as pointers for
anything else than out parameters, then we're screwed. But that's like
passing around void ** for lolz, which is just wrong (except when it's an
out parameter or actually an array of pointers ofc).

Or I really don't get your concern and you mean something else?
-Daniel


> Christian.
>=20
> > -Daniel
> >=20
> > > Lucas De Marchi
> > >=20
> > > > -Daniel
> > > >=20
> > > > > > IMO this construct is worse because at a point in time in the f=
unction
> > > > > > the map was pointing to the wrong thing the function was suppos=
ed to
> > > > > > read/write.
> > > > > >=20
> > > > > > It's also useful when the function has double duty, updating a =
global
> > > > > > part of the struct and a table inside it (see example in patch =
6)
> > > > > >=20
> > > > > > thanks
> > > > > > Lucas De Marchi
> > > > --=20
> > > > Daniel Vetter
> > > > Software Engineer, Intel Corporation
> > > > https://nam11.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2F=
blog.ffwll.ch%2F&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com%7C0654a16e=
a3444271d7c308d9e17bd35d%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63778=
8744226808874%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL=
CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DQ6soluBglaZLhLszdapaWuUVsq=
Mq5qvJOKiJjO%2B9BTg%3D&amp;reserved=3D0
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
