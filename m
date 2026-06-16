Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R/WCNOi4MWrupQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 22:58:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BBF695548
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 22:58:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=sndk+1os;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F026640A8A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2026 20:58:14 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	by lists.linaro.org (Postfix) with ESMTPS id 9A3CF409CC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 20:58:04 +0000 (UTC)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-440e2b605ddso1131579fac.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2026 13:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781643484; x=1782248284; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rG4yjs4p+4H4P31U7PQCtrU7WZ2EeT+JyZMQJymeW5U=;
        b=sndk+1osiW/Mu2+9Cz4SYZByEQNDLn/kWsu3M55IDlcbRa625Dt6Wzd9Ut9vGAmaD+
         fKqsDPsNXPVGaQ8/RJvs7I30Ha5rzjpCHOwGmDSkYDq11Etw+e1mwq23lUw1e8SWfNB6
         1vMnELr0oeTtchJk9d81Evnloh64hZqYp6Vd/I9/gUWqwleBwrzryGfFWTFqRhUl1Phh
         K1X3hFmdTqH29dRKSYRY1ZKKTRy2O/SCSYzjPZeFzayLKX3dDcGhL7CI+avlc4DiJ4Jo
         gH5WCpBGXJCnSA0qphqBvQB+W6b1xgzQ4kxEww/QIoLOnsqChHN4Nc9ldHAWR1rqMd4f
         RfOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781643484; x=1782248284;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rG4yjs4p+4H4P31U7PQCtrU7WZ2EeT+JyZMQJymeW5U=;
        b=fqFyQF9lZA2xs1DlE0iW8jBJic1pHzvQK3JPrV1St8TfjPhO5GNR9xLH7q0xxjNouq
         rAwv3d+q3GUq6ypaZmgeKq1K4hELOKdsPkavoiDbZDutDm5M5Hj/r/WnYKkeZVO95fHa
         iHM/wLCIElGUZi+9IkIm9gIaVERdSorOuHGs+j1hCzRpHyD3QE/3xveu32Q4BbTICO71
         xvLJ3V7Rw25lXUaj6/jMBwge2wvK6uZviPs7j6BdNrRoFX0BBT+NmXwsVQq3qObMouNs
         QJLyuVh9Fk7ILTIBvjjCQ+qB2g6IXCT4nbjJ8ru5gwdByQYrSx9Ng9JXBooBZglNT8a8
         mUvA==
X-Forwarded-Encrypted: i=1; AFNElJ+JBgzU4ogsb5BHmWO1AX4fGAp+o9Uy4OjBpR+nxOxV8FBiD3zlRuAKY0TtfOFR3LAf40JDiHkF0MBkH9WG@lists.linaro.org
X-Gm-Message-State: AOJu0Yz9QBGllT+Wb6ukQMSNcWwkK48MSQNIpzvQIRh4HljkWDLcfjY8
	K9bkl98O6vfD3j+L+Gtu6BGZaSqYcCl6MSKAgByDrV2n+gbPsQX1Kopt
X-Gm-Gg: Acq92OGS/Apn/9DvfTMJKso8vmE4zfHM9EMqLknL6tqABL5zrSrlEL50Mqj4PzRO4dS
	dwU7toPeOJ2PiAizLeFWlP9Tw63C5lijVd+g87ry7k+cRW4DNo8wkAC/ePl88XmKI9asUcpOk/a
	sozgQ034nGIP+KohiwiyI3PPSKZ8n3oJbuT7viJDpKF1rdjwXfgwfW/ehws+kBrp+GZ/gVX1k/9
	RjkqcOwHYJ8yVT9YjNvYrEJCrdjhuScWR5y2xY5YxHtk4REjttC/41r4JJ0wfkz4VRxfEDI/1gT
	Mk4h8UtybD8fGI3jkzfro9I9jpnVnoscPDzwUNFxo8jQmrvXfWQMmuPdCCkIbuFF6CPnx0qoCVa
	RM9LnEe1TT97yo1pJLO1urwlElfVPqyQvLCgIAKt6JWljvbK2wf031/Dch2/DYRut2eTsOuSh3p
	WFM+27O6a2wCCMnrwsCaxGuz0kiHxZgrNBmrVvIliqhmA=
