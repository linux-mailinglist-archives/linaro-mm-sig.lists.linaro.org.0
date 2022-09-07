Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBAD5B0AB3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 18:55:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD43E3F58C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Sep 2022 16:55:52 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id EEB0B3F572
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 16:55:49 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id dv25so2493363ejb.12
        for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Sep 2022 09:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date;
        bh=3wG8aEYmlMq503E+b15Mt/ISE8s5toQ5qwq6MQ9S1TE=;
        b=GKRsGngx/rUi39rZzRpt+Ipq5LWhNCBLO+KbZUF5e7HrJTE3+E1MokSVuUt5GYdJTJ
         mW+lOrIQ10CVaXLDixGqICRGyjHW/b+odWdSZ4PgqfGCh8bUGPOsPYa7PGVj+zlmhl8/
         8wOuMw07sHpku7pTTLI0qLlwBKbL9mpll1MdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=3wG8aEYmlMq503E+b15Mt/ISE8s5toQ5qwq6MQ9S1TE=;
        b=Cm7ul/SPXZQ/zCIw831biGpUA5X56jvUtKZJz1ISXAqGZOn6eJnAyEgNQ+GQidqTXD
         kxcpD0rtVDhCPJ2quBgXW89H6ObceORjl3JQSNwRaQ3m7tKMJ4McWZBTY5FR8wzMvMV+
         9HaYXco3qcR7thIP8lM4NP6BOTAYWU/GlwuM9gt6gV3Pr2kJDktGgD+KVBFa23qUnpSM
         47kE4ttC7Jwp32tsbLd0lJ8UmndrV8aGTG+nUVvrpAQgoN64Q3+a5jXy6gNCgSMAQEPS
         U/l79xdfUNViPr8g937yluKd7/dU33sNVNLJxkrhiYNBdMfOXSRXiJgG8sHXqot4FN1R
         3hBA==
X-Gm-Message-State: ACgBeo2o9Aw9rrOo7hZyrAWyfdPbRhP+XuoUiZedQlgFnPvfwmzxRcIv
	z1caS6YiN70gawutOZJeksallA==
X-Google-Smtp-Source: AA6agR50K9CduSBZwi8jvyMeuyPtPN09nDffGy7tsDAnCQhuWszoLdYbys/A8c5KCluQdXtq5/fgFQ==
X-Received: by 2002:a17:907:7faa:b0:741:7674:5ea1 with SMTP id qk42-20020a1709077faa00b0074176745ea1mr3076474ejc.27.1662569748894;
        Wed, 07 Sep 2022 09:55:48 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id f22-20020a056402161600b0044e8ecb9d25sm6220633edv.52.2022.09.07.09.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:55:48 -0700 (PDT)
Date: Wed, 7 Sep 2022 18:55:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YxjNEr888ndOnBjI@phenom.ffwll.local>
Mail-Followup-To: Rob Clark <robdclark@gmail.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	Rob Clark <robdclark@chromium.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	"open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
	"moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
	open list <linux-kernel@vger.kernel.org>
References: <327c77d5-5812-a158-6c9f-c68e15a5a6b4@amd.com>
 <CAF6AEGu3oxM+EX_FsLpw4m0KouMyFMLN=AGGbf=6TVQGkJ7jQg@mail.gmail.com>
 <6396ccf9-a677-427d-f5f9-12d30ad2197e@amd.com>
 <CAF6AEGsbc9PuSOyvhnr0ALQiLY9gSBySHyisEOfteZq9NXN0VA@mail.gmail.com>
 <8afce42b-db0e-9f71-7cd7-2680b6c9a1c9@amd.com>
 <CAF6AEGvBhx9ZFBzb8dUymhN99HPq7eTyGwVH-Uk9GQr1QjWN+Q@mail.gmail.com>
 <973682df-b2e5-020c-98e9-96ec9af214d5@amd.com>
 <CAF6AEGtVMAzqECSTUFX1Zmb8BOLiq-n04nizO22J2ENcGTgQBQ@mail.gmail.com>
 <1d9da979-7d09-d80b-bc0e-f9641422b962@amd.com>
 <CAF6AEGv7xYSucyriCkPhibQXs2KBxT5mMW6dMxX_E63xvpKLDA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGv7xYSucyriCkPhibQXs2KBxT5mMW6dMxX_E63xvpKLDA@mail.gmail.com>
