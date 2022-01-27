Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB984B6B02
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 12:33:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 225C93EEC1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 11:33:11 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id 772713EBBC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 07:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643269341; x=1674805341;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=mPi71fris68ShFSFX7NPuifeZxZK9rkUhwdbL0MGzp4=;
  b=YoaYMRvwxwcmEpiP2eD4bnU84ikcBxFBp3PxiMY+B2fpppJCcpJSXkJk
   zO+BtlXL7Wz9ghcFtdws2a752OZyNKVMK5rDQKjwdBppC60d9cU6Hzttk
   ApH3Ulfijv6sLew0wWsmk6BHjnyc63w262axhtgEemI4s+O5gr11JOiLF
   tcUQzOyE3X9sYjAa6gptfKJ5xgOXgcALCiOVBVz3PQjxzWGCVMDQpLp7k
   noG1IX0AnjCHzjYYyAe3yhtmwZ5j1LyRDdC4kLwjVfLmd6kjcN01nn6U7
   LfWigMvXmXjcq2XCZT8GLI58CCKWLoDjCLbj6j2OumMe1XPGz01YyIK8g
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="245616097"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="245616097"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2022 23:42:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600";
   d="scan'208";a="480191093"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box) ([10.1.27.20])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2022 23:42:19 -0800
Date: Wed, 26 Jan 2022 23:36:37 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20220127073637.GA17282@jons-linux-dev-box>
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-2-lucas.demarchi@intel.com>
 <91bfa9d4-99fc-767e-5ba2-a2643cf585f5@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91bfa9d4-99fc-767e-5ba2-a2643cf585f5@amd.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-MailFrom: matthew.brost@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4AL2FNM73WCF7U3H5GX6ZN44GHICBBVA
X-Message-ID-Hash: 4AL2FNM73WCF7U3H5GX6ZN44GHICBBVA
X-Mailman-Approved-At: Tue, 15 Feb 2022 11:33:07 +0000
CC: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/19] dma-buf-map: Add read/write helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4AL2FNM73WCF7U3H5GX6ZN44GHICBBVA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 27, 2022 at 08:24:04AM +0100, Christian K=F6nig wrote:
> Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
> > In certain situations it's useful to be able to read or write to an
> > offset that is calculated by having the memory layout given by a struct
> > declaration. Usually we are going to read/write a u8, u16, u32 or u64.
> >=20
> > Add a pair of macros dma_buf_map_read_field()/dma_buf_map_write_field()
> > to calculate the offset of a struct member and memcpy the data from/to
> > the dma_buf_map. We could use readb, readw, readl, readq and the write*
> > counterparts, however due to alignment issues this may not work on all
> > architectures. If alignment needs to be checked to call the right
> > function, it's not possible to decide at compile-time which function to
> > call: so just leave the decision to the memcpy function that will do
> > exactly that on IO memory or dereference the pointer.
> >=20
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: Christian K=F6nig <christian.koenig@amd.com>
> > Cc: linux-media@vger.kernel.org
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: linaro-mm-sig@lists.linaro.org
> > Cc: linux-kernel@vger.kernel.org
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >   include/linux/dma-buf-map.h | 81 +++++++++++++++++++++++++++++++++++++
> >   1 file changed, 81 insertions(+)
> >=20
> > diff --git a/include/linux/dma-buf-map.h b/include/linux/dma-buf-map.h
> > index 19fa0b5ae5ec..65e927d9ce33 100644
> > --- a/include/linux/dma-buf-map.h
> > +++ b/include/linux/dma-buf-map.h
> > @@ -6,6 +6,7 @@
> >   #ifndef __DMA_BUF_MAP_H__
> >   #define __DMA_BUF_MAP_H__
> > +#include <linux/kernel.h>
> >   #include <linux/io.h>
> >   #include <linux/string.h>
> > @@ -229,6 +230,46 @@ static inline void dma_buf_map_clear(struct dma_bu=
f_map *map)
> >   	}
> >   }
> > +/**
> > + * dma_buf_map_memcpy_to_offset - Memcpy into offset of dma-buf mapping
> > + * @dst:	The dma-buf mapping structure
> > + * @offset:	The offset from which to copy
> > + * @src:	The source buffer
> > + * @len:	The number of byte in src
> > + *
> > + * Copies data into a dma-buf mapping with an offset. The source buffe=
r is in
> > + * system memory. Depending on the buffer's location, the helper picks=
 the
> > + * correct method of accessing the memory.
> > + */
> > +static inline void dma_buf_map_memcpy_to_offset(struct dma_buf_map *ds=
t, size_t offset,
> > +						const void *src, size_t len)
> > +{
> > +	if (dst->is_iomem)
> > +		memcpy_toio(dst->vaddr_iomem + offset, src, len);
> > +	else
> > +		memcpy(dst->vaddr + offset, src, len);
> > +}
> > +
> > +/**
> > + * dma_buf_map_memcpy_from_offset - Memcpy from offset of dma-buf mapp=
ing into system memory
> > + * @dst:	Destination in system memory
> > + * @src:	The dma-buf mapping structure
> > + * @src:	The offset from which to copy
> > + * @len:	The number of byte in src
> > + *
> > + * Copies data from a dma-buf mapping with an offset. The dest buffer =
is in
> > + * system memory. Depending on the mapping location, the helper picks =
the
> > + * correct method of accessing the memory.
> > + */
> > +static inline void dma_buf_map_memcpy_from_offset(void *dst, const str=
uct dma_buf_map *src,
> > +						  size_t offset, size_t len)
> > +{
> > +	if (src->is_iomem)
> > +		memcpy_fromio(dst, src->vaddr_iomem + offset, len);
> > +	else
> > +		memcpy(dst, src->vaddr + offset, len);
> > +}
> > +
>=20
> Well that's certainly a valid use case, but I suggest to change the
> implementation of the existing functions to call the new ones with offset=
=3D0.
>=20
> This way we only have one implementation.
>=20
Trivial - but agree with Christian that is a good cleanup.

