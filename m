Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 252BA84B704
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Feb 2024 14:57:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2496C400E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Feb 2024 13:57:15 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 4F5EF3EB98
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Feb 2024 13:57:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=ij01Rzxl;
	dmarc=none;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.47) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40f030bf978so9840315e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Feb 2024 05:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1707227826; x=1707832626; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kb3EfwQ1MJaeA9+O1qYrsLSl0T9nvfGVDQWyYC/ou2o=;
        b=ij01Rzxlr+yk0/TET307zL2cVIxjfb78AaLuB1C2AABUWS5jr8TATW6NrbtA3jco4n
         4M/hIJS8MeuhKHNOLs2Cn6lgdrXvX4EjMJjPdKnM4BHrFTODd8/w5bUQ8Ve2veHpS3Je
         qdlPiQ9sA0ZQuZ0W3Omw+TwDFoORZOpsl7dHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707227826; x=1707832626;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kb3EfwQ1MJaeA9+O1qYrsLSl0T9nvfGVDQWyYC/ou2o=;
        b=uaJ3lw2y24JJJznPYcdFPpggKh3Eox5kY/hNQ9c0f35PmzAwAF+3P5XwDxBuBnXhkb
         0WxUJKRUYtP6Jx0G3EH28Bnh85FOFWGkxJgfYIB0V8vWE8Dy4MQNk+3dlTBm5VYfDRG3
         JcTbAH4V7sGrZZvvak1oSBpLGxcPNr9OEb3vAnGxcSCbafAX01+m0pKv0lGiNawUYh0y
         h4Q+7HYeum5BK3aPPHF7CZx9q89gMDV7WF6NCFv/IYhRirEu5aPcsj1xPJcDtsBYp3SL
         Uy8pFGse0Fmjlyt9X0n7Ms6rhN6dPyS5g00fauBZZQXfijzjwRaUOJGkUvmCvIz15/st
         1FfA==
X-Gm-Message-State: AOJu0YyEFH6mlkpvOk+XnoL5PBeN24wZ8OdQ6FqgdLS+eYKKhz4XujUk
	N2e2Blxi3u/oTENdqs1nTfR+X7wtTVsciOOIVDwpzj0gD+EU5DFNReu690YZ7B0=
X-Google-Smtp-Source: AGHT+IFOqn0cbJK+WY/X2jzsNFe5DlfE9RRoN3pYgv6uF/Bp/mQ+6ZreQmabY1RjWhfdxFOF8hFqgg==
X-Received: by 2002:a05:600c:1d07:b0:40f:dd10:180f with SMTP id l7-20020a05600c1d0700b0040fdd10180fmr2171433wms.3.1707227826124;
        Tue, 06 Feb 2024 05:57:06 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVlNRdjfnrbeDjDbrCKYEBO3kd6rGhLpeMtXIG9oqKa+D8JDxEGy5DMCrqpoHSWZs0/bNypXMCfWtNtUPqoesQgAB0H6Daunh1Zgxlc+2Ut33t2ErRQSVGy8smjuSRGtY0tvTXLVh7k2qgPJ93b3ErEDdLGeMwVxq55VuThizfQDT/p92QBrVwVt6BC9+X/SgRZrG0aownrL7ZHiM5971IDJlkOtrvm6vm9btDr7rv6V6gklC7NhCAFtqZc8Pe/XJ7+9n2Rv5Auu909IPa39tT735ZRStAPQXX0KhuLsVAp7u7JKEaZy/OQBZ7OyT7GVfzIqxz+sgDsJt66dHh2BvC1uWUyIwCoa0jWx1h5P8wd7yKn0PYKtKi83LfG4m6t2/LSboEDvEmcshMx0eJHZjkLyWzcDWnLXG0SAj4nS4G+WWjIVaUS8optm2+U6EPGTnjDirg8XZAwCT2sFJbsh9+wpp7btXrzOT/ocxKYjY8ji4cYLruFDMZrZtrTNBc7+j0i3Mnw/EvN2ackeUuZ4g==
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id f6-20020a5d50c6000000b0033afcc069c3sm2153649wrt.84.2024.02.06.05.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 05:57:05 -0800 (PST)
Date: Tue, 6 Feb 2024 14:57:03 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <ZcI6r_F1RQf8MCrq@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Paul Cercueil <paul@crapouillou.net>,
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
References: <2ac7562c-d221-409a-bfee-1b3cfcc0f1c6@amd.com>
 <ZbKiCPhRvWaz4Icn@phenom.ffwll.local>
 <c97e38ee-b860-4990-87f1-3e59d7d9c999@amd.com>
 <Zbi6zQYtnfOZu5Wh@phenom.ffwll.local>
 <a2346244-e22b-4ff6-b6cd-1da7138725ae@amd.com>
 <7eec45a95808afe94ac65a8518df853356ecf117.camel@crapouillou.net>
 <ZbjSJi07gQhZ4WMC@phenom.ffwll.local>
 <1d912523-b980-4386-82b2-8d79808398c1@amd.com>
 <ZboNyju8h4vfSd7v@phenom.ffwll.local>
 <b2906521-998f-4a65-adb2-23caff207a4a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2906521-998f-4a65-adb2-23caff207a4a@gmail.com>
