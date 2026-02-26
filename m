Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EP4YOL0ioGkDfwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 11:38:53 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EC91A4676
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 11:38:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59DA53F80A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 10:38:52 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 86C053F80A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 10:38:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=IoUxF9Ix;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 29F0560054;
	Thu, 26 Feb 2026 10:38:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BD58C116C6;
	Thu, 26 Feb 2026 10:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772102328;
	bh=3cOwLR1yuzDPYHdlDaDVoK2pdPAwkELvu6I0P5vN37I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IoUxF9IxL7VVwAVoDntFnPAkfIWSHLhW91I1Vc9LOXHqb0Uv5XdMWsOeuNxkKOlnd
	 p3Sff2GOZ5ehabP7i/+BXiG0zYbPB6Arb/3mKU1+a/mWv5bIGqvClieRUtEppXthcQ
	 0H1WxNy4vKo21HkfKSYGPedzAB3nFwQ5J9qq0GHfEVX3acOJCbuDcs22o9CnL8xt/E
	 Fu3qNKVpZNdN/+9W8xTGnDVmZijhJcBEN+zPVPD/jByqSvdOseSF8hY0L0kC0Jh1cX
	 Kwd//qtejF+Wfw2gU6Db0AKwqmLV95mktrlNEV5tSKpS/hpQXsXe73uO29EgtHgVcs
	 RRhzUDaq86Bvw==
Date: Thu, 26 Feb 2026 11:38:45 +0100
From: Maxime Ripard <mripard@kernel.org>
To: "David Hildenbrand (Arm)" <david@kernel.org>
Message-ID: <20260226-impetuous-analytic-jellyfish-d4a86d@penduick>
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org>
 <20260225-dma-buf-heaps-as-modules-v1-2-2109225a090d@kernel.org>
 <60ecebf2-a708-4797-bedd-588c3e9931ff@kernel.org>
MIME-Version: 1.0
In-Reply-To: <60ecebf2-a708-4797-bedd-588c3e9931ff@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: WJRKRR2FIWEITZGZRBETVO6BNFOOSVWE
X-Message-ID-Hash: WJRKRR2FIWEITZGZRBETVO6BNFOOSVWE
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/7] mm: cma: Export cma_alloc and cma_release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WJRKRR2FIWEITZGZRBETVO6BNFOOSVWE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2524561364956708285=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[kernel.org:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 69EC91A4676
X-Rspamd-Action: no action


--===============2524561364956708285==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="4m3wi7hiurafpqag"
Content-Disposition: inline


--4m3wi7hiurafpqag
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/7] mm: cma: Export cma_alloc and cma_release
MIME-Version: 1.0

Hi David,

On Thu, Feb 26, 2026 at 11:25:24AM +0100, David Hildenbrand (Arm) wrote:
> On 2/25/26 17:41, Maxime Ripard wrote:
> > The CMA dma-buf heap uses cma_alloc() and cma_release() to allocate and
> > free, respectively, its CMA buffers.
> >=20
> > However, these functions are not exported. Since we want to turn the CMA
> > heap into a module, let's export them both.
> >=20
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >  mm/cma.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/mm/cma.c b/mm/cma.c
> > index 94b5da468a7d719e5144d33b06bcc7619c0fbcc9..be142b473f3bd41b9c7d8ba=
4397f018f6993d962 100644
> > --- a/mm/cma.c
> > +++ b/mm/cma.c
> > @@ -949,10 +949,11 @@ struct page *cma_alloc(struct cma *cma, unsigned =
long count,
> >  	if (page)
> >  		set_pages_refcounted(page, count);
> > =20
> >  	return page;
> >  }
> > +EXPORT_SYMBOL_GPL(cma_alloc);
> > =20
> >  static struct cma_memrange *find_cma_memrange(struct cma *cma,
> >  		const struct page *pages, unsigned long count)
> >  {
> >  	struct cma_memrange *cmr =3D NULL;
> > @@ -1025,10 +1026,11 @@ bool cma_release(struct cma *cma, const struct =
page *pages,
> > =20
> >  	__cma_release_frozen(cma, cmr, pages, count);
> > =20
> >  	return true;
> >  }
> > +EXPORT_SYMBOL_GPL(cma_release);
> > =20
> >  bool cma_release_frozen(struct cma *cma, const struct page *pages,
> >  		unsigned long count)
> >  {
> >  	struct cma_memrange *cmr;
> >=20
>=20
> I'm wondering whether we want to restrict all these exports to the
> dma-buf module only using EXPORT_SYMBOL_FOR_MODULES().

TIL about EXPORT_SYMBOL_FOR_MODULES, thanks.

> Especially dma_contiguous_default_area() (patch #4), I am not sure
> whether we want arbitrary modules to mess with that.

Yeah, I wasn't too fond about that one either. Alternatively, I guess we
could turn dev_get_cma_area into a non-inlined function and export that
instead?

Or we could do both.

Maxime

--4m3wi7hiurafpqag
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaaAitQAKCRAnX84Zoj2+
dn2RAX40ENhBNNnA9IVK7i0+qn5IsVH8v3M4faEFfo9IBr96Q8kfaeEhQLPJokV5
OD/rbD0BfA29oWhRpf5wZDuyQy8g1598nXD4qkmluGfS3ZE2BbGta/gjBRP5O3kl
YIcJ/SmxPQ==
=LmIK
-----END PGP SIGNATURE-----

--4m3wi7hiurafpqag--

--===============2524561364956708285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2524561364956708285==--
