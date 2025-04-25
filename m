Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F63A9BFD0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Apr 2025 09:33:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62DAF455CF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Apr 2025 07:33:29 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id F32413F63E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Apr 2025 07:33:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=QQoH2HDj;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0CF7C68461;
	Fri, 25 Apr 2025 07:32:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A33D5C4CEE4;
	Fri, 25 Apr 2025 07:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745566394;
	bh=VG3dD6HYfg9kvm50BlT/1V2fksSaChUR++ZH98BkUiw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QQoH2HDj1AUqGtYSBDYP4DZnA+TTZlg9EOykRg2GiUtifFZ3lWXnNRDVqqnRdBLQm
	 wDQPl4HhW/Xqu+OZXJjiCMAqgPcvlpcSU52A0WlpjbRCTlj7yj8xL3XVLWXBtmkN9z
	 4rxblxDGYa/32Pgd1gAUHq/s4eCSYrU4h2+eFji2TMJdwRjiMEttMHHwrjYiJ2qp4a
	 ZXmseJDQefldIHA6VWeOhaULmCDrY/SFkKjP7l/Mgc8fHiCR1wB3LcgRLpBxSHml2X
	 qSPMIraqT1P59LfLvFCizcmRqypkeMYC4cUK+AOALFxulhE/Gqoj74i47OSQlKQXSA
	 1WNhblQKA39/Q==
Date: Fri, 25 Apr 2025 09:33:10 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Andrew Davis <afd@ti.com>
Message-ID: <20250425-colossal-nocturnal-ladybug-8f5cf7@houat>
References: <20250407-dma-buf-ecc-heap-v3-0-97cdd36a5f29@kernel.org>
 <20250407-dma-buf-ecc-heap-v3-2-97cdd36a5f29@kernel.org>
 <CABdmKX0=Er-y41roEuZjGZ95YzMxt-mPd9K5982fm_eWhtX5vw@mail.gmail.com>
 <b3391234-ea53-4a18-a1e3-b8a92d9dff5d@ti.com>
MIME-Version: 1.0
In-Reply-To: <b3391234-ea53-4a18-a1e3-b8a92d9dff5d@ti.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F32413F63E
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[172.105.4.254:from];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: TTF6ZNXXSJQU4U7EAVQVKSROMHUGGHZI
X-Message-ID-Hash: TTF6ZNXXSJQU4U7EAVQVKSROMHUGGHZI
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] dma-buf: heaps: Introduce a new heap for reserved memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TTF6ZNXXSJQU4U7EAVQVKSROMHUGGHZI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6392448070031107548=="


--===============6392448070031107548==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="hje4x6mpt4dm7yve"
Content-Disposition: inline


--hje4x6mpt4dm7yve
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/2] dma-buf: heaps: Introduce a new heap for reserved
 memory
MIME-Version: 1.0