X-Operating-System: Linux phenom 6.6.11-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4F5EF3EB98
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[mail-wm1-f47.google.com:helo,mail-wm1-f47.google.com:rdns];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,crapouillou.net,linuxfoundation.org,lwn.net,linaro.org,kernel.org,gmail.com,analog.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lst.de];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.47:from];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: JLHYBLQFSTOC2WAP53BEKO725LMMS3CC
X-Message-ID-Hash: JLHYBLQFSTOC2WAP53BEKO725LMMS3CC
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Paul Cercueil <paul@crapouillou.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Cameron <jic23@kernel.org>, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-usb@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Christoph Hellwig <hch@lst.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/6] dma-buf: Add dma_buf_{begin,end}_access()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JLHYBLQFSTOC2WAP53BEKO725LMMS3CC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 06, 2024 at 02:28:35PM +0100, Christian K=F6nig wrote:
> Am 31.01.24 um 10:07 schrieb Daniel Vetter:
> > On Tue, Jan 30, 2024 at 02:09:45PM +0100, Christian K=F6nig wrote:
> > > Am 30.01.24 um 11:40 schrieb Daniel Vetter:
> > > > On Tue, Jan 30, 2024 at 10:48:23AM +0100, Paul Cercueil wrote:
> > > > > Le mardi 30 janvier 2024 =E0 10:23 +0100, Christian K=F6nig a =E9=
crit=A0:
> > > > > >   =A0I would say we start with the DMA-API by getting away from=
 sg_tables
