Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6877CF7AC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:56:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC07940D5F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:56:57 +0000 (UTC)
Received: from vulcan.natalenko.name (vulcan.natalenko.name [104.207.131.136])
	by lists.linaro.org (Postfix) with ESMTPS id 3938B40CA0
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Oct 2023 13:34:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=natalenko.name header.s=dkim-20170712 header.b=havpDLvC;
	spf=pass (lists.linaro.org: domain of oleksandr@natalenko.name designates 104.207.131.136 as permitted sender) smtp.mailfrom=oleksandr@natalenko.name;
	dmarc=pass (policy=reject) header.from=natalenko.name
Received: from spock.localnet (unknown [94.142.239.106])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vulcan.natalenko.name (Postfix) with ESMTPSA id A4062152ED08;
	Thu,  5 Oct 2023 15:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
	s=dkim-20170712; t=1696512891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=G7OmVnDV4XM8M5IsSqI8Ix0o10uDr9wvy0myjlHH3sQ=;
	b=havpDLvC8JWRtLhfFGMQj/UvPRh0H2e6jJMdt1Zz4hkVWvrV2SqusX3rt4TpbPHVlY9OAh
	8ANmKHrpFZ4FGDEDT1mIdcmdLwWnsS66V2HQv44D0pdkjD+Iqc+i7OmshCMHTNSVrwekOE
	shIQriGGfhLeu/kTmHZVG6NVUU7SE4A=
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Matthew Wilcox <willy@infradead.org>
Date: Thu, 05 Oct 2023 15:34:41 +0200
Message-ID: <9175204.CDJkKcVGEf@natalenko.name>
In-Reply-To: <ZR60lylMtLO6ZGp7@casper.infradead.org>
References: 
 <13360591.uLZWGnKmhe@natalenko.name> <22037450.EfDdHjke4D@natalenko.name>
 <ZR60lylMtLO6ZGp7@casper.infradead.org>
