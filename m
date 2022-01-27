Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D63249DD31
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 10:02:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E72D401C5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 09:02:31 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id CAAD3401C5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 09:02:21 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id o1-20020a1c4d01000000b0034d95625e1fso5384217wmh.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 01:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=2eUp5BPA7UfOIln4xH7CwxT1Ma80FeWymOHUn7zCIP4=;
        b=dyrPXO7cE4gGhdr62w9NB2LQs7tCfPqXlS9wZhcNJ3LBFuWW5npKrGGN8Cazq8NJot
         BxyCmogAv1xf8upzj44O4tbQ1nXye5DqAz4KDKa+WFj0vpjF4FS5UUA4i8UW94oJvPyC
         l+syOL5kJlAvG+sdasXA5o4s4EboxOAc+MtoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=2eUp5BPA7UfOIln4xH7CwxT1Ma80FeWymOHUn7zCIP4=;
        b=4zx2N3z/VT73L7ERB2qdoDhcfgmIFJE8Dh6XQ0Pl6tUQPtpy+Hk3f8yU6Yq0HRictQ
         zIUmc7UBnimjSvIS8i44mAlh0PcHqoVd05n+kPcjMBnGiHRy5pKHLYMgEQlmtWBIg690
         WCLUNp6w8HC61xozsB6P5EJMbtY273rTH3eGx+zFXyQ9za7Im948fDoJJVHnMlByiwIz
         c1CjddwUxgLwR79SYVLvWTA3FEXl6Sue70gAaD0chcHNu10muyTONyV1v3e+UAnlkkdY
         vRCcbSlURPXRxmDFb7eZvfdkt5i7s3kyM1TodMieQM+M9O53gIL3u0veUNA20LTCBGol
         zoYg==
X-Gm-Message-State: AOAM5333tOTaX++8hOl9A2OG3Ru3uDdPcj5XLK/Luf3Gx4vssjzjtG1/
	1C7b55jR6o1p63jVKZ7jlbfcTQ==
X-Google-Smtp-Source: ABdhPJx7pri2h0SYfqbY/4LaK5La7Uq+0ogxt1MTcUVnBBIqjx46Tng5d79ruBwDVjMRf43CzcKvZw==
X-Received: by 2002:a05:600c:1994:: with SMTP id t20mr5336216wmq.124.1643274140526;
        Thu, 27 Jan 2022 01:02:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id r8sm1595758wrx.2.2022.01.27.01.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 01:02:19 -0800 (PST)
Date: Thu, 27 Jan 2022 10:02:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YfJfmitYfbqIgqqC@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Matthew Brost <matthew.brost@intel.com>,
	intel-gfx@lists.freedesktop.org,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-2-lucas.demarchi@intel.com>
 <91bfa9d4-99fc-767e-5ba2-a2643cf585f5@amd.com>
 <20220127073637.GA17282@jons-linux-dev-box>
 <0f948558-6f31-fd81-5349-38ab21379f86@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f948558-6f31-fd81-5349-38ab21379f86@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: HE52M763B6Y4HKCKO5VHBGALJX2VSEGD
X-Message-ID-Hash: HE52M763B6Y4HKCKO5VHBGALJX2VSEGD
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 01/19] dma-buf-map: Add read/write helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HE52M763B6Y4HKCKO5VHBGALJX2VSEGD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 08:59:36AM +0100, Christian K=F6nig wrote:
> Am 27.01.22 um 08:36 schrieb Matthew Brost:
> > [SNIP]
> > > >    /**
> > > >     * dma_buf_map_memcpy_to - Memcpy into dma-buf mapping
> > > >     * @dst:	The dma-buf mapping structure
> > > > @@ -263,4 +304,44 @@ static inline void dma_buf_map_incr(struct dma=
_buf_map *map, size_t incr)
> > > >    		map->vaddr +=3D incr;
> > > >    }
> > > > +/**
> > > > + * dma_buf_map_read_field - Read struct member from dma-buf mappin=
g with
> > > > + * arbitrary size and handling un-aligned accesses
> > > > + *
> > > > + * @map__:	The dma-buf mapping structure
> > > > + * @type__:	The struct to be used containing the field to read
> > > > + * @field__:	Member from struct we want to read
> > > > + *
> > > > + * Read a value from dma-buf mapping calculating the offset and si=
ze: this assumes
> > > > + * the dma-buf mapping is aligned with a a struct type__. A single=
 u8, u16, u32
> > > > + * or u64 can be read, based on the offset and size of type__.fiel=
d__.
> > > > + */
> > > > +#define dma_buf_map_read_field(map__, type__, field__) ({				\
> > > > +	type__ *t__;									\
> > > > +	typeof(t__->field__) val__;							\
> > > > +	dma_buf_map_memcpy_from_offset(&val__, map__, offsetof(type__, fi=
eld__),	\
> > > > +				       sizeof(t__->field__));				\
> > > > +	val__;										\
> > > > +})
> > > > +
> > > > +/**
> > > > + * dma_buf_map_write_field - Write struct member to the dma-buf ma=
pping with
> > > > + * arbitrary size and handling un-aligned accesses
> > > > + *
> > > > + * @map__:	The dma-buf mapping structure
> > > > + * @type__:	The struct to be used containing the field to write
> > > > + * @field__:	Member from struct we want to write
> > > > + * @val__:	Value to be written
> > > > + *
> > > > + * Write a value to the dma-buf mapping calculating the offset and=
 size.
> > > > + * A single u8, u16, u32 or u64 can be written based on the offset=
 and size of
> > > > + * type__.field__.
> > > > + */
> > > > +#define dma_buf_map_write_field(map__, type__, field__, val__) ({	=
		\
> > > > +	type__ *t__;									\
> > > > +	typeof(t__->field__) val____ =3D val__;						\
> > > > +	dma_buf_map_memcpy_to_offset(map__, offsetof(type__, field__),			\
> > > > +				     &val____, sizeof(t__->field__));			\
> > > > +})
> > > > +
> > > Uff well that absolutely looks like overkill to me.
> > >=20
> > Hold on...
> >=20
> > > That's a rather special use case as far as I can see and I think we s=
hould
> > > only have this in the common framework if more than one driver is usi=
ng it.
> > >=20
> > I disagree, this is rather elegant.
> >=20
> > The i915 can't be the *only* driver that defines a struct which
> > describes the layout of a dma_buf object.
>=20
> That's not the problem, amdgpu as well as nouveau are doing that as well.
> The problem is DMA-buf is a buffer sharing framework between drivers.
>=20
> In other words which importer is supposed to use this with a DMA-buf
> exported by another device?
>=20
> > IMO this base macro allows *all* other drivers to build on this write
> > directly to fields in structures those drivers have defined.
>=20
> Exactly that's the point. This is something drivers should absolutely *NO=
T*
> do.
>=20
> That are driver internals and it is extremely questionable to move this i=
nto
> the common framework.

See my other reply.

This is about struct dma_buf_map, which is just a tagged pointer.

Which happens to be used by the dma_buf cross-driver interface, but it's
also used plenty internally in buffer allocation helpers, fbdev,
everything else. And it was _meant_ to be used like that - this thing is
my idea, I know :-)

I guess we could move/rename it, but like I said I really don't have any
good ideas. Got some?
-Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