On Mon, Apr 14, 2025 at 12:43:44PM -0500, Andrew Davis wrote:
> On 4/11/25 3:26 PM, T.J. Mercier wrote:
> > On Mon, Apr 7, 2025 at 9:29=E2=80=AFAM Maxime Ripard <mripard@kernel.or=
g> wrote:
> > >=20
> > > Some reserved memory regions might have particular memory setup or
> > > attributes that make them good candidates for heaps.
> > >=20
> > > Let's provide a heap type that will create a new heap for each reserv=
ed
> > > memory region flagged as such.
> > >=20
> > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> >=20
> > This patch looks good to me, but I think it'd be good to add more
> > justification like you did at
> > https://lore.kernel.org/all/20240515-dma-buf-ecc-heap-v1-0-54cbbd049511=
@kernel.org
> >=20
> > > ---
> > >   drivers/dma-buf/heaps/Kconfig         |   8 +
> > >   drivers/dma-buf/heaps/Makefile        |   1 +
> > >   drivers/dma-buf/heaps/carveout_heap.c | 360 +++++++++++++++++++++++=
+++++++++++
> > >   3 files changed, 369 insertions(+)
> > >=20
> > > diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kc=
onfig
> > > index a5eef06c422644e8aadaf5aff2bd9a33c49c1ba3..c6981d696733b4d8d0c3f=
6f5a37d967fd6a1a4a2 100644
> > > --- a/drivers/dma-buf/heaps/Kconfig
> > > +++ b/drivers/dma-buf/heaps/Kconfig
> > > @@ -1,5 +1,13 @@
> > > +config DMABUF_HEAPS_CARVEOUT
> > > +       bool "Carveout Heaps"
> > > +       depends on DMABUF_HEAPS
> > > +       help
> > > +         Choose this option to enable the carveout dmabuf heap. The =
carveout
> > > +         heap is backed by pages from reserved memory regions flagge=
d as
> > > +         exportable. If in doubt, say Y.
> > > +
> > >   config DMABUF_HEAPS_SYSTEM
> > >          bool "DMA-BUF System Heap"
> > >          depends on DMABUF_HEAPS
> > >          help
> > >            Choose this option to enable the system dmabuf heap. The s=
ystem heap
> > > diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/M=
akefile
> > > index 974467791032ffb8a7aba17b1407d9a19b3f3b44..b734647ad5c84f4491067=
48160258e372f153df2 100644
> > > --- a/drivers/dma-buf/heaps/Makefile
> > > +++ b/drivers/dma-buf/heaps/Makefile
> > > @@ -1,3 +1,4 @@
> > >   # SPDX-License-Identifier: GPL-2.0
> > > +obj-$(CONFIG_DMABUF_HEAPS_CARVEOUT)    +=3D carveout_heap.o
> > >   obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)      +=3D system_heap.o
> > >   obj-$(CONFIG_DMABUF_HEAPS_CMA)         +=3D cma_heap.o
> > > diff --git a/drivers/dma-buf/heaps/carveout_heap.c b/drivers/dma-buf/=
heaps/carveout_heap.c
> > > new file mode 100644
> > > index 0000000000000000000000000000000000000000..f7198b781ea57f4f60e55=
4d917c9277e9a716b16
> > > --- /dev/null
> > > +++ b/drivers/dma-buf/heaps/carveout_heap.c
> > > @@ -0,0 +1,360 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +
> > > +#include <linux/dma-buf.h>
> > > +#include <linux/dma-heap.h>
> > > +#include <linux/genalloc.h>
> > > +#include <linux/highmem.h>
> > > +#include <linux/of_reserved_mem.h>
> > > +
> > > +struct carveout_heap_priv {
> > > +       struct dma_heap *heap;
> > > +       struct gen_pool *pool;
> > > +};
> > > +
> > > +struct carveout_heap_buffer_priv {
> > > +       struct mutex lock;
> > > +       struct list_head attachments;
> > > +
> > > +       unsigned long num_pages;
> > > +       struct carveout_heap_priv *heap;
> > > +       dma_addr_t daddr;
> > > +       void *vaddr;
> > > +       unsigned int vmap_cnt;
> > > +};
> > > +
> > > +struct carveout_heap_attachment {
> > > +       struct list_head head;
> > > +       struct sg_table table;
> > > +
> > > +       struct device *dev;
> > > +       bool mapped;
> > > +};
> > > +
> > > +static int carveout_heap_attach(struct dma_buf *buf,
> > > +                               struct dma_buf_attachment *attachment)
> > > +{
> > > +       struct carveout_heap_buffer_priv *priv =3D buf->priv;
> > > +       struct carveout_heap_attachment *a;
> > > +       struct sg_table *sgt;
> > > +       unsigned long len =3D priv->num_pages * PAGE_SIZE;
> > > +       int ret;
> > > +
> > > +       a =3D kzalloc(sizeof(*a), GFP_KERNEL);
> > > +       if (!a)
> > > +               return -ENOMEM;
> > > +       INIT_LIST_HEAD(&a->head);
> > > +       a->dev =3D attachment->dev;
> > > +       attachment->priv =3D a;
> > > +
> > > +       sgt =3D &a->table;
> > > +       ret =3D sg_alloc_table(sgt, 1, GFP_KERNEL);
> > > +       if (ret)
> > > +               goto err_cleanup_attach;
> > > +
> > > +       sg_dma_address(sgt->sgl) =3D priv->daddr;
> > > +       sg_dma_len(sgt->sgl) =3D len;
> > > +
> > > +       mutex_lock(&priv->lock);
> > > +       list_add(&a->head, &priv->attachments);
> > > +       mutex_unlock(&priv->lock);
> > > +
> > > +       return 0;
> > > +
> > > +err_cleanup_attach:
> > > +       kfree(a);
> > > +       return ret;
> > > +}
> > > +
> > > +static void carveout_heap_detach(struct dma_buf *dmabuf,
> > > +                                struct dma_buf_attachment *attachmen=
t)
> > > +{
> > > +       struct carveout_heap_buffer_priv *priv =3D dmabuf->priv;
> > > +       struct carveout_heap_attachment *a =3D attachment->priv;
> > > +
> > > +       mutex_lock(&priv->lock);
> > > +       list_del(&a->head);
> > > +       mutex_unlock(&priv->lock);
> > > +
> > > +       sg_free_table(&a->table);
> > > +       kfree(a);
> > > +}
> > > +
> > > +static struct sg_table *
> > > +carveout_heap_map_dma_buf(struct dma_buf_attachment *attachment,
> > > +                         enum dma_data_direction direction)
> > > +{
> > > +       struct carveout_heap_attachment *a =3D attachment->priv;
> > > +       struct sg_table *table =3D &a->table;
> > > +       int ret;
> > > +
> > > +       ret =3D dma_map_sgtable(a->dev, table, direction, 0);
> > > +       if (ret)
> > > +               return ERR_PTR(-ENOMEM);
> >=20
> > Not ERR_PTR(ret)? This is already converted to ENOMEM by
> > dma_buf_map_attachment before leaving the dmabuf code, but it might be
> > nice to retain the error type internally. The two existing heaps
> > aren't consistent about this, and I have a slight preference to
> > propagate the error here.
> >=20
> > > +
> > > +       a->mapped =3D true;
> > > +
> > > +       return table;
> > > +}
> > > +
> > > +static void carveout_heap_unmap_dma_buf(struct dma_buf_attachment *a=
ttachment,
> > > +                                       struct sg_table *table,
> > > +                                       enum dma_data_direction direc=
tion)
> > > +{
> > > +       struct carveout_heap_attachment *a =3D attachment->priv;
> > > +
> > > +       a->mapped =3D false;
> > > +       dma_unmap_sgtable(a->dev, table, direction, 0);
> > > +}
> > > +
> > > +static int
> > > +carveout_heap_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
> > > +                                      enum dma_data_direction direct=
ion)
> > > +{
> > > +       struct carveout_heap_buffer_priv *priv =3D dmabuf->priv;
> > > +       struct carveout_heap_attachment *a;
> > > +       unsigned long len =3D priv->num_pages * PAGE_SIZE;
> > > +
> > > +       mutex_lock(&priv->lock);
> > > +
> > > +       if (priv->vmap_cnt > 0)
> > > +               invalidate_kernel_vmap_range(priv->vaddr, len);
> > > +
> > > +       list_for_each_entry(a, &priv->attachments, head) {
> > > +               if (!a->mapped)
> > > +                       continue;
> > > +
> > > +               dma_sync_sgtable_for_cpu(a->dev, &a->table, direction=
);
> > > +       }
> > > +
> > > +       mutex_unlock(&priv->lock);
> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +static int
> > > +carveout_heap_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
> > > +                                    enum dma_data_direction directio=
n)
> > > +{
> > > +       struct carveout_heap_buffer_priv *priv =3D dmabuf->priv;
> > > +       struct carveout_heap_attachment *a;
> > > +       unsigned long len =3D priv->num_pages * PAGE_SIZE;
> > > +
> > > +       mutex_lock(&priv->lock);
> > > +
> > > +       if (priv->vmap_cnt > 0)
> > > +               flush_kernel_vmap_range(priv->vaddr, len);
> > > +
> > > +       list_for_each_entry(a, &priv->attachments, head) {
> > > +               if (!a->mapped)
> > > +                       continue;
> > > +
> > > +               dma_sync_sgtable_for_device(a->dev, &a->table, direct=
ion);
> > > +       }
> > > +
> > > +       mutex_unlock(&priv->lock);
> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +static int carveout_heap_mmap(struct dma_buf *dmabuf,
> > > +                             struct vm_area_struct *vma)
> > > +{
> > > +       struct carveout_heap_buffer_priv *priv =3D dmabuf->priv;
> > > +       unsigned long len =3D priv->num_pages * PAGE_SIZE;
> > > +       struct page *page =3D virt_to_page(priv->vaddr);
> > > +
> > > +       return remap_pfn_range(vma, vma->vm_start, page_to_pfn(page),
> > > +                              len, vma->vm_page_prot);
> > > +}
> > > +
> > > +static int carveout_heap_vmap(struct dma_buf *dmabuf, struct iosys_m=
ap *map)
> > > +{
> > > +       struct carveout_heap_buffer_priv *priv =3D dmabuf->priv;
> > > +
> > > +       mutex_lock(&priv->lock);
> > > +
> > > +       iosys_map_set_vaddr(map, priv->vaddr);
> > > +       priv->vmap_cnt++;
> > > +
> > > +       mutex_unlock(&priv->lock);
> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +static void carveout_heap_vunmap(struct dma_buf *dmabuf, struct iosy=
s_map *map)
> > > +{
> > > +       struct carveout_heap_buffer_priv *priv =3D dmabuf->priv;
> > > +
> > > +       mutex_lock(&priv->lock);
> > > +
> > > +       priv->vmap_cnt--;
> > > +       mutex_unlock(&priv->lock);
> > > +
> > > +       iosys_map_clear(map);
> > > +}
> > > +
> > > +static void carveout_heap_dma_buf_release(struct dma_buf *buf)
> > > +{
> > > +       struct carveout_heap_buffer_priv *buffer_priv =3D buf->priv;
> > > +       struct carveout_heap_priv *heap_priv =3D buffer_priv->heap;
> > > +       unsigned long len =3D buffer_priv->num_pages * PAGE_SIZE;
> > > +
> > > +       gen_pool_free(heap_priv->pool, (unsigned long)buffer_priv->va=
ddr, len);
> > > +       kfree(buffer_priv);
> > > +}
> > > +
> > > +static const struct dma_buf_ops carveout_heap_buf_ops =3D {
> > > +       .attach         =3D carveout_heap_attach,
> > > +       .detach         =3D carveout_heap_detach,
> > > +       .map_dma_buf    =3D carveout_heap_map_dma_buf,
> > > +       .unmap_dma_buf  =3D carveout_heap_unmap_dma_buf,
> > > +       .begin_cpu_access       =3D carveout_heap_dma_buf_begin_cpu_a=
ccess,
> > > +       .end_cpu_access =3D carveout_heap_dma_buf_end_cpu_access,
> > > +       .mmap           =3D carveout_heap_mmap,
> > > +       .vmap           =3D carveout_heap_vmap,
> > > +       .vunmap         =3D carveout_heap_vunmap,
> > > +       .release        =3D carveout_heap_dma_buf_release,
> > > +};
> > > +
> > > +static struct dma_buf *carveout_heap_allocate(struct dma_heap *heap,
> > > +                                             unsigned long len,
> > > +                                             u32 fd_flags,
> > > +                                             u64 heap_flags)
> > > +{
> > > +       struct carveout_heap_priv *heap_priv =3D dma_heap_get_drvdata=
(heap);
> > > +       struct carveout_heap_buffer_priv *buffer_priv;
> > > +       DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> > > +       struct dma_buf *buf;
> > > +       dma_addr_t daddr;
> > > +       size_t size =3D PAGE_ALIGN(len);
> >=20
> > This PAGE_ALIGN is not needed since dma_heap_buffer_alloc requires all
> > heap allocations to be page aligned before this function is called.
> >=20
> >=20
> >=20
> >=20
> >=20
> > > +       void *vaddr;
> > > +       int ret;
> > > +
> > > +       buffer_priv =3D kzalloc(sizeof(*buffer_priv), GFP_KERNEL);
> > > +       if (!buffer_priv)
> > > +               return ERR_PTR(-ENOMEM);
> > > +
> > > +       INIT_LIST_HEAD(&buffer_priv->attachments);
> > > +       mutex_init(&buffer_priv->lock);
> > > +
> > > +       vaddr =3D gen_pool_dma_zalloc(heap_priv->pool, size, &daddr);
> > > +       if (!vaddr) {
> > > +               ret =3D -ENOMEM;
> > > +               goto err_free_buffer_priv;
> > > +       }
> > > +
> > > +       buffer_priv->vaddr =3D vaddr;
> > > +       buffer_priv->daddr =3D daddr;
> > > +       buffer_priv->heap =3D heap_priv;
> > > +       buffer_priv->num_pages =3D size >> PAGE_SHIFT;
> > > +
> > > +       /* create the dmabuf */
> > > +       exp_info.exp_name =3D dma_heap_get_name(heap);
> > > +       exp_info.ops =3D &carveout_heap_buf_ops;
> > > +       exp_info.size =3D size;
> > > +       exp_info.flags =3D fd_flags;
> > > +       exp_info.priv =3D buffer_priv;
> > > +
> > > +       buf =3D dma_buf_export(&exp_info);
> > > +       if (IS_ERR(buf)) {
> > > +               ret =3D PTR_ERR(buf);
> > > +               goto err_free_buffer;
> > > +       }
> > > +
> > > +       return buf;
> > > +
> > > +err_free_buffer:
> > > +       gen_pool_free(heap_priv->pool, (unsigned long)vaddr, len);
> > > +err_free_buffer_priv:
> > > +       kfree(buffer_priv);
> > > +
> > > +       return ERR_PTR(ret);
> > > +}
> > > +
> > > +static const struct dma_heap_ops carveout_heap_ops =3D {
> > > +       .allocate =3D carveout_heap_allocate,
> > > +};
> > > +
> > > +static int __init carveout_heap_setup(struct device_node *node)
> > > +{
> > > +       struct dma_heap_export_info exp_info =3D {};
> > > +       const struct reserved_mem *rmem;
> > > +       struct carveout_heap_priv *priv;
> > > +       struct dma_heap *heap;
> > > +       struct gen_pool *pool;
> > > +       void *base;
> > > +       int ret;
> > > +
> > > +       rmem =3D of_reserved_mem_lookup(node);
> > > +       if (!rmem)
> > > +               return -EINVAL;
> > > +
> > > +       priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
> > > +       if (!priv)
> > > +               return -ENOMEM;
> > > +
> > > +       pool =3D gen_pool_create(PAGE_SHIFT, NUMA_NO_NODE);
> > > +       if (!pool) {
> > > +               ret =3D -ENOMEM;
> > > +               goto err_cleanup_heap;
> > > +       }
> > > +       priv->pool =3D pool;
> > > +
> > > +       base =3D memremap(rmem->base, rmem->size, MEMREMAP_WB);
>=20
> Why add a mapping here? What if the carveout is never mapped by the CPU
> (or maybe it shouldn't be mapped for some reason). Instead you could
> make the map at map time. I do it that way in our evil vendor tree
> version of this driver for reference[0].

Yeah, it's a good idea indeed.

> > > +       if (!base) {
> > > +               ret =3D -ENOMEM;
> > > +               goto err_release_mem_region;
> > > +       }
> > > +
> > > +       ret =3D gen_pool_add_virt(pool, (unsigned long)base, rmem->ba=
se,
> > > +                               rmem->size, NUMA_NO_NODE);
> > > +       if (ret)
> > > +               goto err_unmap;
> > > +
> > > +       exp_info.name =3D node->full_name;
>=20
> So this is the only part that concerns me. We really got the user exposed
> naming wrong with the CMA Heap IMHO (probably should have been always cal=
led
> "default_cma" or somthing, instead it changes based on how the default CMA
> area was defined).

Hopefully that one will be fixed soon :)

> If the name of the heap is how users select the heap, it needs to be cons=
istent.
> And naming it after the node makes the DT name into ABI. It also means it=
 will
> change based on device, or even based on how it is created. What if this =
same
> reserved region is defined by ACPI instead of DT in some cases, or from k=
ernel
> command-line, etc.. Makes for bad ABI :(
>=20
> Maybe in addition to the "export" property, in the DT node we have a "hea=
p-name"
> that can be set which then defines what name is presented to userspace. At
> very least that allows us to kick the can down the road till we can figur=
e out
> what good portable Heap names should look like.

I agree that CMA not having a consistent naming was bad. However, it's
not really clear to me what would make a good name: do we want to
describe the region, allocator, attributes, all of them? I think we
should clear that up, and document it. Otherwise, even if we have stable
names, we'll never have good, consistent, ones. Let alone downstream.

My assumption so far was that we were describing the region. If that
assumption holds then the full DT name (so name@address) might just be
enough? It will be stable, describe the region in a way a platform would
understand, and we probably wouldn't have collisions.

What do you think?

Maxime

--hje4x6mpt4dm7yve
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaAs6tQAKCRAnX84Zoj2+
dhR+AYDOJEAMNPBTRyo/C1UUnh28ofV1G3chxRL+5FD0gckN8qqeuXA3S29x0/kK
AEnNaIQBgPvJm4H4Dl240m3POLANIAocPvbsSEwHNxnZsHaSpjTnmeTXx1ANtCF6
XT4Vc/2n/w==
=uIRz
-----END PGP SIGNATURE-----

--hje4x6mpt4dm7yve--

--===============6392448070031107548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6392448070031107548==--