X-Received: by 2002:a05:6808:2f0f:b0:479:f7e7:4a81 with SMTP id 5614622812f47-489425d7d4cmr1016628b6e.0.1781643483758;
        Tue, 16 Jun 2026 13:58:03 -0700 (PDT)
Received: from devvm29614.prn0.facebook.com ([2a03:2880:ff:8::])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4875df7fc36sm5099675b6e.9.2026.06.16.13.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 13:58:03 -0700 (PDT)
Date: Tue, 16 Jun 2026 13:57:49 -0700
From: Bobby Eshleman <bobbyeshleman@gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Message-ID: <ajG4zaK9zu7qZT1+@devvm29614.prn0.facebook.com>
References: <20260611-tcpdm-large-niovs-v2-0-ee2bf15e7523@meta.com>
 <20260611-tcpdm-large-niovs-v2-2-ee2bf15e7523@meta.com>
 <IA0PR11MB71852246277F773AC41DAAA3F8E52@IA0PR11MB7185.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <IA0PR11MB71852246277F773AC41DAAA3F8E52@IA0PR11MB7185.namprd11.prod.outlook.com>
X-Spamd-Bar: ----
Message-ID-Hash: XW7A433JHBML44UBV4AW23DG7OAHZRS3
X-Message-ID-Hash: XW7A433JHBML44UBV4AW23DG7OAHZRS3
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>, "razor@blackwall.org" <razor@blackwall.org>, "daniel@iogearbox.net" <daniel@iogearbox.net>, "almasrymina@google.com" <alm
 asrymina@google.com>, "matttbe@kernel.org" <matttbe@kernel.org>, "skhawaja@google.com" <skhawaja@google.com>, "dw@davidwei.uk" <dw@davidwei.uk>, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v2 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XW7A433JHBML44UBV4AW23DG7OAHZRS3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:vivek.kasireddy@intel.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:jgg@ziepe.ca,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:alm asrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,linaro.org,amd.com,ziepe.ca,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,meta.com:email,gitlab.freedesktop.org:url,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53BBF695548

On Tue, Jun 16, 2026 at 06:04:03AM +0000, Kasireddy, Vivek wrote:
> Adding Jason to this discussion.
> 
> Hi Bobby,
> 
> > Subject: [PATCH net-next v2 2/4] udmabuf: emit one sg entry per pinned
> > folio
> > 
> > From: Bobby Eshleman <bobbyeshleman@meta.com>
> > 
> > get_sg_table() emitted one PAGE_SIZE sg entry per page even when the
> > underlying folio was larger.
> > 
> > Instead, walk folios[] and emit one sg entry per folio. When folios
> We have recently merged a patch (that will make it into 7.2) from Jason that
> replaced sg_set_folio() with sg_alloc_table_from_pages() in udmabuf driver:
> https://gitlab.freedesktop.org/drm/tip/-/commit/5bf888673e0dda5a53220fa0c4956271a46c353c
> 
> Since you are relying on sg_set_folio(), the core argument against its usage
> in udmabuf is that it doesn't work well with offsets > PAGE_SIZE, resulting
> in a malformed scatterlist. Not sure if this can be fixed easily.
> 
> > represent large pages (as is for MFD_HUGETLB), each sg entry is a large
> > page. Normal PAGE_SIZE sg tables are unchanged.
> > 
> > This is helpful for importers like net/core/devmem that expect dmabuf sg
> IMO, udmabuf needs to detect whether importers can handle segments that
> are > PAGE_SIZE and set the entries appropriately. Please look into how the
> GPU drivers and other dmabuf exporters/importers handle this situation, so
> that we can adopt best practices to address this issue.
> 
> Thanks,
> Vivek

Hey Vivek,

It sounds looks like that patch might solve my problem. I'll apply and
troubleshoot from there.

Thanks!

Best,
Bobby

