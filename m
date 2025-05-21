Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFD9ABF946
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 17:29:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E986F44460
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 15:29:53 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B89683F6A9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 May 2025 15:29:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=AE7BvIJ1;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0F74C49CC5;
	Wed, 21 May 2025 15:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90925C4CEE4;
	Wed, 21 May 2025 15:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747841382;
	bh=qlXssQ+zC+nvTT6qYoRyNT3Tx8K4SII3RQNRlGCTdtU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AE7BvIJ1UqmiwFoAVamkAODvZqa+2XTKYBHLnCRt+g3vB8lTIfGdeslGD4aGcEtgw
	 4larKn1k0IQ/b1oUPWgsjM32z1PJe3f/EX5IqpfOEL8i2S/2aPIo7ujIhBUBPdeMOd
	 5WXXViniJ0x6vHnp1jL4PkQenpT25HFObsn+SxVIJ9+aYwnW9chLk2WVP3JR/z6DfC
	 fKAENgM/qNZVoITQtSTib0RE5+C7NJO1vzuSUSJEYX+jKQQwFbSnTNlVJkW5dQhh7x
	 XgFlx8z6dvJblnlAULCTUtFR9FYT/zgr1zO7FRLgE1mFED/KnWY37uUTETrXvMBa48
	 tWLar7Q3RR4Ag==
Date: Wed, 21 May 2025 17:29:40 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jared Kangas <jkangas@redhat.com>
Message-ID: <20250521-curious-dolphin-of-perspective-4cc8c2@houat>
References: <20250422191939.555963-1-jkangas@redhat.com>
 <20250422191939.555963-3-jkangas@redhat.com>
 <20250424-sassy-cunning-pillbug-ffde51@houat>
 <aApirJb9P-LOOB8j@jkangas-thinkpadp1gen3.rmtuswa.csb>
MIME-Version: 1.0
In-Reply-To: <aApirJb9P-LOOB8j@jkangas-thinkpadp1gen3.rmtuswa.csb>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:20940, ipnet:172.232.0.0/13, country:NL];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from,100.75.92.58:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: B89683F6A9
X-Spamd-Bar: -----
Message-ID-Hash: USJ7QEVEN4XQCSFYO3UU5ETY6DIOTLMW
X-Message-ID-Hash: USJ7QEVEN4XQCSFYO3UU5ETY6DIOTLMW
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/USJ7QEVEN4XQCSFYO3UU5ETY6DIOTLMW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1298191163010073293=="


--===============1298191163010073293==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="rl37qy3jxoobtiw7"
Content-Disposition: inline


--rl37qy3jxoobtiw7
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
MIME-Version: 1.0

Hi Jared,

On Thu, Apr 24, 2025 at 09:11:24AM -0700, Jared Kangas wrote:
> > >  struct cma_heap {
> > >  	struct dma_heap *heap;
> > > @@ -394,15 +395,26 @@ static int __init __add_cma_heap(struct cma *cm=
a, const char *name)
> > >  static int __init add_default_cma_heap(void)
> > >  {
> > >  	struct cma *default_cma =3D dev_get_cma_area(NULL);
> > > +	const char *legacy_cma_name;
> > >  	int ret;
> > > =20
> > >  	if (!default_cma)
> > >  		return 0;
> > > =20
> > > -	ret =3D __add_cma_heap(default_cma, cma_get_name(default_cma));
> > > +	ret =3D __add_cma_heap(default_cma, DEFAULT_CMA_NAME);
> > >  	if (ret)
> > >  		return ret;
> > > =20
> > > +	legacy_cma_name =3D cma_get_name(default_cma);
> > > +
> > > +	if (IS_ENABLED(CONFIG_DMABUF_HEAPS_CMA_LEGACY) &&
> > > +	    strcmp(legacy_cma_name, DEFAULT_CMA_NAME)) {
> > > +		ret =3D __add_cma_heap(default_cma, legacy_cma_name);
> > > +		if (ret)
> > > +			pr_warn("cma_heap: failed to add legacy heap: %pe\n",
> > > +				ERR_PTR(-ret));
> > > +	}
> > > +
> >=20
> > It would also simplify this part, since you would always create the leg=
acy heap.
>=20
> By "always", do you mean removing the strcmp? I added this to guard
> against cases where the devicetree node's name clashed with the default
> name, given that the DT name isn't necessarily restricted to one of the
> current names in use ("linux,cma" or "default-pool"). It seems like the
> strcmp would be relevant regardless of the naming choice, but if this is
> overly cautious, I can remove it in v3.

That's not overly cautious, that's something I overlooked :)

You're totally right that we should check for that. We should probably
add a more specific error message in that case though

Maxime

--rl37qy3jxoobtiw7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaC3xWAAKCRAnX84Zoj2+
duoJAX9hAWq/z0ihm1zZTbF17+eFM+dkCOxQNGkpF7/zsL9i44NQmwLDKPkIqTNv
euwhPhABf1kJHpTOiIbhwIC7VQYsdPmlucG8eH8pJSrd3FSG5iyuhauInEQ62awL
1HmM16MzAg==
=0SOR
-----END PGP SIGNATURE-----

--rl37qy3jxoobtiw7--

--===============1298191163010073293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1298191163010073293==--
