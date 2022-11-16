Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3332062CB62
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Nov 2022 21:48:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E765C3F4D3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Nov 2022 20:48:25 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by lists.linaro.org (Postfix) with ESMTPS id 8FE693F1BB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Nov 2022 20:48:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=googlemail.com header.s=20210112 header.b=ae8G2P4a;
	spf=pass (lists.linaro.org: domain of lukasz.wiecaszek@googlemail.com designates 209.85.208.174 as permitted sender) smtp.mailfrom=lukasz.wiecaszek@googlemail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id u11so23353404ljk.6
        for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Nov 2022 12:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6JrqJ6Sbn/mpwug3ot31DQ5jlBaAKyV9UfORVKR2Mss=;
        b=ae8G2P4a+COzSBWklcw0bHYPAGArR/ipKsW+u7fiYxLC5RpiZCMPR1nP6paPHPtTU+
         ixAtrPPkYXbQrKfG9JJYkVYljE/UarocqtY2NdpjfKE/yG+428aRbIWnx8d23Nbgngem
         03e0erDFegoKeZ43KUMQmwfav4coOnd7KBBFBNxo/+2jdxIkFW/kgI3aW8cwEaDubHWz
         VW6GaCciKF2TAdB14poivTQIW0ORCgyvavOMn59cxTTT7hkGEXlT1JRgnxxWahYX3oCj
         zFfb2hQCOlTpnhIxRLUJq3uz7DGJW4p/zHMlSmf1UqgBuzLCY3UyXYDvx9/fs5eBxPWR
         VBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6JrqJ6Sbn/mpwug3ot31DQ5jlBaAKyV9UfORVKR2Mss=;
        b=DN2DjefIhDORu6neHbcTgZ14RZgpayAqFEB2W3Zm62vAUGve2gl9SfQTWKXZVL75/C
         8Xy8nvmr9OP9GEp27cd3O2Xv5rLIijz0hVjE8pCWAvcQ3/NHa+OEj5BOunKMCvlun2lH
         6FNO0ElWcHyRduxrnf2nw93Z3a3Avrf+deU+Yt64yZh+z1h+m30BzKEHwlo/lmqTWs6D
         dMl9TTZO1ju7nPZJMNZoGBvIuZf7cd/rG8YVrEgKXvxJtK68qRaxdB9J4XwfEshrmf4m
         5s4WMUC93YOOSwa1NmkuORSaurCB9bPO8XqsPtVutMFmiwH4uCr42JYVU00xcL6YaHVv
         TUbA==
X-Gm-Message-State: ANoB5pkr0tathFh9Bs/5LsCTNbnK59xf5X3cI7O9HxUdBCCN9oe/yW2c
	xlViN2YESCpzp7EOYBo71WI=
X-Google-Smtp-Source: AA0mqf7c2zjF447ne46/zGiLbIu4u1JQD5e98fP8HM3pjr3ANuBHPVYOBUVr94QMa4CkrW+Ny/1oPw==
X-Received: by 2002:a2e:9103:0:b0:278:fa62:bc90 with SMTP id m3-20020a2e9103000000b00278fa62bc90mr6506ljg.360.1668631688223;
        Wed, 16 Nov 2022 12:48:08 -0800 (PST)
Received: from thinkpad-p72 (user-5-173-65-115.play-internet.pl. [5.173.65.115])
        by smtp.gmail.com with ESMTPSA id n1-20020ac24901000000b004b4823f02b0sm2759613lfi.152.2022.11.16.12.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 12:48:07 -0800 (PST)
