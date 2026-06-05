Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sehfKvNJKWorTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 432CA668C62
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=gyQNxVZ9;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BD8840A43
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:26:42 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by lists.linaro.org (Postfix) with ESMTPS id DC1413F7E5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2026 18:44:03 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2c0c2d8b95bso15932845ad.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jun 2026 11:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780685043; x=1781289843; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VmToUT+A6qp8UgJ/VhXar74M6fIQJS1C/pR1f1V3ExQ=;
        b=gyQNxVZ9XndE5iICLp0tu8jYslpVdZ1au1bv73+Qpr4Vhh0Dh+1Tv6J+9JYZhmYqKZ
         EQDeCiFKnTESYF0CYAU1tusG2xqalFGK8RbK+nu6ZJhh+et7cTgtHGdMeVN1XfH4Pd0X
         SbCG0ILzSYCwdGkTFxiTLkT26ZdvFdnYuoOskKR6BbMTrT0LdSc5OZ+dXzoEP7U7KW5v
         RsstC6vDhsU1VwwbrkqIw19Qcli0cfwyt+SCkrGS1xuD7SShb1NIKPN4wPfdDM7Mtd51
         /YSK2sYHtUKSNm4XRHbAGo83bCRpsgX/gShMO/AonyN5Eb/VFTMzJpi2sKOmOkRgdWHO
         Dflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780685043; x=1781289843;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VmToUT+A6qp8UgJ/VhXar74M6fIQJS1C/pR1f1V3ExQ=;
        b=FSEigg92xhglJV9G1D0LwpMk5arJhAJGs/bsAoUFfpC2dQHVlM4+qx4OxYCPMwdlwQ
         9nmTEg9zCAf+erlnVGd9WcJbIcXH7wXoEICfw1gL2UhWHPMLCMITlt6w+QIZdJneW4XN
         nxzSck81C1XXl98FtrqtWqlOly5kRrPSFdoEx85jDgDBt3t1+n7HYvxWvs2nJMwWj+6w
         A7Dg0TY3MEw/Z/79PVTYKFEe7FIUZBWH3Z3q884tLM9AhlhPAS7tlbLgCiIXMo6upwvv
         Xx/J2SXv/y+GKqZyN1nSky2NKoD2CyzJpg8Zj7le/vyVUwj7YXRO889m1CW78GyBjnCx
         aL4w==
X-Forwarded-Encrypted: i=1; AFNElJ+2DbzLsMoSr62AQz1Koq8IMwDtBRR1GgNrntXMkvru1QgNKXoIIDcT4yP+JMmA2APHmWiRlrJsNYF1RDYl@lists.linaro.org
X-Gm-Message-State: AOJu0Yw33mO7q4tkunVMFB6j/FQxVeED20fyWLAhlD7kdAPEXjowlslb
	5084pMV38JfL5tNKU3RWDzlk2rVtmdeuQHIepMHeifl5Ti32+alyl6in
X-Gm-Gg: Acq92OGT+pFezuEfkGj4rSnCDgMx+qlt96BQn0EuXJSjKMA79CTmUxQ/ciR+69mEbL7
	sXIfQ13axWkf4OntI5NZuqmaJCf+rWhVI7Zq1aEuPebozJjVwltvDBL2AUcxFCv+zPrlyUz3EvY
	WoE6wi7oCMC05D1juhLgmQokEtSqG51ohGLeJA2sorn++PlW7UfXcpv/e0799y/gicyrPOPRzMP
	v1MSLy9xlJcMAQz8YFyIcLRo1EW+fPxrVDFTfCGPbg+1tw/uV9o1CihZMKBaFWVsvd3vIaU+jbe
	cADl8NEx5e/uEKOzxYevyy+GvpGkw8xlPWAoO00twBZ23zZUnGr9koQvb1/5GJ2Wl7vKDYoM+z9
	vuOORJcRtpzo/Y2xje6m5lXB7WhpQFhoVAvQjCteBSfDL5Z+3o5NEqxBuy3+tX+0/UUKZQRLamW
	gzuRL3Z3ovGut4u+kGM29cSdNFIy3bsIgmNegMLgUdqnSj5hvlKoOLxqI=
X-Received: by 2002:a17:903:18c:b0:2c0:e5ee:f56c with SMTP id d9443c01a7336-2c1e881fefemr54368775ad.20.1780685042865;
        Fri, 05 Jun 2026 11:44:02 -0700 (PDT)
Received: from devvm29614.prn0.facebook.com ([2a03:2880:ff:58::])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c1663981basm96908105ad.67.2026.06.05.11.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 11:44:02 -0700 (PDT)
Date: Fri, 5 Jun 2026 11:44:00 -0700
From: Bobby Eshleman <bobbyeshleman@gmail.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <aiMY8CpckM8Jav0g@devvm29614.prn0.facebook.com>
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
 <20260603-tcpdm-large-niovs-v1-2-f37a4ac6726c@meta.com>
 <bdce2488-fe77-4f36-9ed6-dd2c785fa7c1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bdce2488-fe77-4f36-9ed6-dd2c785fa7c1@amd.com>
X-Spamd-Bar: ----
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FWLH2TE5HYABILHESIINEKZ35HV3ZIBE
X-Message-ID-Hash: FWLH2TE5HYABILHESIINEKZ35HV3ZIBE
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:24:34 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FWLH2TE5HYABILHESIINEKZ35HV3ZIBE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[112];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,meta.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 432CA668C62

