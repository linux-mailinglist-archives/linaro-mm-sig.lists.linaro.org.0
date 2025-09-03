Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B20B4264F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 18:12:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08BD945588
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 16:12:32 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by lists.linaro.org (Postfix) with ESMTPS id 76F92446ED
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Sep 2025 16:12:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=OOvg9hLC;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.221.41 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3da9ad0c1f4so68459f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Sep 2025 09:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756915943; x=1757520743; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mSH3Zacp/f+cickpwsilQ+TYRotewL36J8+/+EeU+iA=;
        b=OOvg9hLC4nqNDObgsskpXIpbD+r3gMPkUQbYzAvS9rJ5ccw/AJYOJT3LD3n86jvOdv
         GiFUvZ7xIaX1XvKVlbwi7WDafiRKSzEgWbsUhDxwdVnh0mGLlGas+MjmZ9lQRGxSbueq
         Eg6Ka2C9B6nV2/QHiRZTikzugsUHSFNdMk/Qz6D/Q6GQKVPpwkViCNuqtBmI9C/l+Fba
         65meP6SsqHsQ7cAKAA50NmMt4+QI8h+ehA8AOICB5UzwNdQ8hPXsvmZbVcNIvIdWAvtk
         LfoD5PVZNjD5EVG7M3FHOUbyviHVgENQZepmBi3Vo6BJZr0ZvpiwOitChix0+8zojLDX
         /1jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756915943; x=1757520743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mSH3Zacp/f+cickpwsilQ+TYRotewL36J8+/+EeU+iA=;
        b=ZbsqS+PhJiLLTKCBuPzpPMhB+BzisOlGcjt1Q0iEF0l9kj7VDNYafNlkBy/hZD9ZMf
         mr9MEIeB+juRMQI+J1RaWZ3SCJ3LWZxEmqnSTOjlu4/1Cf6Z30mc4t6G5Zwze8QbJuHK
         4ZJVwaT9f0AyBL4Wjo5BfXIMJ6DQ5tf10Uki1/lrauScilRRKcrN6DShaEaoyF4JwtiT
         8FCTKb7L+ENFhG50wfxaofpkAcwkskWCUXHy5P2JT9ZmoWpWVQ0Qx/opLTf6S8e61ajE
         n6bzaSbCUIyq2V/2B3gz+JtArioXz+QJcK/GVzN22f3D/mHBOy6pfjq4PQ/NN1BQ5TkP
         L5rg==
X-Forwarded-Encrypted: i=1; AJvYcCVbSbzBf2yfJ7o9CZN6uVhxfBMYjdRsNxLy28shnlky+zVR1/VlRYnUAMC0oZWYThzGa0OAaeEoGm4jsx7f@lists.linaro.org
X-Gm-Message-State: AOJu0Yzguc50lVR8EPSMg1Tknp6wg75EgGlPoBuLYFRByiPLIA1lIaYv
	SQ6RwjlGosHc++yxUV5bLJnFsXxj2tw5nYqnUTC99/h22BdHEBXWV5yh
X-Gm-Gg: ASbGnct67qJYsgBmfYvMTReMQkVsUb2e0Vpgth0MVbwKjkxh+urmiZxLDkVBIH50bst
	kgkOfUCYBQuUirbkVb8MrUxXsUSn9y+3czvbJK0IupB1NM2WqPGKJZiERBroQZZ44rQsWI61rOL
	/j/i+lOAmTxxyrHmwsueB8lBrdJwvtoSA3JEVopchrsEtlaukbdkfveSBSIjrBU1/kKr2/ZYSin
	U6EIJfTdwcALTz1wKLQctXKgLPWWaLk+PwTHGy735LYDe2HGZbSK/h9YDrTOZJpGvwdI0nVSFvo
	5Df+NbbotDhds3X/aIO9GKeSFZnBD1JxXREe8Ybb3DlgPIRfPAagTNFWeCTxegfqicrYJowAmHQ
	swDv60FfJSnlsGlummD1FA9rnvdlHQLnUKBTV4XHc6T8rxST5d/PmMfWAsm2N2MDGmZtmlCYp67
	gEn8gg9K5lvxe4ugLrioc=
X-Google-Smtp-Source: AGHT+IHY1b3uufepgZb7f9ysqZmKK+/Hd8xA7Sv2qwFfaxBcYfbZY2Np9JxcRK+tnTw30ZuHhEZrcA==
X-Received: by 2002:a05:6000:2410:b0:3d8:e1de:7e4f with SMTP id ffacd0b85a97d-3d8e1edc849mr6275167f8f.21.1756915943185;
        Wed, 03 Sep 2025 09:12:23 -0700 (PDT)
