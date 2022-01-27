Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1873A49DD12
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 09:57:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 487A5401D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 08:57:38 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id DC5AA3ECC6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 08:57:28 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id e2so3436377wra.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 00:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=GY57P1sggKQ62F4MEfPuJxIuvLtyxZj9XProYJhJxXM=;
        b=BFIDGD8+9JuJaij5kjA57/Ww0Pz80Ocaf+mPmpMVDFv2ANWrz/twd25od88fymMu2A
         7jF8V9WRibRV6s+TvF87EfnRU5aEtFNuuo7xVlIcNCAJwiBoULAZH0azGNmKS/D8qE1i
         p/4cxUf3Px0hOtXdXk+PYoh7+pes5xdG9tVrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=GY57P1sggKQ62F4MEfPuJxIuvLtyxZj9XProYJhJxXM=;
        b=O1q53dd7EP2KW3MtU2Rx1EEi9y+HMuGrSylIJb4EJfywlGhOFkWZcQhOA0hqPPNvDZ
         s0Y0s8HZokYyEjK8r1rAooKSWknWUoGAtm4aX+9fZn3NqOoAkWRNtjtrrWL9C9m++8CR
         kDvMzYkyjwXjlbCbQglXYxhzxvR8YDn9w9cj5bI/y7iKrdW2uMR3f3r58T2Wt/u5S+ih
         nNymUAyED7GLGY+GMNA40j8zVyvOk+ENsgE7SCaMhAGmwsMpC578CaEBVuHm2Rtd/Gzp
         M7QUXAUw9TJrLNglvsBgiPoy5yB4sHnA+3YXM9Y7iiKiaGCzZEC0sW7LHGwbaXUFVkOf
         QTjA==
X-Gm-Message-State: AOAM532To/GC/2DUmjI6PcEmlIA8ncvUI9RhWOMkmtr+3nVrKdPTqxdK
	MkXSwtQZzj1pbDjXMRbHOPGlvQ==
X-Google-Smtp-Source: ABdhPJyRQitMhUS+Ju/DLA/Kq0oR28qWU34o39eLzwkQsZqjzWAXY9sqLltQKK1y9VACzumfZZYb4w==
X-Received: by 2002:adf:f252:: with SMTP id b18mr2135447wrp.50.1643273847900;
        Thu, 27 Jan 2022 00:57:27 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id l10sm1806803wry.67.2022.01.27.00.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 00:57:27 -0800 (PST)
Date: Thu, 27 Jan 2022 09:57:25 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YfJedaoeJjE3grum@phenom.ffwll.local>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: ZOLEWY5VTD5GVIS4NCVKEOCTRH4L63E5
X-Message-ID-Hash: ZOLEWY5VTD5GVIS4NCVKEOCTRH4L63E5
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Lucas De Marchi <lucas.demarchi@intel.com>, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZOLEWY5VTD5GVIS4NCVKEOCTRH4L63E5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 09:02:54AM +0100, Christian K=F6nig wrote:
> Am 27.01.22 um 08:57 schrieb Lucas De Marchi:
> > On Thu, Jan 27, 2022 at 08:27:11AM +0100, Christian K=F6nig wrote:
> > > Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
> > > > When dma_buf_map struct is passed around, it's useful to be able to
> > > > initialize a second map that takes care of reading/writing to an of=
fset
> > > > of the original map.
> > > >=20
> > > > Add a helper that copies the struct and add the offset to the proper
> > > > address.
> > >=20
> > > Well what you propose here can lead to all kind of problems and is
> > > rather bad design as far as I can see.
> > >=20
> > > The struct dma_buf_map is only to be filled in by the exporter and
> > > should not be modified in this way by the importer.
> >=20
> > humn... not sure if I was=A0 clear. There is no importer and exporter h=
ere.
>=20
> Yeah, and exactly that's what I'm pointing out as problem here.
>=20
> You are using the inter driver framework for something internal to the
> driver. That is an absolutely clear NAK!
>=20
> We could discuss that, but you guys are just sending around patches to do
> this without any consensus that this is a good idea.

Uh I suggested this, also we're already using dma_buf_map all over the
place as a convenient abstraction. So imo that's all fine, it should allow
drivers to simplify some code where on igpu it's in normal kernel memory
and on dgpu it's behind some pci bar.

Maybe we should have a better name for that struct (and maybe also a
better place), but way back when we discussed that bikeshed I didn't come
up with anything better really.

> > There is a role delegation on filling out and reading a buffer when
> > that buffer represents a struct layout.
> >=20
> > struct bla {
> > =A0=A0=A0=A0int a;
> > =A0=A0=A0=A0int b;
> > =A0=A0=A0=A0int c;
> > =A0=A0=A0=A0struct foo foo;
> > =A0=A0=A0=A0struct bar bar;
> > =A0=A0=A0=A0int d;
> > }
> >=20
> >=20
> > This implementation allows you to have:
> >=20
> > =A0=A0=A0=A0fill_foo(struct dma_buf_map *bla_map) { ... }
> > =A0=A0=A0=A0fill_bar(struct dma_buf_map *bla_map) { ... }
> >=20
> > and the first thing these do is to make sure the map it's pointing to
> > is relative to the struct it's supposed to write/read. Otherwise you're
> > suggesting everything to be relative to struct bla, or to do the same
> > I'm doing it, but IMO more prone to error:
> >=20
> > =A0=A0=A0=A0struct dma_buf_map map =3D *bla_map;
> > =A0=A0=A0=A0dma_buf_map_incr(map, offsetof(...));

Wrt the issue at hand I think the above is perfectly fine code. The idea
with dma_buf_map is really that it's just a special pointer, so writing
the code exactly as pointer code feels best. Unfortunately you cannot make
them typesafe (because of C), so the code sometimes looks a bit ugly.
Otherwise we could do stuff like container_of and all that with
typechecking in the macros.
-Daniel

> > IMO this construct is worse because at a point in time in the function
> > the map was pointing to the wrong thing the function was supposed to
> > read/write.
> >=20
> > It's also useful when the function has double duty, updating a global
> > part of the struct and a table inside it (see example in patch 6)
> >=20
> > thanks
> > Lucas De Marchi
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
