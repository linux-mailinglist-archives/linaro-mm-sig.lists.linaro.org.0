Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGX4DuiPAWoVeQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 10:14:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7F3509EB4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 10:14:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5729D3F846
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 08:14:30 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 93D053F732
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:14:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=IMik015O;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 574B340101;
	Thu,  7 May 2026 15:33:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF0FCC2BCB2;
	Thu,  7 May 2026 15:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778167983;
	bh=bGFuzFNBmWQ++Cqr0wCwwrQj4yFByartBwvFLjKOROA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IMik015OizlxxJ9XrdK5XDZRfGoJ1MW6WAIBT/JbrAuUsDAvrD5ploKjLWx8K6cHU
	 UJSMihXALFzKXaWpBDaGQXcUqx1djJgGXUUvBOgFpYSGv1o9kD+BZ7N7ieyVqctdVC
	 2oYOOayiJ+i4u28RgQqNq9Hb+AGpPio/J+QchYfICPqKGmkOBHl958t10kHzUMyEGk
	 DumUEtyVhCWDSL5xRnPym2izxf4O7buZXuX1lzEpMW2y2KgIGrb+tM0BF15MX0wr0X
	 tIwZnCh5D8zC3eUjdPy43M1TdPLyxuxOBIoZmLdjsHuh3lk3qctVTD8Yae2+z8LVFS
	 2tTRTg59vdluw==
Date: Thu, 7 May 2026 17:33:00 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <20260507-strict-raptor-of-glee-2fd0df@houat>
References: <20260505140516.1372388-1-ketil.johnsen@arm.com>
 <20260505140516.1372388-2-ketil.johnsen@arm.com>
 <20260505172048.1c48e030@fedora>
 <20260505-spaniel-of-scientific-warranty-ca075e@houat>
 <20260505184021.3676f9af@fedora>
MIME-Version: 1.0
In-Reply-To: <20260505184021.3676f9af@fedora>
X-Spamd-Bar: ----
Message-ID-Hash: RL3CX4SN2TMTSAE3RVGIKB7746YSLMZS
X-Message-ID-Hash: RL3CX4SN2TMTSAE3RVGIKB7746YSLMZS
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Ketil Johnsen <ketil.johnsen@arm.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Daniel Almeida <daniel.almeida@collabora.com>, Alice Ryhl <aliceryhl@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org
 , linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/8] dma-heap: Add proper kref handling on dma-buf heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RL3CX4SN2TMTSAE3RVGIKB7746YSLMZS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5013784067283213143=="
X-Rspamd-Queue-Id: BC7F3509EB4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[88];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FREEMAIL_CC(0.00)[arm.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,lwn.net,linuxfoundation.org,linaro.org,collabora.com,google.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.infradead.org,mediatek.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.914];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,mediatek.com:email]
X-Rspamd-Action: no action


--===============5013784067283213143==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="lt53jirsatoosmgv"
Content-Disposition: inline


--lt53jirsatoosmgv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/8] dma-heap: Add proper kref handling on dma-buf heaps
MIME-Version: 1.0