X-Operating-System: Linux phenom 5.18.0-4-amd64 
Message-ID-Hash: 6FTU5HJWYLFVYBPL7W6Z6UI3EYAHICKZ
X-Message-ID-Hash: 6FTU5HJWYLFVYBPL7W6Z6UI3EYAHICKZ
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/3] dma-buf: Add ioctl to query mmap coherency/cache info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6FTU5HJWYLFVYBPL7W6Z6UI3EYAHICKZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 18, 2022 at 08:01:53AM -0700, Rob Clark wrote:
> On Thu, Aug 18, 2022 at 7:54 AM Christian K=F6nig
> <christian.koenig@amd.com> wrote:
> >
> > Am 18.08.22 um 16:25 schrieb Rob Clark:
> > > On Thu, Aug 18, 2022 at 4:21 AM Christian K=F6nig
> > > <christian.koenig@amd.com> wrote:
> > >> Am 17.08.22 um 15:44 schrieb Rob Clark:
> > >>> On Wed, Aug 17, 2022 at 2:57 AM Christian K=F6nig
> > >>> <christian.koenig@amd.com> wrote:
> > >>>> [SNIP]
> > >>>>
> > >>>> The resulting cache attrs from combination of S1 and S2 translation
> > >>>> can differ.  So ideally we setup the S2 pgtables in guest aligned =
with
> > >>>> host userspace mappings
> > >>>> Well exactly that is not very convincing.
> > >>>>
> > >>>> What you want to do is to use one channel for the address and a
> > >>>> different one for the cache attrs, that's not something I would
> > >>>> recommend doing in general.
> > >>> How would that work.. mmap() is the channel for the address, we'd n=
eed
> > >>> to introduce a new syscall that returned additional information?
> > >> The channel for the address is not mmap(), but rather the page fault=
s.
> > >> mmap() is just the function setting up that channel.
> > >>
> > >> The page faults then insert both the address as well as the caching
> > >> attributes (at least on x86).
> > > This is true on arm64 as well, but only in the S1 tables (which I
> > > would have to assume is the case on x86 as well)
> > >
> > >> That we then need to forward the caching attributes manually once mo=
re
> > >> seems really misplaced.
> > >>
> > >>>> Instead the client pgtables should be setup in a way so that host =
can
> > >>>> overwrite them.
> > >>> How?  That is completely not how VMs work.  Even if the host knew
> > >>> where the pgtables were and somehow magically knew the various guest
> > >>> userspace VAs, it would be racey.
> > >> Well you mentioned that the client page tables can be setup in a way
> > >> that the host page tables determine what caching to use. As far as I=
 can
> > >> see this is what we should use here.
> > > On arm64/aarch64, they *can*.. but the system (on some versions of
> > > armv8) can also be configured to let S2 determine the attributes.  And
> > > apparently there are benefits to this (avoids unnecessary cache
> > > flushing in the host, AFAIU.)  This is the case where we need this new
> > > api.
> > >
> > > IMO it is fine for the exporter to return a value indicating that the
> > > attributes change dynamically or that S1 attributes must somehow be
> > > used by the hw.  This would at least let the VMM return an error in
> > > cases where S1 attrs cannot be relied on.  But there are enough
> > > exporters where the cache attrs are static for the life of the buffer.
> > > So even if you need to return DMA_BUF_MAP_I_DONT_KNOW, maybe that is
> > > fine (if x86 can always rely on S1 attrs), or at least will let the
> > > VMM return an error rather than just blindly assuming things will
> > > work.
> > >
> > > But it makes no sense to reject the whole idea just because of some
> > > exporters (which may not even need this).  There is always room to let
> > > them return a map-info value that describes the situation or
> > > limitations to the VMM.
> >
> > Well it does make sense as far as I can see.
> >
> > This is a very specific workaround for a platform problem which only
> > matters there, but increases complexity for everybody.
>=20
> I'm not sure how this adds complexity for everybody.. or at least the
> intention was the default value for the new enum is the same as
> current status-quo, so no need to plumb something thru every single
> exporter.