On Fri, Jun 05, 2026 at 11:30:07AM +0200, Christian K=F6nig wrote:
> On 6/4/26 02:42, Bobby Eshleman wrote:
> > From: Bobby Eshleman <bobbyeshleman@meta.com>
> >=20
> > get_sg_table() emitted one PAGE_SIZE sg entry per page even when the
> > underlying folio was larger.
> >=20
> > Instead, walk folios[] and emit one sg entry per folio. When folios
> > represent large pages (as is for MFD_HUGETLB), each sg entry is a large
> > page. Normal PAGE_SIZE sg tables are unchanged.
> >=20
> > Required by net/core/devmem to support rx-buf-size > PAGE_SIZE with
> > udmabuf.
>=20
> That doesn't explain why this is required.

Sure, can definitely add. Devmem currently requires dmabuf sg entries to
be length and size aligned when it allocates niovs for NIC page pools.
Though udmabuf is not violating any dmabuf contract by emitting
PAGE_SIZE entries and the above restriction is probably more a
shortfalling of devmem, by emitting a single entry per folio this patch
allows udmabuf to be used by devmem for large pages.

>=20
> Please note that accessing the pages/folio of an sg-table returned by DMA=
-buf is illegal and strictly forbidden!
>=20
> Regards,
> Christian.

It seems both devmem and io_uring zcrx at least introspect through to
the sg-table to build NIC page pools (not accessing the memory itself,
however). Is there a better way?

Best,
Bobby

>=20
> > Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>
> > ---
> >  drivers/dma-buf/udmabuf.c | 47 +++++++++++++++++++++++++++++++++++++++=
+++-----
> >  1 file changed, 42 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> > index 94b8ecb892bb..f28dd3788ada 100644
> > --- a/drivers/dma-buf/udmabuf.c
> > +++ b/drivers/dma-buf/udmabuf.c
> > @@ -141,26 +141,63 @@ static void vunmap_udmabuf(struct dma_buf *buf, s=
truct iosys_map *map)
> >         vm_unmap_ram(map->vaddr, ubuf->pagecount);
> >  }
> >=20
> > +/* Return the number of contiguous pages backed by the folio at @i.
> > + * A udmabuf may map only part of a folio, or reference the same folio
> > + * in multiple non-contiguous runs, so folio_nr_pages() can't be used.
> > + */
> > +static pgoff_t udmabuf_folio_nr_pages(struct udmabuf *ubuf, pgoff_t i)
> > +{
> > +       struct folio *f =3D ubuf->folios[i];
> > +       pgoff_t j;
> > +
> > +       for (j =3D 1; i + j < ubuf->pagecount; j++) {
> > +               if (ubuf->folios[i + j] !=3D f)
> > +                       break;
> > +               /* Same folio, but not a sequential offset within it. */
> > +               if (ubuf->offsets[i + j] !=3D ubuf->offsets[i] + j * PA=
GE_SIZE)
> > +                       break;
> > +       }
> > +       return j;
> > +}
> > +
> > +/* Count the contiguous folio runs in @ubuf, one sg entry per run. */
> > +static unsigned int udmabuf_sg_nents(struct udmabuf *ubuf)
> > +{
> > +       unsigned int nents =3D 0;
> > +       pgoff_t i;
> > +
> > +       for (i =3D 0; i < ubuf->pagecount; i +=3D udmabuf_folio_nr_page=
s(ubuf, i))
> > +               nents++;
> > +       return nents;
> > +}
> > +
> >  static struct sg_table *get_sg_table(struct device *dev, struct dma_bu=
f *buf,
> >                                      enum dma_data_direction direction)
> >  {
> >         struct udmabuf *ubuf =3D buf->priv;
> > -       struct sg_table *sg;
> >         struct scatterlist *sgl;
> > -       unsigned int i =3D 0;
> > +       struct sg_table *sg;
> > +       pgoff_t i, run;
> > +       unsigned int nents;
> >         int ret;
> >=20
> > +       nents =3D udmabuf_sg_nents(ubuf);
> > +
> >         sg =3D kzalloc_obj(*sg);
> >         if (!sg)
> >                 return ERR_PTR(-ENOMEM);
> >=20
> > -       ret =3D sg_alloc_table(sg, ubuf->pagecount, GFP_KERNEL);
> > +       ret =3D sg_alloc_table(sg, nents, GFP_KERNEL);
> >         if (ret < 0)
> >                 goto err_alloc;
> >=20
> > -       for_each_sg(sg->sgl, sgl, ubuf->pagecount, i)
> > -               sg_set_folio(sgl, ubuf->folios[i], PAGE_SIZE,
> > +       sgl =3D sg->sgl;
> > +       for (i =3D 0; i < ubuf->pagecount; i +=3D run) {
> > +               run =3D udmabuf_folio_nr_pages(ubuf, i);
> > +               sg_set_folio(sgl, ubuf->folios[i], run << PAGE_SHIFT,
> >                              ubuf->offsets[i]);
> > +               sgl =3D sg_next(sgl);
> > +       }
> >=20
> >         ret =3D dma_map_sgtable(dev, sg, direction, 0);
> >         if (ret < 0)
> >=20
> > --
> > 2.53.0-Meta
> >=20
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