On Tue, May 05, 2026 at 06:40:21PM +0200, Boris Brezillon wrote:
> On Tue, 5 May 2026 17:39:13 +0200
> Maxime Ripard <mripard@kernel.org> wrote:
>=20
> > Hi Boris,
> >=20
> > On Tue, May 05, 2026 at 05:20:48PM +0200, Boris Brezillon wrote:
> > > Hi Ketil,
> > >=20
> > > On Tue,  5 May 2026 16:05:07 +0200
> > > Ketil Johnsen <ketil.johnsen@arm.com> wrote:
> > >  =20
> > > > From: John Stultz <jstultz@google.com>
> > > >=20
> > > > Add proper reference counting on the dma_heap structure. While
> > > > existing heaps are built-in, we may eventually have heaps loaded
> > > > from modules, and we'll need to be able to properly handle the
> > > > references to the heaps =20
> > >=20
> > > It's weird that this "heap as module" thing is mentioned here, but
> > > actual robustness to make this safe is not added in the commit or any
> > > of the following ones.
> > >  =20
> > > >=20
> > > > Signed-off-by: John Stultz <jstultz@google.com>
> > > > Signed-off-by: T.J. Mercier <tjmercier@google.com>
> > > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > > [Yong: Just add comment for "minor" and "refcount"]
> > > > Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> > > > [Yunfei: Change reviewer's comments]
> > > > Signed-off-by: Florent Tomasin <florent.tomasin@arm.com>
> > > > [Florent: Rebase]
> > > > Signed-off-by: Ketil Johnsen <ketil.johnsen@arm.com>
> > > > [Ketil: Rebase]
> > > > ---
> > > >  drivers/dma-buf/dma-heap.c | 29 +++++++++++++++++++++++++++++
> > > >  include/linux/dma-heap.h   |  2 ++
> > > >  2 files changed, 31 insertions(+)
> > > >=20
> > > > diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> > > > index ac5f8685a6494..9fd365ddbd517 100644
> > > > --- a/drivers/dma-buf/dma-heap.c
> > > > +++ b/drivers/dma-buf/dma-heap.c
> > > > @@ -12,6 +12,7 @@
> > > >  #include <linux/dma-heap.h>
> > > >  #include <linux/err.h>
> > > >  #include <linux/export.h>
> > > > +#include <linux/kref.h>
> > > >  #include <linux/list.h>
> > > >  #include <linux/nospec.h>
> > > >  #include <linux/syscalls.h>
> > > > @@ -31,6 +32,7 @@
> > > >   * @heap_devt:		heap device node
> > > >   * @list:		list head connecting to list of heaps
> > > >   * @heap_cdev:		heap char device
> > > > + * @refcount:		reference counter for this heap device
> > > >   *
> > > >   * Represents a heap of memory from which buffers can be made.
> > > >   */
> > > > @@ -41,6 +43,7 @@ struct dma_heap {
> > > >  	dev_t heap_devt;
> > > >  	struct list_head list;
> > > >  	struct cdev heap_cdev;
> > > > +	struct kref refcount;
> > > >  };
> > > > =20
> > > >  static LIST_HEAD(heap_list);
> > > > @@ -248,6 +251,7 @@ struct dma_heap *dma_heap_add(const struct dma_=
heap_export_info *exp_info)
> > > >  	if (!heap)
> > > >  		return ERR_PTR(-ENOMEM);
> > > > =20
> > > > +	kref_init(&heap->refcount);
> > > >  	heap->name =3D exp_info->name;
> > > >  	heap->ops =3D exp_info->ops;
> > > >  	heap->priv =3D exp_info->priv;
> > > > @@ -313,6 +317,31 @@ struct dma_heap *dma_heap_add(const struct dma=
_heap_export_info *exp_info)
> > > >  }
> > > >  EXPORT_SYMBOL_NS_GPL(dma_heap_add, "DMA_BUF_HEAP");
> > > > =20
> > > > +static void dma_heap_release(struct kref *ref)
> > > > +{
> > > > +	struct dma_heap *heap =3D container_of(ref, struct dma_heap, refc=
ount);
> > > > +	unsigned int minor =3D MINOR(heap->heap_devt);
> > > > +
> > > > +	mutex_lock(&heap_list_lock);
> > > > +	list_del(&heap->list);
> > > > +	mutex_unlock(&heap_list_lock);
> > > > +
> > > > +	device_destroy(dma_heap_class, heap->heap_devt);
> > > > +	cdev_del(&heap->heap_cdev);
> > > > +	xa_erase(&dma_heap_minors, minor);
> > > > +
> > > > +	kfree(heap); =20
> > >=20
> > > That's actually problematic, because cdev_del() doesn't guarantee that
> > > all opened FDs have been closed [1], it just guarantees that no new o=
nes
> > > can materialize. In order to make that safe, we'd need a
> > >=20
> > > 1. kref_get_unless_zero() in dma_heap_open(), with proper locking aro=
und
> > >    the xa_load() to protect against the heap removal that's happening
> > >    here
> > > 2. a dma_heap_put() in a new dma_heap_close() implementation
> > > 3. a guarantee that heap implementations won't go away until the last
> > >    ref is dropped, which means ops and all the data needed for this h=
eap
> > >    to satisfy ioctl()s (and more generally every passed at
> > >    dma_heap_add() time) have to stay valid until the last ref is
> > >    dropped. Alternatively, we could restrict this only to in-flight
> > >    ioctl()s, and have the ops replaced by some dummy ops using RCU or=
 a
> > >    rwlock. But I guess live dmabufs allocated on this heap have to
> > >    retain the heap and its implementation anyway.
> > >=20
> > > For record, #3 is already not satisfied by the current tee_heap
> > > implementation (tee_dma_heap objects can vanish before the dma_heap
> > > object is gone). The other implementations seem to be fine because th=
ey
> > > are statically linked, and they either have exp_info.priv set to NULL,
> > > or something that's never released. =20
> >=20
> > That statement won't hold for long, see:
> > https://lore.kernel.org/r/20260427-dma-buf-heaps-as-modules-v5-0-b6f567=
8feefc@kernel.org
> >=20
> > However, all upstream heaps can be loaded as module, but not unloaded.
> > So once you get a reference to it, you can assume it will live forever.
> > That's why we didn't merge that patch before, even though it was discus=
sed:
> >=20
> > https://lore.kernel.org/all/CANDhNCqk9Uk4aXHhUsL4hR1GHNmWZnH3C9Np-A02wd=
i+J3D7tA@mail.gmail.com/
>=20
> Hm, not too sure that makes the tee_heap implementation sane WRT
> tee_heap removal though, unless we have a guarantee that
> tee_device_unregister() will never be called...

I missed that part. You're totally right then :)

Maxime

--lt53jirsatoosmgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCafywrAAKCRAnX84Zoj2+
dlrEAYDUWefxt16Ub+Wp0zpIpxumXimJURzQDBuzgGyAiEJHfEPu5vzqZ+lW0o0v
HuXvVd8BgN4T3DXXQhia3Am5Yv8L2DwsJgJ/x/u6CyeDO7mD4McOqe5R0yPZ9LZW
06tk6Ye0qA==
=poOT
-----END PGP SIGNATURE-----

--lt53jirsatoosmgv--

--===============5013784067283213143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5013784067283213143==--