I think what K=F6nig freaks out about here, and I think it's the same
concern I have, is that this is for _all_ dma-buf exporter.

Yeah I know we're having this "anything might not be implemented" escape
hatch, but we're also slowly working to get that fixed and make dma-buf
implementations. And so adding a fully generic dma-buf ioctl which is very
limited use for arm64 VM in funky configuration (where the guest controls
caching mode in ptes fully). The usual way we do these very special things
are:

- Importer upcasts the dma-buf to the exporters buffer type by checking
  the ops structure pointer.
- There is no dma-buf interface anymore really, and you can do very
  specific stuff like xgmi mappings, or virtio uuid, or whatever.

I think this should also work like that. Which means the query ioctl
should be on some kvm/vm specific interface most likely, and not on
generic dma-buf.

Also if we add this interface somewhere in the kvm world then that would
also be a natural place to implement stuff like "the guest can't actually
overwrite caching modes, ignore this all" and anything else. Ideally this
thing exists only where it's actually needed, i.e. this specific vm+arm64
cases. Not anywhere else, because experience says that if dma-buf can be
abused in some way, people will.

Also I'd really like to understand the full flow here too, some vague
hand-waving that "apparently it has some cache flushing benefits" is a bit
too vague, if this is really only for performance. Like my experience has
been that when a less priviledge entity can control caching, then you
actually have to flush more often, not less. At least depending upon
hardware (some recent intel igpu chips have this issue where due to
userspace overwriting cache control too much we have to defensively flush
caches again for everything - hw design is going to get fixed again soon).
-Daniel

