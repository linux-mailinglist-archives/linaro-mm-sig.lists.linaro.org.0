Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 613CE827320
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jan 2024 16:30:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E13543FBE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jan 2024 15:30:21 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 3FB4043C3E
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jan 2024 15:29:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=hfi0e6m2;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.128.42) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40d3da82e29so3161975e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Jan 2024 07:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1704727798; x=1705332598; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2MbnvuFH5avs224Y6+eUBoAgapNKRL93z9F8nAO2ztM=;
        b=hfi0e6m2tj6I1YiezFfdZzFnrP1ye/4HO9W96bWeT1R55VKr5wWj2pQLKkrvGN73xb
         z46LqauKmNXVsOC5idW1Q0qT0T9qns8j1EGXkRC+EbO7tvYImK0SqsF/YXry4IHHX/wa
         DLsf150w/K/sjRWZGGhmx4WpjcZW1JkkL3XY8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704727798; x=1705332598;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2MbnvuFH5avs224Y6+eUBoAgapNKRL93z9F8nAO2ztM=;
        b=DwBPno+nD7URYJ6fGI/E/BKJUtypicsa7lGw+YyH11CATuxYVyVC69fR5meii7mkPe
         TtN03me5CeC4CdwQsdFSa+n21MmvWcQXC4aQD+9tWQv8geU9MaOZMWD1RZjILb9LeD9o
         djWyjolhPfPcSL7oS6AakczjqBOq4+QY+z084g0D4kEI7J9oy7v1nz+y5nuEHrauk0R0
         hfuLHPebemI2sODBOiHdOZpzgqccSoj0r7Uu4bsyJF/OwJAU8BvK52/aFa6LVy4Kt1vK
         zaZb+oFd5lGoYdnqEgy0VTI8Nn5Qr8dxaGZeAwpoAMPEO8kIz7WxRNpgQRDPGeNFA607
         XigA==
X-Gm-Message-State: AOJu0Yz2h7HmsMwo4pGK0yYYgJxLq0Q4r4BHZ0BwiYNhpGs+fa4CgkDA
	uTUGTjp3cioBnZkmAc1fApls/sIRECvJ9Q==
X-Google-Smtp-Source: AGHT+IGGafolo4lUSJI50rV03s0/28KwRrPLnQWVQNtXCVhLE7Rq+r9OtK2rAoRA23RT0NDE+Ur5pg==
X-Received: by 2002:a05:600c:511f:b0:40d:7720:30a6 with SMTP id o31-20020a05600c511f00b0040d772030a6mr4843525wms.3.1704727797848;
        Mon, 08 Jan 2024 07:29:57 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id v11-20020a05600c444b00b0040e34835a58sm182569wmn.22.2024.01.08.07.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 07:29:57 -0800 (PST)
Date: Mon, 8 Jan 2024 16:29:55 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <ZZwU827NMHbx7bsO@phenom.ffwll.local>
Mail-Followup-To: Paul Cercueil <paul@crapouillou.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-doc@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	linaro-mm-sig@lists.linaro.org,
	Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>,
	Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
References: <20240108120056.22165-1-paul@crapouillou.net>
 <20240108120056.22165-4-paul@crapouillou.net>
 <ZZvtEXL8DLPPdtPs@phenom.ffwll.local>
 <a44aca93adc60ce56a64c50797a029631900172e.camel@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a44aca93adc60ce56a64c50797a029631900172e.camel@crapouillou.net>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_RCPT(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.42:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,linuxfoundation.org,linaro.org,amd.com,lwn.net,analog.com,vger.kernel.org,lists.freedesktop.org,collabora.com,lists.linaro.org,gmail.com,kernel.org];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3FB4043C3E