From: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>
X-Google-Original-From: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
Date: Wed, 16 Nov 2022 21:48:04 +0100
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20221116204804.GA22663@thinkpad-p72>
References: <20221115200426.4801-1-lukasz.wiecaszek@gmail.com>
 <b715cb83-32f1-a33b-a0c2-b779011151c0@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b715cb83-32f1-a33b-a0c2-b779011151c0@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 8FE693F1BB
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	DBL_BLOCKED_OPENRESOLVER(0.00)[googlemail.com:dkim];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.174:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_CC(0.00)[googlemail.com,redhat.com,collabora.com,intel.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[5.173.65.115:received];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 3U2YEMFJPIVZAWCYL7NZEWISQ6NJCWTH
X-Message-ID-Hash: 3U2YEMFJPIVZAWCYL7NZEWISQ6NJCWTH
X-MailFrom: lukasz.wiecaszek@googlemail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, kernel test robot <lkp@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3U2YEMFJPIVZAWCYL7NZEWISQ6NJCWTH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 16, 2022 at 01:01:46PM +0100, Christian K=F6nig wrote:
> Am 15.11.22 um 21:04 schrieb Lukasz Wiecaszek:
> > The reason behind that patch is associated with videobuf2 subsystem
> > (or more genrally with v4l2 framework) and user created
> > dma buffers (udmabuf). In some circumstances
> > when dealing with V4L2_MEMORY_DMABUF buffers videobuf2 subsystem
> > wants to use dma_buf_vmap() method on the attached dma buffer.
> > As udmabuf does not have .vmap operation implemented,
> > such dma_buf_vmap() natually fails.
> >=20
> > videobuf2_common: __vb2_queue_alloc: allocated 3 buffers, 1 plane(s) ea=
ch
> > videobuf2_common: __prepare_dmabuf: buffer for plane 0 changed
> > videobuf2_common: __prepare_dmabuf: failed to map dmabuf for plane 0
> > videobuf2_common: __buf_prepare: buffer preparation failed: -14
> >=20
> > The patch itself seems to be strighforward.
> > It adds implementation of .vmap and .vunmap methods
> > to 'struct dma_buf_ops udmabuf_ops'.
> > .vmap method itself uses vm_map_ram() to map pages linearly
> > into the kernel virtual address space.
> > .vunmap removes mapping created earlier by .vmap.
> > All locking and 'vmapping counting' is done in dma_buf.c
> > so it seems to be redundant/unnecessary in .vmap/.vunmap.
> >=20
> > Signed-off-by: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>
>=20
> > Reported-by: kernel test robot <lkp@intel.com>
>=20
> Please drop this line, the kernel test robot should only be mentioned if =
the
> original report came from it.
>=20
> And keep in mind that it might be necessary to implement begin/end cpu
> access callbacks as well.
>=20
> Apart from that the patch is Acked-by: Christian K=F6nig
> <christian.koenig@amd.com>.
>=20
> Regards,
> Christian.

Thanks for that lesson with the 'kernel test robot' line.
The second issue with begin/end cpu access callbacks is more complicated
to me. My understaning is that memory allocated for udambuf will be the=20
memory obtained most likely (if not always) by memfd_create().=20
So this will be the anonymous system memory which is 'by definition'=20
coherent for cpu access. So no need for begin/end callbacks.
But if I miss something, plese let me/us know.

>=20
> > ---
> > v1: https://lore.kernel.org/linux-media/202211120352.G7WPASoP-lkp@intel=
.com/T/#t
> > v2: https://lore.kernel.org/linux-media/20221114052944.GA7264@thinkpad-=
p72/T/#t
> >=20
> > v2 -> v3: Added .vunmap to 'struct dma_buf_ops udmabuf_ops'
> > v1 -> v2: Patch prepared and tested against 6.1.0-rc2+
> >=20
> >   drivers/dma-buf/udmabuf.c | 28 ++++++++++++++++++++++++++++
> >   1 file changed, 28 insertions(+)
> >=20
> > diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> > index 283816fbd72f..740d6e426ee9 100644
> > --- a/drivers/dma-buf/udmabuf.c
> > +++ b/drivers/dma-buf/udmabuf.c
> > @@ -13,6 +13,8 @@
> >   #include <linux/slab.h>
> >   #include <linux/udmabuf.h>
> >   #include <linux/hugetlb.h>
> > +#include <linux/vmalloc.h>
> > +#include <linux/iosys-map.h>
> >   static int list_limit =3D 1024;
> >   module_param(list_limit, int, 0644);
> > @@ -60,6 +62,30 @@ static int mmap_udmabuf(struct dma_buf *buf, struct =
vm_area_struct *vma)
> >   	return 0;
> >   }
> > +static int vmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
> > +{
> > +	struct udmabuf *ubuf =3D buf->priv;
> > +	void *vaddr;
> > +
> > +	dma_resv_assert_held(buf->resv);
> > +
> > +	vaddr =3D vm_map_ram(ubuf->pages, ubuf->pagecount, -1);
> > +	if (!vaddr)
> > +		return -EINVAL;
> > +
> > +	iosys_map_set_vaddr(map, vaddr);
> > +	return 0;
> > +}
> > +
> > +static void vunmap_udmabuf(struct dma_buf *buf, struct iosys_map *map)
> > +{
> > +	struct udmabuf *ubuf =3D buf->priv;
> > +
> > +	dma_resv_assert_held(buf->resv);
> > +
> > +	vm_unmap_ram(map->vaddr, ubuf->pagecount);
> > +}
> > +
> >   static struct sg_table *get_sg_table(struct device *dev, struct dma_b=
uf *buf,
> >   				     enum dma_data_direction direction)
> >   {
> > @@ -162,6 +188,8 @@ static const struct dma_buf_ops udmabuf_ops =3D {
> >   	.unmap_dma_buf	   =3D unmap_udmabuf,
> >   	.release	   =3D release_udmabuf,
> >   	.mmap		   =3D mmap_udmabuf,
> > +	.vmap		   =3D vmap_udmabuf,
> > +	.vunmap		   =3D vunmap_udmabuf,
> >   	.begin_cpu_access  =3D begin_cpu_udmabuf,
> >   	.end_cpu_access    =3D end_cpu_udmabuf,
> >   };
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