> > > > > > to something cleaner and state oriented.
> > > > > FYI I am already adding a 'dma_vec' object in my IIO DMABUF patch=
set,
> > > > > which is just a dead simple
> > > > >=20
> > > > > struct dma_vec {
> > > > >     dma_addr_t addr;
> > > > >     size_t len;
> > > > > };
> > > > >=20
> > > > > (The rationale for introducing it in the IIO DMABUF patchset was =
that
> > > > > the "scatterlist" wouldn't allow me to change the transfer size.)
> > > > >=20
> > > > > So I believe a new "sg_table"-like could just be an array of stru=
ct
> > > > > dma_vec + flags.
> > > > Yeah that's pretty much the proposal I've seen, split the sg table =
into
> > > > input data (struct page + len) and output data (which is the dma_ad=
dr_t +
> > > > len you have above).
> > > I would extend that a bit and say we have an array with
> > > dma_addr+power_of_two_order and a header structure with lower bit off=
set and
> > > some DMA transaction flags.
> > >=20
> > > But this is something which can be worked as an optimization later on=
. For a
> > > start this proposal here looks good to me as well.
> > >=20
> > > > The part I don't expect to ever happen, because it hasn't the past =
20 or
> > > > so years, is that the dma-api will give us information about what is
> > > > needed to keep the buffers coherency between various devices and th=
e cpu.
> > > Well maybe that's what we are doing wrong.
> > >=20
> > > Instead of asking the dma-api about the necessary information we shou=
ld give
> > > the API the opportunity to work for us.
> > >=20
> > > In other words we don't need the information about buffer coherency w=
hat we
> > > need is that the API works for as and fulfills the requirements we ha=
ve.
> > >=20
> > > So the question is really what should we propose to change on the DMA=
-api
> > > side to get this working as expected?
> > So one thing I've been pondering, kinda picking up your point about CXL,
> > is that we do make the coherency protocol more explicit by adding a
> > coherency mode to dma_buf that the exporter sets. Some ideas for values
> > this could have:
> >=20
> > - ATTOMIC_COHERENT: Fully cache coherent, including device/cpu atomis.
> >    This would be for CXL. Non-CXL devices could still participate with =
the
> >    old model using explicit devices flushes, but must at comply with
> >    CPU_COHERENT.
> >=20
> >    There's also the power9-only nvlink that would fit here, but I guess
> >    going forward CXL (and cache-coherent integrated gpu) would really be
> >    the only users of this flag.
> >=20
> >    Peer2peer would have the same rules, otherwise doesn't really make
> >    sense. Also we might want to forbib non-CXL imports for these buffers
> >    maybe even? Not sure on that.
> >=20
> > - CPU_COHERENT: device transactions do snoop cpu devices caches, but
> >    devices might do their own caching which isn't snooped by the cpu and
> >    needs explicit device-side invalidate/flushing. This means pcie
> >    importers are not allowed to use pcie no-snoop transactions, intel i=
gpu
> >    wouldn't be allowed to use MOCS that do the same, similar for arm
> >    integrated devices.
> >=20
> >    Importers can skip all explicit cache management apis like
> >    dma_buf_begin/end_cpu_access, or the newly proposed
> >    dma_buf_begin/end_device_access here.
> >=20
> >    We'd need to figure out what exactly this means for peer2peer
> >    transactions, I have no idea whether the no-snoop flag even does
> >    anything for those.
> >=20
> >    We might also want to split up CPU_COHERENT into CPU_COHERENT_WB and
> >    CPU_WOHERENT_WC, so that importers know whether cpu reads are going =
to
> >    be crawling or not.
> >=20
> > - MEMORY_COHERENT: devices transactions do not snoop any caches, but
> >    promise that all transactions are fully flushed to system memory. Any
> >    devices transactions which do fill cpu caches must call the proposed
> >    dma_buf_begin/end_device_access functions proposed here. Any cpu acc=
ess
> >    must be braketed by calls to dma_buf_begin/end_cpu_access.
> >=20
> >    If your device does fill cpu caches, then essentially you'd not be a=
ble
> >    to import such buffers. Not sure whether we need to put the
> >    responsibility of checking that onto importers or exporters. Ideally
> >    core dma-buf.c code would check this.
> >=20
> >    Also maybe the cpu WC mapping mode would actually need to be a sub-m=
ode
> >    for MEMORY_COHERENT, because all cpu wc achieves is to avoid the nee=
d to
> >    call dma_buf_begin/end_cpu_access, you would still need your devices=
 to
> >    be memory coherent. And if they're not, then you cannot use that
> >    dma-buf.
> >=20
> >    Or maybe alternatively we need to guarantee that exporters which set
> >    MEMORY_COHERENT implement dma_buf_begin/end_device_access to make th=
ings
> >    work for these cpu-coherent but not memory-coherent devices. This
> >    becomes very tricky with device/arch/bus specific details I think.
> >=20
> > - DMA_API_COHERENT: The memory is allocated or mapped by the dma-api, a=
nd
> >    the exact coherency mode is not know. Importers _must_ braket all cpu
> >    and device access with the respective dma_buf functions. This is
> >    essentially the "we have no idea" default.
> >=20
> >    Note that exporters might export memory allocated with dma_map_alloc
> >    with MEMORY_COHERENT or CPU_COHERENT if they know how the memory exa=
ctly
> >    works. E.g. for most arm soc gpu/display drivers we can assume that =
the
> >    dma-api gives us MEMORY_COHERENT or CPU_COHERENT_WC, and just use th=
at.
> >    Essentially this would make the current implicit assumptions explici=
t.
> >=20
> >    udmabuf would need to set this, definitely if Paul's patches to add =
the
> >    explicit device flushes land.
> >=20
> > - DEFAULT_COHERENT: This would be the backwards compat legacy yolo
> >    behvaior. I'm not sure whether we should alias that with
> >    DMA_API_COHERENT or leave it as a special value to mark exporters wh=
ich
> >    haven't been updated for the much more explicit coherency handling y=
et.
> >=20
> >    The specification for this coherency mode would be a flat out "who
> >    knows, just don't break existing use-cases with actual users".
> >    Essentially the only reason we'd have this would be to make sure we =
can
> >    avoid regressions of these existing use-cases, by keeping whatever
> >    horrible heuristics we have in current exporters.
> >=20
> >    It would also allow us to convert exporters and importers on a case =
by
> >    case basis.
> >=20
> > Note that all these coherency modes are defined in terms of bus-sepecif=
ic
> > device access and in terms of dma_buf apis the importer must call or can
> > skip. This way we'd avoid having to change the dma-api in a first step,
> > and if this all works out properly we could then use the resulting dma-=
api
> > as a baseline to propose dma-api extensions.
>=20
> When I read this for the first time my initial impression was that the id=
ea
> mostly looked good, but while thinking about it more and more I came to t=
he
> conclusion that this would go into the wrong direction.
>=20
> Maybe I'm repeating myself, but I think we first of all have to talk a bit
> about some aspects of coherency:
>=20
> 1. Intra device coherency. This means that intra devices caches are
> invalidated before beginning an operation and flushed before signaling th=
at
> an operation finished.
>=20
> 2. Inter device and device to CPU coherency. This means that caches which
> sit in between devices and between devices and the CPU need to be
> invalidated and flushed appropriately when buffers are accessed by differ=
ent
> parties.
>=20
> Number 1 is device specific, part of the DMA-buf framework and handled by
> dma_fences. As far as I can see that part is actually quite well designed
> and I don't see any obvious need for change.
>=20
> Number 2 is platform specific and I completely agree with the DMA-api fol=
ks
> that this doesn't belong into DMA-buf in the first place. That's why I th=
ink
> the begin_cpu_access()/end_cpu_access() callbacks are actually a bit
> misplaced. We still can use those in the exporter, but to make better buf=
fer
> placement decisions, but should not invalidate any caches when they are
> called.

I don't think there's cases where we can avoid the cache management in
begin/end_cpu_access, because there are SoC out there with the following
constraints:

- Device access is not coherent with cpu caches, no snooping going on at
  all. Device2device dma is fully coherent though (since there's no caches
  to take care of at all).

- Mapping as write-combined on the cpu is not possible. Not every platform
  is reasonable and has something like pat with cache control in each pte.
  Or they have, but in practice it's not useable.

Which means your options are only a) no cpu access b) bracket cpu access
with cache management. So I'm not sure what exactly you have in mind here,
since people really don't like a) that's why we added that cpu access
braketing stuff?

