Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LlzFhxWpWmh9gUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Mar 2026 10:19:24 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C83F11D56DF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Mar 2026 10:19:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94BD93ED23
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Mar 2026 09:19:22 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id A83AC3ED23
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 09:19:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Jy20L4Id;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0D58443220;
	Mon,  2 Mar 2026 09:19:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F036C19423;
	Mon,  2 Mar 2026 09:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772443159;
	bh=TaaPRzIzsiJYCDrLVRH+cpv6R+qksPRRJnPucWJCJnY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jy20L4IdLKDTKoVZQQplQ52NEMl1acstjLIcsyA3F/3VBPZyXDttoIxL7TC7C3Y15
	 LweIa9LyHH5q6gmi5/iRz2CC7fN1udYPQ2OiopniwlmgyNilUn1QCMSmXAA3ccbXP6
	 lYbf1HjVAKSY5skXVBd2hIYCLZakSEZ8Z98i08TyYdKTDLrSYLOcWwPFUCSueJrh9M
	 w1vKDzKQfBn3fQZV4WHHsA29DaNZGgH1yHACqbLunffygCzcVFlm0fuGorhxSYtezw
	 DFlln5IO18wQ694ztJi0IbbdJJZMlZd/lsPfOmWBaBtOW+S+FBLm/vkSRIITObml5Z
	 dMQNK4sJwV4AA==
Date: Mon, 2 Mar 2026 10:19:17 +0100
From: Maxime Ripard <mripard@kernel.org>
To: "David Hildenbrand (Arm)" <david@kernel.org>
Message-ID: <20260302-unbiased-chinchilla-of-honor-0df03d@houat>
References: <20260227-dma-buf-heaps-as-modules-v2-0-454aee7e06cc@kernel.org>
 <20260227-dma-buf-heaps-as-modules-v2-6-454aee7e06cc@kernel.org>
 <ca2ada49-08cf-43e6-a857-85994374549d@kernel.org>
MIME-Version: 1.0
In-Reply-To: <ca2ada49-08cf-43e6-a857-85994374549d@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: N2RMMX2JJGUVGTKAHL3ZGWZZDP2C47CR
X-Message-ID-Hash: N2RMMX2JJGUVGTKAHL3ZGWZZDP2C47CR
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 6/9] mm: cma: Export cma_get_name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N2RMMX2JJGUVGTKAHL3ZGWZZDP2C47CR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1748470502887118133=="
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
	NEURAL_HAM(-0.00)[-0.970];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: C83F11D56DF
X-Rspamd-Action: no action


--===============1748470502887118133==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="b3uwsakrtltovl2y"
Content-Disposition: inline


--b3uwsakrtltovl2y
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 6/9] mm: cma: Export cma_get_name
MIME-Version: 1.0

Hi,

On Fri, Feb 27, 2026 at 09:43:12PM +0100, David Hildenbrand (Arm) wrote:
> On 2/27/26 14:15, Maxime Ripard wrote:
> > The CMA dma-buf heap uses the cma_get_name() function to get the name of
> > the heap instance it's going to create.
> >=20
> > However, this function is not exported. Since we want to turn the CMA
> > heap into a module, let's export it.
> >=20
> > Reviewed-by: T.J. Mercier <tjmercier@google.com>
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >  mm/cma.c | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/mm/cma.c b/mm/cma.c
> > index be142b473f3bd41b9c7d8ba4397f018f6993d962..550effb9c4e01cc488b5744=
fe61d55a5b70a6d6c 100644
> > --- a/mm/cma.c
> > +++ b/mm/cma.c
> > @@ -50,10 +50,11 @@ unsigned long cma_get_size(const struct cma *cma)
> > =20
> >  const char *cma_get_name(const struct cma *cma)
> >  {
> >  	return cma->name;
> >  }
> > +EXPORT_SYMBOL_GPL(cma_get_name);
>=20
> No real reason to not squash this patch into #5, right?

I was assuming it was not really the same "category" of the API than
alloc/free, so the reviews might not be the same (like they weren't for
dma_contiguous_default_area). But I guess it also makes sense to squash
both.

I'll update the series

Thanks!

--b3uwsakrtltovl2y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaaVWFAAKCRAnX84Zoj2+
dlFeAYDD9X9Vv/iM+aCL1lvTjD+K8ui/7OeGWlPDYDEF5o8UD5uVMHs3IY6BHmA1
KoFaDiABgJ1s+qzY07V4RNSom5YMw3yvdtgLOkUoHeCUwOCbz2vqhwSWpT/dAmyd
6eWOH1SckQ==
=KM0Q
-----END PGP SIGNATURE-----

--b3uwsakrtltovl2y--

--===============1748470502887118133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1748470502887118133==--