>=20
> BR,
> -R
>=20
> > If we don't have any other choice on the problem to work around that I
> > would say ok we add an ARM specific workaround.
> >
> > But as long as that's not the case the whole idea is pretty clearly a
> > NAK from my side.
> >
> > Regards,
> > Christian.
> >
> > >
> > > BR,
> > > -R
> > >
> > >> Regards,
> > >> Christian.
> > >>
> > >>> BR,
> > >>> -R
> > >>>
> > >>>> Regards,
> > >>>> Christian.
> > >>>>
> > >>>>> BR,
> > >>>>> -R
> > >>>>>
> > >>>>>> Regards,
> > >>>>>> Christian.
> > >>>>>>
> > >>>>>>> BR,
> > >>>>>>> -R
> > >>>>>>>
> > >>>>>>>> If the hardware can't use the caching information from the hos=
t CPU page
> > >>>>>>>> tables directly then that pretty much completely breaks the co=
ncept that
> > >>>>>>>> the exporter is responsible for setting up those page tables.
> > >>>>>>>>
> > >>>>>>>> Regards,
> > >>>>>>>> Christian.
> > >>>>>>>>
> > >>>>>>>>>       drivers/dma-buf/dma-buf.c    | 63 +++++++++++++++++++++=
++++++------
> > >>>>>>>>>       include/linux/dma-buf.h      | 11 ++++++
> > >>>>>>>>>       include/uapi/linux/dma-buf.h | 68 +++++++++++++++++++++=
+++++++++++++++
> > >>>>>>>>>       3 files changed, 132 insertions(+), 10 deletions(-)
> > >>>>>>>>>
> > >>>>>>>>> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-=
buf.c
> > >>>>>>>>> index 32f55640890c..262c4706f721 100644
> > >>>>>>>>> --- a/drivers/dma-buf/dma-buf.c
> > >>>>>>>>> +++ b/drivers/dma-buf/dma-buf.c
> > >>>>>>>>> @@ -125,6 +125,32 @@ static struct file_system_type dma_buf_f=
s_type =3D {
> > >>>>>>>>>           .kill_sb =3D kill_anon_super,
> > >>>>>>>>>       };
> > >>>>>>>>>
> > >>>>>>>>> +static int __dma_buf_mmap(struct dma_buf *dmabuf, struct vm_=
area_struct *vma)
> > >>>>>>>>> +{
> > >>>>>>>>> +     int ret;
> > >>>>>>>>> +
> > >>>>>>>>> +     /* check if buffer supports mmap */
> > >>>>>>>>> +     if (!dmabuf->ops->mmap)
> > >>>>>>>>> +             return -EINVAL;
> > >>>>>>>>> +
> > >>>>>>>>> +     ret =3D dmabuf->ops->mmap(dmabuf, vma);
> > >>>>>>>>> +
> > >>>>>>>>> +     /*
> > >>>>>>>>> +      * If the exporter claims to support coherent access, e=
nsure the
> > >>>>>>>>> +      * pgprot flags match the claim.
> > >>>>>>>>> +      */
> > >>>>>>>>> +     if ((dmabuf->map_info !=3D DMA_BUF_MAP_INCOHERENT) && !=
ret) {
> > >>>>>>>>> +             pgprot_t wc_prot =3D pgprot_writecombine(vma->v=
m_page_prot);
> > >>>>>>>>> +             if (dmabuf->map_info =3D=3D DMA_BUF_COHERENT_WC=
) {
> > >>>>>>>>> +                     WARN_ON_ONCE(pgprot_val(vma->vm_page_pr=
ot) !=3D pgprot_val(wc_prot));
> > >>>>>>>>> +             } else {
> > >>>>>>>>> +                     WARN_ON_ONCE(pgprot_val(vma->vm_page_pr=
ot) =3D=3D pgprot_val(wc_prot));
> > >>>>>>>>> +             }
> > >>>>>>>>> +     }
> > >>>>>>>>> +
> > >>>>>>>>> +     return ret;
> > >>>>>>>>> +}
> > >>>>>>>>> +
> > >>>>>>>>>       static int dma_buf_mmap_internal(struct file *file, str=
uct vm_area_struct *vma)
> > >>>>>>>>>       {
> > >>>>>>>>>           struct dma_buf *dmabuf;
> > >>>>>>>>> @@ -134,16 +160,12 @@ static int dma_buf_mmap_internal(struct=
 file *file, struct vm_area_struct *vma)
> > >>>>>>>>>
> > >>>>>>>>>           dmabuf =3D file->private_data;
> > >>>>>>>>>
> > >>>>>>>>> -     /* check if buffer supports mmap */
> > >>>>>>>>> -     if (!dmabuf->ops->mmap)
> > >>>>>>>>> -             return -EINVAL;
> > >>>>>>>>> -
> > >>>>>>>>>           /* check for overflowing the buffer's size */
> > >>>>>>>>>           if (vma->vm_pgoff + vma_pages(vma) >
> > >>>>>>>>>               dmabuf->size >> PAGE_SHIFT)
> > >>>>>>>>>                   return -EINVAL;
> > >>>>>>>>>
> > >>>>>>>>> -     return dmabuf->ops->mmap(dmabuf, vma);
> > >>>>>>>>> +     return __dma_buf_mmap(dmabuf, vma);
> > >>>>>>>>>       }
> > >>>>>>>>>
> > >>>>>>>>>       static loff_t dma_buf_llseek(struct file *file, loff_t =
offset, int whence)
> > >>>>>>>>> @@ -326,6 +348,27 @@ static long dma_buf_set_name(struct dma_=
buf *dmabuf, const char __user *buf)
> > >>>>>>>>>           return 0;
> > >>>>>>>>>       }
> > >>>>>>>>>
> > >>>>>>>>> +static long dma_buf_info(struct dma_buf *dmabuf, void __user=
 *uarg)