Also what exactly would you do in begin/end_cpu_access instead of cache
management? Note that you kinda need to call dma_buf_vmap (for kernel
access) or dma_buf_mmap (for userspace) before you can call these, and any
placement changes should be done in those functions and not in
begin/end_cpu_access. Especially for dma_buf_vmap the buffer must be
pinned, so you have no other choice. And for userspace you'd need fault
handlers, you cannot rely on the begin/end ioct calls, because that would
defacto make those into a pin/unpin ioctl, which defeats the point of
having more dynamic memory management for these buffers.

> The flushing and invalidation for platform caches should really be in the
> DMA-buf framework and not the exporter.
>=20
> So in my thinking the enumeration you outlined above should really go into
> struct device and explaining to everybody what the coherency properties of
> DMA operations of this device is.

So that's the part that I think dma-api folks really don't like. They
don't want higher levels to know about cache management at all, so I don't
see how we can make this happen.

The other issue is that we have a ton of exporter which flaunt the dma-api
rules for their platform/device, e.g. x86 is officially fully cache
coherent. Except integrated gpu/camera isp are not, and for rendering you
can select the coherency mode on a per-transaction level in the cs
packets.

So putting this into a struct device flags is not going to work I think
for these two cases: for dma-api allocated/managed memory I don't
think'll get it, and for stuff like i915-gem it's too strict, we need at
least a per-buffer flag for this.

> > I think starting right out with designing dma-api extension is a few
> > bridges too far. Both from a "how do we convince upstream" pov, but may=
be
> > even more from a "how do we figure out what we even need" pov.
>=20
> Well I totally agree on the "how do we figure out what we even need", but=
 I
> disagree a bit on that we don't know what DMA-api extension we need.
>=20
> We don't have the full picture yet, but as I already outlined from the
> DMA-api pov we have two major things on our TODO list:
>=20
> 1. Somehow remove the struct pages from the DMA-buf *importer* API.
>=20
> =A0=A0=A0 My best suggestion at the moment for this is to split sg_tables=
 into two
> data structures, one for the struct pages and one for the DMA addresses.
>=20
> =A0=A0=A0 Mangling the addresses to ensure that no importer messes with t=
he struct
> pages was a good step, but it also creates problems when
> dma_sync_sg_for_cpu() dma_sync_for_device() are supposed to be called.

Hm yeah we need to temporarily unmangle those around those calls. Since
it's a debug only option this should't be a big deal.

I agree that eventually we should aim towards splitting this properly, but
I think as long as the dma-api itself isn't there yet, it doesn't make too
much sense to charge ahead in dma-buf code.

> 2. Add some dma_sync_sg_between_devices(A, B....).
>=20
> =A0=A0=A0 And on this I think we are on the same page that we are going t=
o need
> this, but we are just not clear on who is going to use it.

Yeah I think this we might be able to eventually get added to dma-api. But
I think that's only on the table once
- we have this in dma-buf code (can be in dma-buf.c or in exporters, I'm
  not extremely opionated about this).
- we have real-world use-cases where fusing superflous caches management
  operations with the existing dma_sync_sg_for_device/cpu actually matters
- someone's willing to roll out the infrastructure work - altough a
  default implementation that just calss dma_sync_sg_for_device/cpu in the
  right order is probably good enough as fallback for most platforms.

I think the other issue is that all this is multi-year projects with a lot
of effort, and I think we need something that will work a lot sooner for
Paul's use-case here.

Cheers, Sima
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