> >   /**
> >    * dma_buf_map_memcpy_to - Memcpy into dma-buf mapping
> >    * @dst:	The dma-buf mapping structure
> > @@ -263,4 +304,44 @@ static inline void dma_buf_map_incr(struct dma_buf=
_map *map, size_t incr)
> >   		map->vaddr +=3D incr;
> >   }
> > +/**
> > + * dma_buf_map_read_field - Read struct member from dma-buf mapping wi=
th
> > + * arbitrary size and handling un-aligned accesses
> > + *
> > + * @map__:	The dma-buf mapping structure
> > + * @type__:	The struct to be used containing the field to read
> > + * @field__:	Member from struct we want to read
> > + *
> > + * Read a value from dma-buf mapping calculating the offset and size: =
this assumes
> > + * the dma-buf mapping is aligned with a a struct type__. A single u8,=
 u16, u32
> > + * or u64 can be read, based on the offset and size of type__.field__.
> > + */
> > +#define dma_buf_map_read_field(map__, type__, field__) ({				\
> > +	type__ *t__;									\
> > +	typeof(t__->field__) val__;							\
> > +	dma_buf_map_memcpy_from_offset(&val__, map__, offsetof(type__, field_=
_),	\
> > +				       sizeof(t__->field__));				\
> > +	val__;										\
> > +})
> > +
> > +/**
> > + * dma_buf_map_write_field - Write struct member to the dma-buf mappin=
g with
> > + * arbitrary size and handling un-aligned accesses
> > + *
> > + * @map__:	The dma-buf mapping structure
> > + * @type__:	The struct to be used containing the field to write
> > + * @field__:	Member from struct we want to write
> > + * @val__:	Value to be written
> > + *
> > + * Write a value to the dma-buf mapping calculating the offset and siz=
e.
> > + * A single u8, u16, u32 or u64 can be written based on the offset and=
 size of
> > + * type__.field__.
> > + */
> > +#define dma_buf_map_write_field(map__, type__, field__, val__) ({			\
> > +	type__ *t__;									\
> > +	typeof(t__->field__) val____ =3D val__;						\
> > +	dma_buf_map_memcpy_to_offset(map__, offsetof(type__, field__),			\
> > +				     &val____, sizeof(t__->field__));			\
> > +})
> > +
>=20
> Uff well that absolutely looks like overkill to me.
>=20

Hold on...

> That's a rather special use case as far as I can see and I think we should
> only have this in the common framework if more than one driver is using i=
t.
>

I disagree, this is rather elegant.

The i915 can't be the *only* driver that defines a struct which
describes the layout of a dma_buf object. =20

IMO this base macro allows *all* other drivers to build on this write
directly to fields in structures those drivers have defined. Patches
later in this series do this for the GuC ads.

Matt
=20
> Regards,
> Christian.
>=20
> >   #endif /* __DMA_BUF_MAP_H__ */
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