> > >>>>>>>>> +{
> > >>>>>>>>> +     struct dma_buf_info arg;
> > >>>>>>>>> +
> > >>>>>>>>> +     if (copy_from_user(&arg, uarg, sizeof(arg)))
> > >>>>>>>>> +             return -EFAULT;
> > >>>>>>>>> +
> > >>>>>>>>> +     switch (arg.param) {
> > >>>>>>>>> +     case DMA_BUF_INFO_MAP_INFO:
> > >>>>>>>>> +             arg.value =3D dmabuf->map_info;
> > >>>>>>>>> +             break;
> > >>>>>>>>> +     default:
> > >>>>>>>>> +             return -EINVAL;
> > >>>>>>>>> +     }
> > >>>>>>>>> +
> > >>>>>>>>> +     if (copy_to_user(uarg, &arg, sizeof(arg)))
> > >>>>>>>>> +             return -EFAULT;
> > >>>>>>>>> +
> > >>>>>>>>> +     return 0;
> > >>>>>>>>> +}
> > >>>>>>>>> +
> > >>>>>>>>>       static long dma_buf_ioctl(struct file *file,
> > >>>>>>>>>                             unsigned int cmd, unsigned long a=
rg)
> > >>>>>>>>>       {
> > >>>>>>>>> @@ -369,6 +412,9 @@ static long dma_buf_ioctl(struct file *fi=
le,
> > >>>>>>>>>           case DMA_BUF_SET_NAME_B:
> > >>>>>>>>>                   return dma_buf_set_name(dmabuf, (const char=
 __user *)arg);
> > >>>>>>>>>
> > >>>>>>>>> +     case DMA_BUF_IOCTL_INFO:
> > >>>>>>>>> +             return dma_buf_info(dmabuf, (void __user *)arg);
> > >>>>>>>>> +
> > >>>>>>>>>           default:
> > >>>>>>>>>                   return -ENOTTY;
> > >>>>>>>>>           }
> > >>>>>>>>> @@ -530,6 +576,7 @@ struct dma_buf *dma_buf_export(const stru=
ct dma_buf_export_info *exp_info)
> > >>>>>>>>>           dmabuf->priv =3D exp_info->priv;
> > >>>>>>>>>           dmabuf->ops =3D exp_info->ops;
> > >>>>>>>>>           dmabuf->size =3D exp_info->size;
> > >>>>>>>>> +     dmabuf->map_info =3D exp_info->map_info;
> > >>>>>>>>>           dmabuf->exp_name =3D exp_info->exp_name;
> > >>>>>>>>>           dmabuf->owner =3D exp_info->owner;
> > >>>>>>>>>           spin_lock_init(&dmabuf->name_lock);
> > >>>>>>>>> @@ -1245,10 +1292,6 @@ int dma_buf_mmap(struct dma_buf *dmabu=
f, struct vm_area_struct *vma,
> > >>>>>>>>>           if (WARN_ON(!dmabuf || !vma))
> > >>>>>>>>>                   return -EINVAL;
> > >>>>>>>>>
> > >>>>>>>>> -     /* check if buffer supports mmap */
> > >>>>>>>>> -     if (!dmabuf->ops->mmap)
> > >>>>>>>>> -             return -EINVAL;
> > >>>>>>>>> -
> > >>>>>>>>>           /* check for offset overflow */
> > >>>>>>>>>           if (pgoff + vma_pages(vma) < pgoff)
> > >>>>>>>>>                   return -EOVERFLOW;
> > >>>>>>>>> @@ -1262,7 +1305,7 @@ int dma_buf_mmap(struct dma_buf *dmabuf=
, struct vm_area_struct *vma,
> > >>>>>>>>>           vma_set_file(vma, dmabuf->file);
> > >>>>>>>>>           vma->vm_pgoff =3D pgoff;
> > >>>>>>>>>
> > >>>>>>>>> -     return dmabuf->ops->mmap(dmabuf, vma);
> > >>>>>>>>> +     return __dma_buf_mmap(dmabuf, vma);
> > >>>>>>>>>       }
> > >>>>>>>>>       EXPORT_SYMBOL_NS_GPL(dma_buf_mmap, DMA_BUF);
> > >>>>>>>>>
> > >>>>>>>>> diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> > >>>>>>>>> index 71731796c8c3..37923c8d5c24 100644
> > >>>>>>>>> --- a/include/linux/dma-buf.h
> > >>>>>>>>> +++ b/include/linux/dma-buf.h
> > >>>>>>>>> @@ -23,6 +23,8 @@
> > >>>>>>>>>       #include <linux/dma-fence.h>
> > >>>>>>>>>       #include <linux/wait.h>
> > >>>>>>>>>
> > >>>>>>>>> +#include <uapi/linux/dma-buf.h>
> > >>>>>>>>> +
> > >>>>>>>>>       struct device;
> > >>>>>>>>>       struct dma_buf;
> > >>>>>>>>>       struct dma_buf_attachment;
> > >>>>>>>>> @@ -307,6 +309,13 @@ struct dma_buf {
> > >>>>>>>>>            */
> > >>>>>>>>>           size_t size;
> > >>>>>>>>>
> > >>>>>>>>> +     /**
> > >>>>>>>>> +      * @map_info:
> > >>>>>>>>> +      *
> > >>>>>>>>> +      * CPU mapping/coherency information for the buffer.
> > >>>>>>>>> +      */
> > >>>>>>>>> +     enum dma_buf_map_info map_info;
> > >>>>>>>>> +
> > >>>>>>>>>           /**
> > >>>>>>>>>            * @file:
> > >>>>>>>>>            *
> > >>>>>>>>> @@ -533,6 +542,7 @@ struct dma_buf_attachment {
> > >>>>>>>>>        * @ops:    Attach allocator-defined dma buf ops to the=
 new buffer
> > >>>>>>>>>        * @size:   Size of the buffer - invariant over the lif=
etime of the buffer
> > >>>>>>>>>        * @flags:  mode flags for the file
> > >>>>>>>>> + * @map_info:        CPU mapping/coherency information for t=
he buffer
> > >>>>>>>>>        * @resv:   reservation-object, NULL to allocate defaul=
t one
> > >>>>>>>>>        * @priv:   Attach private data of allocator to this bu=
ffer
> > >>>>>>>>>        *
> > >>>>>>>>> @@ -545,6 +555,7 @@ struct dma_buf_export_info {
> > >>>>>>>>>           const struct dma_buf_ops *ops;
> > >>>>>>>>>           size_t size;
> > >>>>>>>>>           int flags;
> > >>>>>>>>> +     enum dma_buf_map_info map_info;
> > >>>>>>>>>           struct dma_resv *resv;
> > >>>>>>>>>           void *priv;
> > >>>>>>>>>       };
> > >>>>>>>>> diff --git a/include/uapi/linux/dma-buf.h b/include/uapi/linu=
x/dma-buf.h
> > >>>>>>>>> index b1523cb8ab30..07b403ffdb43 100644
> > >>>>>>>>> --- a/include/uapi/linux/dma-buf.h
> > >>>>>>>>> +++ b/include/uapi/linux/dma-buf.h
> > >>>>>>>>> @@ -85,6 +85,72 @@ struct dma_buf_sync {
> > >>>>>>>>>
> > >>>>>>>>>       #define DMA_BUF_NAME_LEN    32
> > >>>>>>>>>
> > >>>>>>>>> +/**
> > >>>>>>>>> + * enum dma_buf_map_info - CPU mapping info
> > >>>>>>>>> + *
> > >>>>>>>>> + * This enum describes coherency of a userspace mapping of t=
he dmabuf.
> > >>>>>>>>> + *
> > >>>>>>>>> + * Importing devices should check dma_buf::map_info flag and=
 reject an
> > >>>>>>>>> + * import if unsupported.  For example, if the exporting dev=
ice uses
> > >>>>>>>>> + * @DMA_BUF_COHERENT_CACHED but the importing device does no=
t support
> > >>>>>>>>> + * CPU cache coherency, the dma-buf import should fail.
> > >>>>>>>>> + */
> > >>>>>>>>> +enum dma_buf_map_info {
> > >>>>>>>>> +     /**
> > >>>>>>>>> +      * @DMA_BUF_MAP_INCOHERENT: CPU mapping is incoherent.
> > >>>>>>>>> +      *
> > >>>>>>>>> +      * Use of DMA_BUF_IOCTL_SYNC is required for CPU manage=
d coherenency.
> > >>>>>>>>> +      */
> > >>>>>>>>> +     DMA_BUF_MAP_INCOHERENT,
> > >>>>>>>>> +
> > >>>>>>>>> +     /**
> > >>>>>>>>> +      * @DMA_BUF_COHERENT_WC: CPU mapping is coherent but no=
t cached.
> > >>>>>>>>> +      *
> > >>>>>>>>> +      * A cpu mmap'ing is coherent, and DMA_BUF_IOCTL_SYNC i=
s not required.
> > >>>>>>>>> +      * However fences may be still required for synchronizi=
ng access.  Ie.
> > >>>>>>>>> +      * coherency can only be relied upon by an explicit-fen=
cing userspace.
> > >>>>>>>>> +      * An implicit-sync userspace must still use DMA_BUF_IO=
CTL_SYNC.
> > >>>>>>>>> +      *
> > >>>>>>>>> +      * The cpu mapping is writecombine.
> > >>>>>>>>> +      */
> > >>>>>>>>> +     DMA_BUF_COHERENT_WC,
> > >>>>>>>>> +
> > >>>>>>>>> +     /**
> > >>>>>>>>> +      * @DMA_BUF_COHERENT_CACHED: CPU mapping is coherent an=
d CPU cached.
> > >>>>>>>>> +      *
> > >>>>>>>>> +      * A cpu mmap'ing is coherent, and DMA_BUF_IOCTL_SYNC i=
s not required.
> > >>>>>>>>> +      * However fences may be still required for synchronizi=
ng access.  Ie.
> > >>>>>>>>> +      * coherency can only be relied upon by an explicit-fen=
cing userspace.
> > >>>>>>>>> +      * An implicit-sync userspace must still use DMA_BUF_IO=
CTL_SYNC.
> > >>>>>>>>> +      *
> > >>>>>>>>> +      * The cpu mapping is cached.
> > >>>>>>>>> +      */
> > >>>>>>>>> +     DMA_BUF_COHERENT_CACHED,
> > >>>>>>>>> +};
> > >>>>>>>>> +
> > >>>>>>>>> +/**
> > >>>>>>>>> + * struct dma_buf_info - Query info about the buffer.
> > >>>>>>>>> + */
> > >>>>>>>>> +struct dma_buf_info {
> > >>>>>>>>> +
> > >>>>>>>>> +#define DMA_BUF_INFO_MAP_INFO    1
> > >>>>>>>>> +
> > >>>>>>>>> +     /**
> > >>>>>>>>> +      * @param: Which param to query
> > >>>>>>>>> +      *
> > >>>>>>>>> +      * DMA_BUF_INFO_MAP_INFO:
> > >>>>>>>>> +      *     Returns enum dma_buf_map_info, describing the co=
herency and
> > >>>>>>>>> +      *     caching of a CPU mapping of the buffer.
> > >>>>>>>>> +      */
> > >>>>>>>>> +     __u32 param;
> > >>>>>>>>> +     __u32 pad;
> > >>>>>>>>> +
> > >>>>>>>>> +     /**
> > >>>>>>>>> +      * @value: Return value of the query.
> > >>>>>>>>> +      */
> > >>>>>>>>> +     __u64 value;
> > >>>>>>>>> +};
> > >>>>>>>>> +
> > >>>>>>>>>       #define DMA_BUF_BASE                'b'
> > >>>>>>>>>       #define DMA_BUF_IOCTL_SYNC  _IOW(DMA_BUF_BASE, 0, struc=
t dma_buf_sync)
> > >>>>>>>>>
> > >>>>>>>>> @@ -95,4 +161,6 @@ struct dma_buf_sync {
> > >>>>>>>>>       #define DMA_BUF_SET_NAME_A  _IOW(DMA_BUF_BASE, 1, __u32)
> > >>>>>>>>>       #define DMA_BUF_SET_NAME_B  _IOW(DMA_BUF_BASE, 1, __u64)
> > >>>>>>>>>
> > >>>>>>>>> +#define DMA_BUF_IOCTL_INFO   _IOWR(DMA_BUF_BASE, 2, struct d=
ma_buf_info)
> > >>>>>>>>> +
> > >>>>>>>>>       #endif
> >

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