X-Spamd-Bar: -----
Message-ID-Hash: ZUU5RSW4QV3BZHFYUWQYJF246A56X2BI
X-Message-ID-Hash: ZUU5RSW4QV3BZHFYUWQYJF246A56X2BI
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Michael Hennerich <Michael.Hennerich@analog.com>, linux-doc@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linaro-mm-sig@lists.linaro.org, Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/4] usb: gadget: functionfs: Add DMABUF import interface
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZUU5RSW4QV3BZHFYUWQYJF246A56X2BI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 08, 2024 at 03:21:21PM +0100, Paul Cercueil wrote:
> Hi Daniel (Sima?),
>=20
> Le lundi 08 janvier 2024 =E0 13:39 +0100, Daniel Vetter a =E9crit=A0:
> > On Mon, Jan 08, 2024 at 01:00:55PM +0100, Paul Cercueil wrote:
> > > This patch introduces three new ioctls. They all should be called
> > > on a
> > > data endpoint (ie. not ep0). They are:
> > >=20
> > > - FUNCTIONFS_DMABUF_ATTACH, which takes the file descriptor of a
> > > DMABUF
> > > =A0 object to attach to the endpoint.
> > >=20
> > > - FUNCTIONFS_DMABUF_DETACH, which takes the file descriptor of the
> > > =A0 DMABUF to detach from the endpoint. Note that closing the
> > > endpoint's
> > > =A0 file descriptor will automatically detach all attached DMABUFs.
> > >=20
> > > - FUNCTIONFS_DMABUF_TRANSFER, which requests a data transfer from /
> > > to
> > > =A0 the given DMABUF. Its argument is a structure that packs the
> > > DMABUF's
> > > =A0 file descriptor, the size in bytes to transfer (which should
> > > generally
> > > =A0 be set to the size of the DMABUF), and a 'flags' field which is
> > > unused
> > > =A0 for now.
> > > =A0 Before this ioctl can be used, the related DMABUF must be
> > > attached
> > > =A0 with FUNCTIONFS_DMABUF_ATTACH.
> > >=20
> > > These three ioctls enable the FunctionFS code to transfer data
> > > between
> > > the USB stack and a DMABUF object, which can be provided by a
> > > driver
> > > from a completely different subsystem, in a zero-copy fashion.
> > >=20
> > > Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> > >=20
> > > ---
> > > v2:
> > > - Make ffs_dma_resv_lock() static
> > > - Add MODULE_IMPORT_NS(DMA_BUF);
> > > - The attach/detach functions are now performed without locking the
> > > =A0 eps_lock spinlock. The transfer function starts with the spinlock
> > > =A0 unlocked, then locks it before allocating and queueing the USB
> > > =A0 transfer.
> > >=20
> > > v3:
> > > - Inline to_ffs_dma_fence() which was called only once.
> > > - Simplify ffs_dma_resv_lock()
> > > - Add comment explaining why we unref twice in ffs_dmabuf_detach()
> > > - Document uapi struct usb_ffs_dmabuf_transfer_req and IOCTLs
> > > ---
> > > =A0drivers/usb/gadget/function/f_fs.c=A0 | 417
> > > ++++++++++++++++++++++++++++
> > > =A0include/uapi/linux/usb/functionfs.h |=A0 41 +++
> > > =A02 files changed, 458 insertions(+)
> > >=20
> > > diff --git a/drivers/usb/gadget/function/f_fs.c
> > > b/drivers/usb/gadget/function/f_fs.c
> > > index ed2a6d5fcef7..9df1f5abb0d4 100644
> > > --- a/drivers/usb/gadget/function/f_fs.c
> > > +++ b/drivers/usb/gadget/function/f_fs.c
> > > @@ -15,6 +15,9 @@
> > > =A0/* #define VERBOSE_DEBUG */
> > > =A0
> > > =A0#include <linux/blkdev.h>
> > > +#include <linux/dma-buf.h>
> > > +#include <linux/dma-fence.h>
> > > +#include <linux/dma-resv.h>
> > > =A0#include <linux/pagemap.h>
> > > =A0#include <linux/export.h>
> > > =A0#include <linux/fs_parser.h>
> > > @@ -43,6 +46,8 @@
> > > =A0
> > > =A0#define FUNCTIONFS_MAGIC	0xa647361 /* Chosen by a honest
> > > dice roll ;) */
> > > =A0
> > > +MODULE_IMPORT_NS(DMA_BUF);
> > > +
> > > =A0/* Reference counter handling */
> > > =A0static void ffs_data_get(struct ffs_data *ffs);
> > > =A0static void ffs_data_put(struct ffs_data *ffs);
> > > @@ -124,6 +129,21 @@ struct ffs_ep {
> > > =A0	u8				num;
> > > =A0};
> > > =A0
> > > +struct ffs_dmabuf_priv {
> > > +	struct list_head entry;
> > > +	struct kref ref;
> > > +	struct dma_buf_attachment *attach;
> > > +	spinlock_t lock;
> > > +	u64 context;
> > > +};
> > > +
> > > +struct ffs_dma_fence {
> > > +	struct dma_fence base;
> > > +	struct ffs_dmabuf_priv *priv;
> > > +	struct sg_table *sgt;
> > > +	enum dma_data_direction dir;
> > > +};
> > > +
> > > =A0struct ffs_epfile {
> > > =A0	/* Protects ep->ep and ep->req. */
> > > =A0	struct mutex			mutex;
> > > @@ -197,6 +217,8 @@ struct ffs_epfile {
> > > =A0	unsigned char			isoc;	/* P: ffs-
> > > >eps_lock */
> > > =A0
> > > =A0	unsigned char			_pad;
> > > +
> > > +	struct list_head		dmabufs;
> > > =A0};
> > > =A0
> > > =A0struct ffs_buffer {
> > > @@ -1271,10 +1293,44 @@ static ssize_t ffs_epfile_read_iter(struct
> > > kiocb *kiocb, struct iov_iter *to)
> > > =A0	return res;
> > > =A0}
> > > =A0
> > > +static void ffs_dmabuf_release(struct kref *ref)
> > > +{
> > > +	struct ffs_dmabuf_priv *priv =3D container_of(ref, struct
> > > ffs_dmabuf_priv, ref);
> > > +	struct dma_buf_attachment *attach =3D priv->attach;
> > > +	struct dma_buf *dmabuf =3D attach->dmabuf;
> > > +
> > > +	pr_debug("FFS DMABUF release\n");
> > > +	dma_buf_detach(attach->dmabuf, attach);
> > > +	dma_buf_put(dmabuf);
> > > +
> > > +	list_del(&priv->entry);
> >=20
> > I didn't find any locking for this list here.
>=20
> Yeah. I'll add some.
>=20
> > > +	kfree(priv);
> > > +}
> > > +
> > > +static void ffs_dmabuf_get(struct dma_buf_attachment *attach)
> > > +{
> > > +	struct ffs_dmabuf_priv *priv =3D attach->importer_priv;
> > > +
> > > +	kref_get(&priv->ref);
> > > +}
> > > +
> > > +static void ffs_dmabuf_put(struct dma_buf_attachment *attach)
> > > +{
> > > +	struct ffs_dmabuf_priv *priv =3D attach->importer_priv;
> > > +
> > > +	kref_put(&priv->ref, ffs_dmabuf_release);
> > > +}
> > > +
> > > =A0static int
> > > =A0ffs_epfile_release(struct inode *inode, struct file *file)
> > > =A0{
> > > =A0	struct ffs_epfile *epfile =3D inode->i_private;
> > > +	struct ffs_dmabuf_priv *priv, *tmp;
> > > +
> > > +	/* Close all attached DMABUFs */
> > > +	list_for_each_entry_safe(priv, tmp, &epfile->dmabufs,
> > > entry) {
> > > +		ffs_dmabuf_put(priv->attach);
> > > +	}
> > > =A0
> > > =A0	__ffs_epfile_read_buffer_free(epfile);
> > > =A0	ffs_data_closed(epfile->ffs);
> > > @@ -1282,6 +1338,328 @@ ffs_epfile_release(struct inode *inode,
> > > struct file *file)
> > > =A0	return 0;
> > > =A0}
> > > =A0
> > > +static void ffs_dmabuf_signal_done(struct ffs_dma_fence
> > > *dma_fence, int ret)
> > > +{
> > > +	struct ffs_dmabuf_priv *priv =3D dma_fence->priv;
> > > +	struct dma_fence *fence =3D &dma_fence->base;
> > > +
> > > +	dma_fence_get(fence);
> > > +	fence->error =3D ret;
> > > +	dma_fence_signal(fence);
> > > +
> > > +	dma_buf_unmap_attachment(priv->attach, dma_fence->sgt,
> > > dma_fence->dir);
> > > +	dma_fence_put(fence);
> > > +	ffs_dmabuf_put(priv->attach);
> >=20
> > So this can in theory take the dma_resv lock, and if the usb
> > completion
> > isn't an unlimited worker this could hold up completion of future
> > dma_fence, resulting in a deadlock.
> >=20
> > Needs to be checked how usb works, and if stalling indefinitely in
> > the
> > io_complete callback can hold up the usb stack you need to:
> >=20
> > - drop a dma_fence_begin/end_signalling annotations in here
> > - pull out the unref stuff into a separate preallocated worker (or at
> > =A0 least the final unrefs for ffs_dma_buf).
>=20
> Only ffs_dmabuf_put() can attempt to take the dma_resv and would have
> to be in a worker, right? Everything else would be inside the
> dma_fence_begin/end_signalling() annotations?

Yup. Also I noticed that unlike the iio patches you don't have the
dma_buf_unmap here in the completion path (or I'm blind?), which helps a
lot with avoiding trouble.

> > > +}
> > > +
> > > +static void ffs_epfile_dmabuf_io_complete(struct usb_ep *ep,
> > > +					=A0 struct usb_request *req)
> > > +{
> > > +	pr_debug("FFS: DMABUF transfer complete, status=3D%d\n",
> > > req->status);
> > > +	ffs_dmabuf_signal_done(req->context, req->status);
> > > +	usb_ep_free_request(ep, req);
> > > +}
> > > +
> > > +static const char *ffs_dmabuf_get_driver_name(struct dma_fence
> > > *fence)
> > > +{
> > > +	return "functionfs";
> > > +}
> > > +
> > > +static const char *ffs_dmabuf_get_timeline_name(struct dma_fence
> > > *fence)
> > > +{
> > > +	return "";
> > > +}
> > > +
> > > +static void ffs_dmabuf_fence_release(struct dma_fence *fence)
> > > +{
> > > +	struct ffs_dma_fence *dma_fence =3D
> > > +		container_of(fence, struct ffs_dma_fence, base);
> > > +
> > > +	kfree(dma_fence);
> > > +}
> > > +
> > > +static const struct dma_fence_ops ffs_dmabuf_fence_ops =3D {
> > > +	.get_driver_name	=3D ffs_dmabuf_get_driver_name,
> > > +	.get_timeline_name	=3D ffs_dmabuf_get_timeline_name,
> > > +	.release		=3D ffs_dmabuf_fence_release,
> > > +};
> > > +
> > > +static int ffs_dma_resv_lock(struct dma_buf *dmabuf, bool
> > > nonblock)
> > > +{
> > > +	int ret;
> > > +
> > > +	ret =3D dma_resv_lock_interruptible(dmabuf->resv, NULL);
> > > +	if (ret) {
> > > +		if (ret !=3D -EDEADLK)
> > > +			return ret;
> > > +		if (nonblock)
> > > +			return -EBUSY;
> > > +
> > > +		ret =3D dma_resv_lock_slow_interruptible(dmabuf-
> > > >resv, NULL);
> >=20
> > This is overkill, without a reservation context you will never get
> > -EDEADLK and so never have to do slowpath locking. So just dead code.
> >=20
> > If you want to check, build with CONFIG_DEBUG_WW_MUTEX_SLOWPATH=3Dy
>=20
> Ok.
>=20
> >=20
> > > +	}
> > > +
> > > +	return ret;
> > > +}
> > > +
> > > +static struct dma_buf_attachment *
> > > +ffs_dmabuf_find_attachment(struct device *dev, struct dma_buf
> > > *dmabuf,
> > > +			=A0=A0 bool nonblock)
> > > +{
> > > +	struct dma_buf_attachment *elm, *attach =3D NULL;
> > > +	int ret;
> > > +
> > > +	ret =3D ffs_dma_resv_lock(dmabuf, nonblock);
> > > +	if (ret)
> > > +		return ERR_PTR(ret);
> > > +
> > > +	list_for_each_entry(elm, &dmabuf->attachments, node) {
> > > +		if (elm->dev =3D=3D dev) {
> > > +			attach =3D elm;
> > > +			break;
> > > +		}
> > > +	}
> > > +
> > > +	if (attach)
> > > +		ffs_dmabuf_get(elm);
> >=20
> > This needs a kref_get_unless_zero or you can race with the final
> > free.
> >=20
> > I'm not super keen that usb-gadget is noodling around in the
> > attachment
> > list like this, your own lookup structure (you have the dma-buf list
> > already anyway to keep track of all attachments) would be much nicer.
> > But
> > the get_unless_zero I think is mandatory here for this weak
> > reference.
>=20
> Christian suggested to move that to a dma_buf function.
> Alternatively I can browse my epfile->dmabufs list, sure - that won't
> be hard to do. That's probably a better idea too.

The trouble with the dma_buf function is that you need to have the
kref_get_unless_zero on the kref in your private thing _within_ the
dma_resv_lock critical section. Otherwise this lookup function and a
concurrent final kref_put might race. So that helper function would need
to require the caller to hold dma_resv_lock already.

It's that kind of locking context leaking across subsystems I don't really
like much. It's not buggy, but it is a bit much leaky abstraction.

> > > +
> > > +	dma_resv_unlock(dmabuf->resv);
> > > +
> > > +	return attach ?: ERR_PTR(-EPERM);
> > > +}
> > > +
> > > +static int ffs_dmabuf_attach(struct file *file, int fd)
> > > +{
> > > +	struct ffs_epfile *epfile =3D file->private_data;
> > > +	struct usb_gadget *gadget =3D epfile->ffs->gadget;
> > > +	struct dma_buf_attachment *attach;
> > > +	struct ffs_dmabuf_priv *priv;
> > > +	struct dma_buf *dmabuf;
> > > +	int err;
> > > +
> > > +	if (!gadget || !gadget->sg_supported)
> > > +		return -EPERM;
> > > +
> > > +	dmabuf =3D dma_buf_get(fd);
> > > +	if (IS_ERR(dmabuf))
> > > +		return PTR_ERR(dmabuf);
> > > +
> > > +	attach =3D dma_buf_attach(dmabuf, gadget->dev.parent);
> > > +	if (IS_ERR(attach)) {
> > > +		err =3D PTR_ERR(attach);
> > > +		goto err_dmabuf_put;
> > > +	}
> > > +
> > > +	priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
> > > +	if (!priv) {
> > > +		err =3D -ENOMEM;
> > > +		goto err_dmabuf_detach;
> > > +	}
> > > +
> > > +	attach->importer_priv =3D priv;
> > > +
> > > +	priv->attach =3D attach;
> > > +	spin_lock_init(&priv->lock);
> > > +	kref_init(&priv->ref);
> > > +	priv->context =3D dma_fence_context_alloc(1);
> >=20
> > Just to check: usb gagdet gurantees that all requests on an ep are
> > ordered?
>=20
> The documentation of usb_ep_queue() states that the transfer requests
> are processed in FIFO order, yes.

Might be good to document this in the comment message, or if you feel
like, in the seqno generation for each dma_fence.
>=20
> >=20
> > > +
> > > +	list_add(&priv->entry, &epfile->dmabufs);
> > > +
> > > +	return 0;
> > > +
> > > +err_dmabuf_detach:
> > > +	dma_buf_detach(dmabuf, attach);
> > > +err_dmabuf_put:
> > > +	dma_buf_put(dmabuf);
> > > +
> > > +	return err;
> > > +}
> > > +
> > > +static int ffs_dmabuf_detach(struct file *file, int fd)
> > > +{
> > > +	struct ffs_epfile *epfile =3D file->private_data;
> > > +	struct usb_gadget *gadget =3D epfile->ffs->gadget;
> > > +	bool nonblock =3D file->f_flags & O_NONBLOCK;
> > > +	struct dma_buf_attachment *attach;
> > > +	struct dma_buf *dmabuf;
> > > +	int ret =3D 0;
> > > +
> > > +	dmabuf =3D dma_buf_get(fd);
> > > +	if (IS_ERR(dmabuf))
> > > +		return PTR_ERR(dmabuf);
> > > +
> > > +	attach =3D ffs_dmabuf_find_attachment(gadget->dev.parent,
> > > +					=A0=A0=A0 dmabuf, nonblock);
> > > +	if (IS_ERR(attach)) {
> > > +		ret =3D PTR_ERR(attach);
> > > +		goto out_dmabuf_put;
> > > +	}
> > > +
> > > +	/*
> > > +	 * Unref twice to release the reference obtained with
> > > +	 * ffs_dmabuf_find_attachment() above, and the one
> > > obtained in
> > > +	 * ffs_dmabuf_attach().
> > > +	 */
> > > +	ffs_dmabuf_put(attach);
> >=20
> > This looks strange, what's stopping userspace from calling detach
> > multiple
> > times while a transfer is pending (so that the destruction is
> > delayed)?
> > That smells like a refcount underflow.
>=20
> My idea was that the second ffs_dmabuf_put() would trigger
> ffs_dmabuf_release(), which calls the list_del(); so a second call to
> ffs_dmabuf_detach() would fail to find the attachment.
>=20
> Indeed, if there's an on-going transfer, the refcount is higher, and
> this breaks miserably.

Yup that was the scenario I was thinking of.

> Christian pointed out that it breaks if ffs_dmabuf_detach() is called
> concurrently, but this is even worse :)

You need the 2nd detach ioctl call to actually make things underrun, but I
guess it also means that with just one you destroy the mapping/attachment
before the hw is finished. Which I missed :-)

> > You probably need to tie the refcounts you acquire in
> > ffs_dmabuf_attach to
> > epfile->dmabufs 1:1 to make sure there's no way userspace can pull
> > you
> > over the table. This is also the reason why I looked for the locking
> > of
> > that list, and didn't find it.
>=20
> I'll change the code to atomically get the dma_buf_attachment and
> remove it from the list.
>=20
> >=20
> > > +	ffs_dmabuf_put(attach);
> > > +
> > > +out_dmabuf_put:
> > > +	dma_buf_put(dmabuf);
> > > +	return ret;
> > > +}
> > > +
> > > +static int ffs_dmabuf_transfer(struct file *file,
> > > +			=A0=A0=A0=A0=A0=A0 const struct
> > > usb_ffs_dmabuf_transfer_req *req)
> > > +{
> > > +	bool dma_to_ram, nonblock =3D file->f_flags & O_NONBLOCK;
> > > +	struct ffs_epfile *epfile =3D file->private_data;
> > > +	struct usb_gadget *gadget =3D epfile->ffs->gadget;
> > > +	struct dma_buf_attachment *attach;
> > > +	struct ffs_dmabuf_priv *priv;
> > > +	enum dma_data_direction dir;
> > > +	struct ffs_dma_fence *fence;
> > > +	struct usb_request *usb_req;
> > > +	struct sg_table *sg_table;
> > > +	struct dma_buf *dmabuf;
> > > +	struct ffs_ep *ep;
> > > +	int ret;
> > > +
> > > +	if (req->flags & ~USB_FFS_DMABUF_TRANSFER_MASK)
> > > +		return -EINVAL;
> > > +
> > > +	dmabuf =3D dma_buf_get(req->fd);
> > > +	if (IS_ERR(dmabuf))
> > > +		return PTR_ERR(dmabuf);
> > > +
> > > +	if (req->length > dmabuf->size || req->length =3D=3D 0) {
> > > +		ret =3D -EINVAL;
> > > +		goto err_dmabuf_put;
> > > +	}
> > > +
> > > +	attach =3D ffs_dmabuf_find_attachment(gadget->dev.parent,
> > > +					=A0=A0=A0 dmabuf, nonblock);
> > > +	if (IS_ERR(attach)) {
> > > +		ret =3D PTR_ERR(attach);
> > > +		goto err_dmabuf_put;
> > > +	}
> > > +
> > > +	priv =3D attach->importer_priv;
> > > +
> > > +	if (epfile->in)
> > > +		dir =3D DMA_FROM_DEVICE;
> > > +	else
> > > +		dir =3D DMA_TO_DEVICE;
> > > +
> > > +	sg_table =3D dma_buf_map_attachment(attach, dir);
> > > +	if (IS_ERR(sg_table)) {
> > > +		ret =3D PTR_ERR(sg_table);
> > > +		goto err_attachment_put;
> > > +	}
> > > +
> > > +	ep =3D ffs_epfile_wait_ep(file);
> > > +	if (IS_ERR(ep)) {
> > > +		ret =3D PTR_ERR(ep);
> > > +		goto err_unmap_attachment;
> > > +	}
> > > +
> > > +	ret =3D ffs_dma_resv_lock(dmabuf, nonblock);
> > > +	if (ret)
> > > +		goto err_unmap_attachment;
> > > +
> > > +	/* Make sure we don't have writers */
> > > +	if (!dma_resv_test_signaled(dmabuf->resv,
> > > DMA_RESV_USAGE_WRITE)) {
> > > +		pr_debug("FFS WRITE fence is not signaled\n");
> > > +		ret =3D -EBUSY;
> > > +		goto err_resv_unlock;
> > > +	}
> > > +
> > > +	dma_to_ram =3D dir =3D=3D DMA_FROM_DEVICE;
> > > +
> > > +	/* If we're writing to the DMABUF, make sure we don't have
> > > readers */
> > > +	if (dma_to_ram &&
> > > +	=A0=A0=A0 !dma_resv_test_signaled(dmabuf->resv,
> > > DMA_RESV_USAGE_READ)) {
> > > +		pr_debug("FFS READ fence is not signaled\n");
> > > +		ret =3D -EBUSY;
> > > +		goto err_resv_unlock;
> > > +	}
> > > +
> > > +	ret =3D dma_resv_reserve_fences(dmabuf->resv, 1);
> > > +	if (ret)
> > > +		goto err_resv_unlock;
> > > +
> > > +	fence =3D kmalloc(sizeof(*fence), GFP_KERNEL);
> > > +	if (!fence) {
> > > +		ret =3D -ENOMEM;
> > > +		goto err_resv_unlock;
> > > +	}
> > > +
> > > +	fence->sgt =3D sg_table;
> > > +	fence->dir =3D dir;
> > > +	fence->priv =3D priv;
> > > +
> > > +	dma_fence_init(&fence->base, &ffs_dmabuf_fence_ops,
> > > +		=A0=A0=A0=A0=A0=A0 &priv->lock, priv->context, 0);
> >=20
> > You need a real seqno here or things break with fence merging. Or
> > alternatively unordered dma_fence (which are implemented by
> > allocating a
> > new context for each fence, maybe we should change that eventually
> > ...).
>=20
> Understood.
>=20
> > > +
> > > +	spin_lock_irq(&epfile->ffs->eps_lock);
> > > +
> > > +	/* In the meantime, endpoint got disabled or changed. */
> > > +	if (epfile->ep !=3D ep) {
> > > +		ret =3D -ESHUTDOWN;
> > > +		goto err_fence_put;
> > > +	}
> > > +
> > > +	usb_req =3D usb_ep_alloc_request(ep->ep, GFP_ATOMIC);
> > > +	if (!usb_req) {
> > > +		ret =3D -ENOMEM;
> > > +		goto err_fence_put;
> > > +	}
> > > +
> > > +	dma_resv_add_fence(dmabuf->resv, &fence->base,
> > > +			=A0=A0 dma_resv_usage_rw(dma_to_ram));
> > > +	dma_resv_unlock(dmabuf->resv);
> > > +
> > > +	/* Now that the dma_fence is in place, queue the transfer.
> > > */
> > > +
> > > +	usb_req->length =3D req->length;
> > > +	usb_req->buf =3D NULL;
> > > +	usb_req->sg =3D sg_table->sgl;
> > > +	usb_req->num_sgs =3D sg_nents_for_len(sg_table->sgl, req-
> > > >length);
> > > +	usb_req->sg_was_mapped =3D true;
> > > +	usb_req->context=A0 =3D fence;
> > > +	usb_req->complete =3D ffs_epfile_dmabuf_io_complete;
> > > +
> > > +	ret =3D usb_ep_queue(ep->ep, usb_req, GFP_ATOMIC);
> > > +	if (ret) {
> > > +		usb_ep_free_request(ep->ep, usb_req);
> > > +
> > > +		spin_unlock_irq(&epfile->ffs->eps_lock);
> > > +
> > > +		pr_warn("FFS: Failed to queue DMABUF: %d\n", ret);
> > > +		ffs_dmabuf_signal_done(fence, ret);
> > > +		goto out_dma_buf_put;
> > > +	}
> > > +
> > > +	spin_unlock_irq(&epfile->ffs->eps_lock);
> > > +
> > > +out_dma_buf_put:
> > > +	dma_buf_put(dmabuf);
> > > +
> > > +	return ret;
> > > +
> > > +err_fence_put:
> > > +	spin_unlock_irq(&epfile->ffs->eps_lock);
> > > +	dma_fence_put(&fence->base);
> > > +err_resv_unlock:
> > > +	dma_resv_unlock(dmabuf->resv);
> > > +err_unmap_attachment:
> > > +	dma_buf_unmap_attachment(attach, sg_table, dir);
> > > +err_attachment_put:
> > > +	ffs_dmabuf_put(attach);
> > > +err_dmabuf_put:
> > > +	dma_buf_put(dmabuf);
> > > +
> > > +	return ret;
> > > +}
> > > +
> > > =A0static long ffs_epfile_ioctl(struct file *file, unsigned code,
> > > =A0			=A0=A0=A0=A0 unsigned long value)
> > > =A0{
> > > @@ -1292,6 +1670,44 @@ static long ffs_epfile_ioctl(struct file
> > > *file, unsigned code,
> > > =A0	if (WARN_ON(epfile->ffs->state !=3D FFS_ACTIVE))
> > > =A0		return -ENODEV;
> > > =A0
> > > +	switch (code) {
> > > +	case FUNCTIONFS_DMABUF_ATTACH:
> > > +	{
> > > +		int fd;
> > > +
> > > +		if (copy_from_user(&fd, (void __user *)value,
> > > sizeof(fd))) {
> > > +			ret =3D -EFAULT;
> > > +			break;
> > > +		}
> > > +
> > > +		return ffs_dmabuf_attach(file, fd);
> > > +	}
> > > +	case FUNCTIONFS_DMABUF_DETACH:
> > > +	{
> > > +		int fd;
> > > +
> > > +		if (copy_from_user(&fd, (void __user *)value,
> > > sizeof(fd))) {
> > > +			ret =3D -EFAULT;
> > > +			break;
> > > +		}
> > > +
> > > +		return ffs_dmabuf_detach(file, fd);
> > > +	}
> > > +	case FUNCTIONFS_DMABUF_TRANSFER:
> > > +	{
> > > +		struct usb_ffs_dmabuf_transfer_req req;
> > > +
> > > +		if (copy_from_user(&req, (void __user *)value,
> > > sizeof(req))) {
> > > +			ret =3D -EFAULT;
> > > +			break;
> > > +		}
> > > +
> > > +		return ffs_dmabuf_transfer(file, &req);
> > > +	}
> > > +	default:
> > > +		break;
> > > +	}
> > > +
> > > =A0	/* Wait for endpoint to be enabled */
> > > =A0	ep =3D ffs_epfile_wait_ep(file);
> > > =A0	if (IS_ERR(ep))
> > > @@ -1869,6 +2285,7 @@ static int ffs_epfiles_create(struct ffs_data
> > > *ffs)
> > > =A0	for (i =3D 1; i <=3D count; ++i, ++epfile) {
> > > =A0		epfile->ffs =3D ffs;
> > > =A0		mutex_init(&epfile->mutex);
> > > +		INIT_LIST_HEAD(&epfile->dmabufs);
> > > =A0		if (ffs->user_flags & FUNCTIONFS_VIRTUAL_ADDR)
> > > =A0			sprintf(epfile->name, "ep%02x", ffs-
> > > >eps_addrmap[i]);
> > > =A0		else
> > > diff --git a/include/uapi/linux/usb/functionfs.h
> > > b/include/uapi/linux/usb/functionfs.h
> > > index 078098e73fd3..9f88de9c3d66 100644
> > > --- a/include/uapi/linux/usb/functionfs.h
> > > +++ b/include/uapi/linux/usb/functionfs.h
> > > @@ -86,6 +86,22 @@ struct usb_ext_prop_desc {
> > > =A0	__le16	wPropertyNameLength;
> > > =A0} __attribute__((packed));
> > > =A0
> > > +/* Flags for usb_ffs_dmabuf_transfer_req->flags (none for now) */
> > > +#define USB_FFS_DMABUF_TRANSFER_MASK	0x0
> > > +
> > > +/**
> > > + * struct usb_ffs_dmabuf_transfer_req - Transfer request for a
> > > DMABUF object
> > > + * @fd:		file descriptor of the DMABUF object
> > > + * @flags:	one or more USB_FFS_DMABUF_TRANSFER_* flags
> > > + * @length:	number of bytes used in this DMABUF for the data
> > > transfer.
> > > + *		Should generally be set to the DMABUF's size.
> > > + */
> > > +struct usb_ffs_dmabuf_transfer_req {
> > > +	int fd;
> > > +	__u32 flags;
> > > +	__u64 length;
> > > +} __attribute__((packed));
> > > +
> > > =A0#ifndef __KERNEL__
> > > =A0
> > > =A0/*
> > > @@ -290,6 +306,31 @@ struct usb_functionfs_event {
> > > =A0#define	FUNCTIONFS_ENDPOINT_DESC	_IOR('g', 130, \
> > > =A0					=A0=A0=A0=A0 struct
> > > usb_endpoint_descriptor)
> > > =A0
> > > +/*
> > > + * Attach the DMABUF object, identified by its file descriptor, to
> > > the
> > > + * data endpoint. Returns zero on success, and a negative errno
> > > value
> > > + * on error.
> > > + */
> > > +#define FUNCTIONFS_DMABUF_ATTACH	_IOW('g', 131, int)
> > > +
> > > =A0
> > > +/*
> > > + * Detach the given DMABUF object, identified by its file
> > > descriptor,
> > > + * from the data endpoint. Returns zero on success, and a negative
> > > + * errno value on error. Note that closing the endpoint's file
> > > + * descriptor will automatically detach all attached DMABUFs.
> > > + */
> > > +#define FUNCTIONFS_DMABUF_DETACH	_IOW('g', 132, int)
> > > +
> > > +/*
> > > + * Enqueue the previously attached DMABUF to the transfer queue.
> > > + * The argument is a structure that packs the DMABUF's file
> > > descriptor,
> > > + * the size in bytes to transfer (which should generally
> > > correspond to
> > > + * the size of the DMABUF), and a 'flags' field which is unused
> > > + * for now. Returns zero on success, and a negative errno value on
> > > + * error.
> > > + */
> > > +#define FUNCTIONFS_DMABUF_TRANSFER	_IOW('g', 133, \
> > > +					=A0=A0=A0=A0 struct
> > > usb_ffs_dmabuf_transfer_req)
> > > =A0
> > > =A0#endif /* _UAPI__LINUX_FUNCTIONFS_H__ */
> >=20
> > Only things I've found are (I think at least) bugs in the usb gadget
> > logic, not directly in how dma-buf/fence is used. The only thing I've
> > noticed is the lack of actual dma_fence seqno (which I think
> > Christian
> > already pointed out in an already review, looking at archives at
> > least).
> > With that addressed:
> >=20
> > Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> >=20
> > Cheers, Sima
>=20
> Thanks for the review!

btw if you address all the locking/lifetime issues I guess you can upgrade
to r-b: me on the next version.

Cheers, Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