MIME-Version: 1.0
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[natalenko.name,reject];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[natalenko.name:s=dkim-20170712];
	ONCE_RECEIVED(0.10)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:20473, ipnet:104.207.130.0/23, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[suse.de,lists.linux.dev,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,kvack.org,kernel.org,gmail.com,linux-foundation.org,linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[natalenko.name:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3938B40CA0
X-MailFrom: oleksandr@natalenko.name
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 64ARAZOBYLU6L5O7WGIPCUF6ZKGSPLN3
X-Message-ID-Hash: 64ARAZOBYLU6L5O7WGIPCUF6ZKGSPLN3
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:50:32 +0000
CC: Thomas Zimmermann <tzimmermann@suse.de>, Linux Regressions <regressions@lists.linux.dev>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [REGRESSION] BUG: KFENCE: memory corruption in drm_gem_put_pages+0x186/0x250
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/64ARAZOBYLU6L5O7WGIPCUF6ZKGSPLN3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7918933713066778795=="

--===============7918933713066778795==
Content-Type: multipart/signed; boundary="nextPart3187816.5fSG56mABF";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3187816.5fSG56mABF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Matthew Wilcox <willy@infradead.org>
Date: Thu, 05 Oct 2023 15:34:41 +0200
Message-ID: <9175204.CDJkKcVGEf@natalenko.name>
In-Reply-To: <ZR60lylMtLO6ZGp7@casper.infradead.org>
MIME-Version: 1.0

On =C4=8Dtvrtek 5. =C5=99=C3=ADjna 2023 15:05:27 CEST Matthew Wilcox wrote:
> On Thu, Oct 05, 2023 at 02:30:55PM +0200, Oleksandr Natalenko wrote:
> > No-no, sorry for possible confusion. Let me explain again:
> >=20
> > 1. we had an issue with i915, which was introduced by 0b62af28f249, and=
 later was fixed by 863a8eb3f270
> > 2. now I've discovered another issue, which looks very similar to 1., b=
ut in a VM with Cirrus VGA, and it happens even while having 863a8eb3f270 a=
pplied
> > 3. I've tried reverting 3291e09a4638, after which I cannot reproduce th=
e issue with Cirrus VGA, but clearly there was no fix for it discussed
> >=20
> > IOW, 863a8eb3f270 is the fix for 0b62af28f249, but not for 3291e09a4638=
=2E It looks like 3291e09a4638 requires a separate fix.
>=20
> Thank you!  Sorry about the misunderstanding.  Try this:
>=20
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 6129b89bb366..44a948b80ee1 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -540,7 +540,7 @@ struct page **drm_gem_get_pages(struct drm_gem_object=
 *obj)
>  	struct page **pages;
>  	struct folio *folio;
>  	struct folio_batch fbatch;
> -	int i, j, npages;
> +	long i, j, npages;
> =20
>  	if (WARN_ON(!obj->filp))
>  		return ERR_PTR(-EINVAL);
> @@ -564,11 +564,13 @@ struct page **drm_gem_get_pages(struct drm_gem_obje=
ct *obj)
> =20
>  	i =3D 0;
>  	while (i < npages) {
> +		long nr;
>  		folio =3D shmem_read_folio_gfp(mapping, i,
>  				mapping_gfp_mask(mapping));
>  		if (IS_ERR(folio))
>  			goto fail;
> -		for (j =3D 0; j < folio_nr_pages(folio); j++, i++)
> +		nr =3D min(npages - i, folio_nr_pages(folio));
> +		for (j =3D 0; j < nr; j++, i++)
>  			pages[i] =3D folio_file_page(folio, i);
> =20
>  		/* Make sure shmem keeps __GFP_DMA32 allocated pages in the

No issues after five reboots with this patch applied on top of v6.5.5.

Reported-by: Oleksandr Natalenko <oleksandr@natalenko.name>
Tested-by: Oleksandr Natalenko <oleksandr@natalenko.name>
Link: https://lore.kernel.org/lkml/13360591.uLZWGnKmhe@natalenko.name/
=46ixes: 3291e09a4638 ("drm: convert drm_gem_put_pages() to use a folio_bat=
ch")
Cc: stable@vger.kernel.org # 6.5.x

Thank you!

=2D-=20
Oleksandr Natalenko (post-factum)
--nextPart3187816.5fSG56mABF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmUeu3EACgkQil/iNcg8
M0ukOxAAp/BVEyQy2PylnOYA9bNDAnOlxHaslswKSerCTxALAYhIo/Fs7a1/eOIf
OosjDaawXSueUi47gxloa/ZdEi5RUtYZTBB8L2FK7QX9CdKwwHIWLfkMzW0AuIiY
CVeP6MMsulrSD0Uu0IwaifAwP9G0AL9EE/a3dRbh29AJhqwmUmzHtxuqsJkg8/+e
K3O7HedfPZg7bBHdyoNcpjDGdXQE/sZiCW8mSYJgM9kvoXEOsaB52TxGoiooF6Ti
ETsLn2AQBabbt/XcTNMcLLf6hL56mmd7xA4LpGqkqftjTBVl9SjLKzrHu0fY4pMb
eff23+Z1uRoHeEiSMpy75/JDN2emeYR5dsvpcFK/DcT4A3VLl9YyJ6iB9LBtLthk
lMz1ftAOhBrULfLGMJQhub0PDxcRPuEgpwyu3IBqwuNAf9mlGH/SDMg/7Q7mX1Oe
nVyhqhq9YHHe5ZgTkV8lTCMOPLwQAAIk2aRDmZQAhnhNtPpCaP6/FG6d9++y1hY/
WglEFusswiz2sjm86xWHnvaX1TB7+eMf7yh8rhYjcVxR86QFDoGnVkdXFap6Hp7c
uPQ/EoUocvVxfIqYBQlWf2Lrg4BGszBG1LDxie6bLQKoQWilFN3Z1CO/vWOfvfx+
LJCyyZBPa6+M7ADFb1VLjQ/+sE9jimijlPcpm7degwY1X1+Ifck=
=7qWv
-----END PGP SIGNATURE-----

--nextPart3187816.5fSG56mABF--




--===============7918933713066778795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7918933713066778795==--