Received: from orome (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34494776sm23960790f8f.61.2025.09.03.09.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 09:12:22 -0700 (PDT)
Date: Wed, 3 Sep 2025 18:12:19 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: David Hildenbrand <david@redhat.com>
Message-ID: <g34tb2ontlnazift3sik5dqs75a7k2bhzo74kknkxoegv4q5vb@jsqo7v6awovf>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-4-thierry.reding@gmail.com>
 <CAPTztWa7kcx8bBEJEKvnjcD4v1-eDLVxMd9C10XiBQi4CDLfHg@mail.gmail.com>
 <e513c127-d4f4-4e93-8d4b-23d1e4fdceb5@redhat.com>
MIME-Version: 1.0
In-Reply-To: <e513c127-d4f4-4e93-8d4b-23d1e4fdceb5@redhat.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 76F92446ED
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[google.com,gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,linux-foundation.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.41:from];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: NWEBIYCVI227ZVKSZKAJQDMFHOEQBKNN
X-Message-ID-Hash: NWEBIYCVI227ZVKSZKAJQDMFHOEQBKNN
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Frank van der Linden <fvdl@google.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NWEBIYCVI227ZVKSZKAJQDMFHOEQBKNN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6346803388332204189=="


--===============6346803388332204189==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nfbiwxgfuwekt25w"
Content-Disposition: inline


--nfbiwxgfuwekt25w
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
MIME-Version: 1.0

On Tue, Sep 02, 2025 at 09:04:24PM +0200, David Hildenbrand wrote:
>=20
> > > +>> +struct cma *__init cma_create(phys_addr_t base, phys_addr_t size,
> > > +                             unsigned int order_per_bit, const char =
*name)
> > > +{
> > > +       struct cma *cma;
> > > +       int ret;
> > > +
> > > +       ret =3D cma_check_memory(base, size);
> > > +       if (ret < 0)
> > > +               return ERR_PTR(ret);
> > > +
> > > +       cma =3D kzalloc(sizeof(*cma), GFP_KERNEL);
> > > +       if (!cma)
> > > +               return ERR_PTR(-ENOMEM);
> > > +
> > > +       cma_init_area(cma, name, size, order_per_bit);
> > > +       cma->ranges[0].base_pfn =3D PFN_DOWN(base);
> > > +       cma->ranges[0].early_pfn =3D PFN_DOWN(base);
> > > +       cma->ranges[0].count =3D cma->count;
> > > +       cma->nranges =3D 1;
> > > +
> > > +       cma_activate_area(cma);
> > > +
> > > +       return cma;
> > > +}
> > > +
> > > +void cma_free(struct cma *cma)
> > > +{
> > > +       kfree(cma);
> > > +}
> > > --
> > > 2.50.0
> >=20
> >=20
> > I agree that supporting dynamic CMA areas would be good. However, by
> > doing it like this, these CMA areas are invisible to the rest of the
> > system. E.g. cma_for_each_area() does not know about them. It seems a
> > bit inconsistent that there will now be some areas that are globally
> > known, and some that are not.
>=20
> Yeah, I'm not a fan of that.
>=20
> What is the big problem we are trying to solve here? Why do they have to =
be
> dynamic, why do they even have to support freeing?

Freeing isn't necessarily something that I've needed. It just seemed
like there wasn't really a good reason not to support it. The current
implementation here is not sufficient, though, because we'd need to
properly undo everything that cma_activate_area() does. I think the
cleanup: block in cma_activate_area() is probably sufficient.

The problem that I'm trying to solve is that currently, depending on the
use-case the kernel configuration needs to be changed and the kernel
rebuilt in order to support it. However there doesn't seem to be a good
technical reason for that limitation. The only reason it is this way
seems to be that, well, it's always been this way.

Thierry

--nfbiwxgfuwekt25w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmi4aOMACgkQ3SOs138+
s6EWag//TG8GKL8D+KtYbrfxxwO/AEt7PxS9tKNaQ4uX/W4JVPtJSVqumPpLlATz
kSWcKAk8uyNWVRifoC26e2FU+eTup+VsLHQK/3g6/EEv0rt/jn5mJWu91ckJuH+N
nWHOeXCqeuGYN01d2wYby1PZ6Mtvbe6PlBifyLpvoAsUpN1n4HvE1CWu45gZIR5d
2WqzOWqLtDf4dyhpPKzu3xwXMgms8SyLEY64ulTMjg02QvIFPhJ/EN3VMs20tuX7
1UBiq4yw7ylaSoKAUdFEB9sOq4tpnoi9YY9fgoMhnCvwP5wZFwKbqYIhfGqzEGWo
Yad3Oba0P1qxdCFeOabbitgjRtZQO8pJNfGuJImpP4fE8Bz547KcSbcORfZvu16h
lJENGR4OXALHeSbgAELkUWTBnxAEHs356KGRoIxOarNda5xvFHp9joOODPz5s/j8
kIeQjrt23Vl4uqqlzr2n8ZwIQY6Whc2OuPnY/1/sKenSXKrqnfTudaRnsPMFQXPQ
ae+Iq9kecL40EJmZx03IkKwsxZ1dqfr4h0K9cQRa+mj5Xg+1TXfTXfcsaDLiqZeg
a1sQbf3ZbKYz88yJmRp2UrbJMGkqjnuwvvD2MkLtxqTS2pIl/sUGx/ltZDu592uU
dfOddTVrqV/MBj0YtLFpU4cFY/4pdIkqP01sN61Bbn+jvYFcceA=
=8yPm
-----END PGP SIGNATURE-----

--nfbiwxgfuwekt25w--

--===============6346803388332204189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6346803388332204189==--