> 
> > entries to be size and length aligned. Prior to this patch udmabuf
> > handed over one PAGE_SIZE sg entry per page, so devmem only saw
> > PAGE_SIZE chunks regardless of the underlying folio size.
> > 
> > dma_map_sgtable() does not always merge contiguous pages for us, so we
> > do this internally before exporting.
> > 
> > Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>
> > ---
> >  drivers/dma-buf/udmabuf.c | 52
> > ++++++++++++++++++++++++++++++++++++++++++-----
> >  1 file changed, 47 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> > index 94b8ecb892bb..9b751dd98b12 100644
> > --- a/drivers/dma-buf/udmabuf.c
> > +++ b/drivers/dma-buf/udmabuf.c
> > @@ -141,26 +141,68 @@ static void vunmap_udmabuf(struct dma_buf
> > *buf, struct iosys_map *map)
> >  	vm_unmap_ram(map->vaddr, ubuf->pagecount);
> >  }
> > 
> > +/* Return the number of contiguous pages backed by the folio at @i.
> > + * A udmabuf may map only part of a folio, or reference the same folio
> > + * in multiple non-contiguous runs, so folio_nr_pages() can't be used.
> > + */
> > +static pgoff_t udmabuf_folio_nr_pages(struct udmabuf *ubuf, pgoff_t i)
> > +{
> > +	struct folio *f = ubuf->folios[i];
> > +	pgoff_t j;
> > +
> > +	for (j = 1; i + j < ubuf->pagecount; j++) {
> > +		if (ubuf->folios[i + j] != f)
> > +			break;
> > +		/* Same folio, but not a sequential offset within it. */
> > +		if (ubuf->offsets[i + j] != ubuf->offsets[i] + j * PAGE_SIZE)
> > +			break;
> > +	}
> > +	return j;
> > +}
> > +
> > +/* Count the contiguous folio runs in @ubuf, one sg entry per run.
> > + *
> > + * Coalescing folios into a single sg entry up front lets importers actually
> > + * see large chunks. We can't rely on dma_map_sgtable() to do this for us
> > as
> > + * the dma_map_direct() path preserves the input scatterlist lengths
> > verbatim.
> > + */
> > +static unsigned int udmabuf_sg_nents(struct udmabuf *ubuf)
> > +{
> > +	unsigned int nents = 0;
> > +	pgoff_t i;
> > +
> > +	for (i = 0; i < ubuf->pagecount; i += udmabuf_folio_nr_pages(ubuf,
> > i))
> > +		nents++;
> > +	return nents;
> > +}
> > +
> >  static struct sg_table *get_sg_table(struct device *dev, struct dma_buf
> > *buf,
> >  				     enum dma_data_direction direction)
> >  {
> >  	struct udmabuf *ubuf = buf->priv;
> > -	struct sg_table *sg;
> >  	struct scatterlist *sgl;
> > -	unsigned int i = 0;
> > +	struct sg_table *sg;
> > +	pgoff_t i, run;
> > +	unsigned int nents;
> >  	int ret;
> > 
> > +	nents = udmabuf_sg_nents(ubuf);
> > +
> >  	sg = kzalloc_obj(*sg);
> >  	if (!sg)
> >  		return ERR_PTR(-ENOMEM);
> > 
> > -	ret = sg_alloc_table(sg, ubuf->pagecount, GFP_KERNEL);
> > +	ret = sg_alloc_table(sg, nents, GFP_KERNEL);
> >  	if (ret < 0)
> >  		goto err_alloc;
> > 
> > -	for_each_sg(sg->sgl, sgl, ubuf->pagecount, i)
> > -		sg_set_folio(sgl, ubuf->folios[i], PAGE_SIZE,
> > +	sgl = sg->sgl;
> > +	for (i = 0; i < ubuf->pagecount; i += run) {
> > +		run = udmabuf_folio_nr_pages(ubuf, i);
> > +		sg_set_folio(sgl, ubuf->folios[i], run << PAGE_SHIFT,
> >  			     ubuf->offsets[i]);
> > +		sgl = sg_next(sgl);
> > +	}
> > 
> >  	ret = dma_map_sgtable(dev, sg, direction, 0);
> >  	if (ret < 0)
> > 
> > --
> > 2.53.0-Meta
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
