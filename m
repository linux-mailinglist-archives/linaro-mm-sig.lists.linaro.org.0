Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B3904B425B0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 17:38:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A81645704
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 15:38:18 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 245FC44761
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Sep 2025 15:38:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=MSQNiwwo;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45b89147cfbso633485e9.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Sep 2025 08:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756913890; x=1757518690; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VPbwCRLjCS0JlRjDhk1ZHzDpInRFzDVXs0glfOj9Nmk=;
        b=MSQNiwwo8u1+rW3PzV5VetP2TwcPKLMm2XViUnzGoADeexe9N3+7LCxG6iC/f/zPxT
         PXihTTA+GFkHNCXCbgB/muobHIxw8STLh+jEmwmbggXey3NTAxJ7l//TkJK2bpPRTElM
         CMj3mAz46JOBsk7GAW7HftxVvYR28bx1uRkwSB9VPEFb31AWSBahSB2orzl78bDva0L+
         XjAPn2jy56sd8ocHDXOV4VDpnOLW4idMYzldulJsS2o9mxpVn/hzHwHqHjCITbmSPnwa
         LfrGnAnMWndAcWsYo24JlUTPYvmBeS7gs1zLg+nECe0StihdaXPbl/iPSIGaaBqBEB3X
         RWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756913890; x=1757518690;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VPbwCRLjCS0JlRjDhk1ZHzDpInRFzDVXs0glfOj9Nmk=;
        b=BwQzP5wQFQMUBvx8Lj/HDEpk6bU+YEvoH+epJMZbDZAqPh2cqTqEG+Sxe84XO71Fpa
         zNixXhk5CXftblghkK2BXnepOgWafeISpV5E5qW12OJAdB9OC355TIlXBib4GpqIpReT
         7Y3AKhzg/F+EK+wdX8ikocIIjIcgY4UoBMxwOQNZVyK0j0DNe3a6AzEdGUuORAR0eaoZ
         IPtk4CaunuavJPUc8zaRHR9P60lS2j9xHgPCBoEQrpRM06wqjW4VrrT84XyD07Lk3heG
         hyiDOhcGslD8+/GkyRwOvqv73NoJG8360RRzXKWONaEmEULNooRM96p5zVT2o95tELPo
         7fqA==
X-Forwarded-Encrypted: i=1; AJvYcCWg4MMugWRDLbZKenxoe5e7WHIO2pisQrdZYHndr/ju23EnuByPL9mYVHtDuYgkVxu6dJxGeTT48QjkSVbF@lists.linaro.org
X-Gm-Message-State: AOJu0YyN4AyzQTQ1z2XrkBcGUZv8HL2t8x6UBBmW8OPP1Jd8GVEEAwRb
	KNyt2/FOPYGbg12UxlKtFDwJtmQlqbDVx+qPrLISI+pk6hPf4xSSWnkN
X-Gm-Gg: ASbGncs3hItT2yEgI+KHjqSGjWAeYb0uKEou2tYztlNOlhMzGm2wglN0NvKn356EiaA
	xtlZlBIlS6JqyKOVfi3465OWDOsdc/NNS0ntO0u3hPSlYwdoVZKDEk4q4BFpvk/pGfNgkqh/F+5
	wcXnJdebMUXq8RepEXKTPsohKfRYS/ia9xD/FjWRMzJJakj0i1VnKGBGixY0VQ+DOhXyqz9DGsZ
	ZpswNwhtwZJbgsdm8lbXkKrL0qSbP7B3FDIJek29TT0oFCC4fvMD8W5C27uy0sCo5TXR7SJ5P1I
	8ZvaBfOvhezHOKJJ59ru18SHi8pTMJtYYoZOgBWdIJF8ERV2pGuLjUXsC5Em1eGxz38r5raNGZm
	G7SCiZ+oXo6clk776iMzCOywVxZzn6z1fZOjr4bOzq8cuBO7ekv9g+FIgTP2y5DW71/d0SdZ29b
	T+jcta3WTxypokdXyFHtQ=
X-Google-Smtp-Source: AGHT+IFJMszbSGSF1PbWonv1NoW4j1E7tepFW666Fw1sEE/F4ZJzmOwpg3R8c/5zqgWpxpRXy3A2Sg==
X-Received: by 2002:a05:600c:4ec9:b0:45b:7ffa:1bf8 with SMTP id 5b1f17b1804b1-45b934f6a56mr68840825e9.23.1756913889833;
        Wed, 03 Sep 2025 08:38:09 -0700 (PDT)
Received: from orome (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b9c234b24sm59432145e9.16.2025.09.03.08.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 08:38:08 -0700 (PDT)
Date: Wed, 3 Sep 2025 17:38:06 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: John Stultz <jstultz@google.com>
Message-ID: <e6twhwxi55eesb7xirei7wezzb77qjiji2mccgqlziisjzl3q5@3ny5e6lbgebz>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-5-thierry.reding@gmail.com>
 <CANDhNCoM4RFX-QccF7xT=+-tduGj9OZ_8SgrTVyRucMwyVc73Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANDhNCoM4RFX-QccF7xT=+-tduGj9OZ_8SgrTVyRucMwyVc73Q@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 245FC44761
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.96 / 15.00];
	BAYES_HAM(-2.86)[99.39%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.50:from]
Message-ID-Hash: TLMSVLBZZFH7FQFQNJ42KHO54IVJ3NCP
X-Message-ID-Hash: TLMSVLBZZFH7FQFQNJ42KHO54IVJ3NCP
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] dma-buf: heaps: Add debugfs support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TLMSVLBZZFH7FQFQNJ42KHO54IVJ3NCP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2702110189470636952=="


--===============2702110189470636952==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sulytsn4e2thgtl4"
Content-Disposition: inline


--sulytsn4e2thgtl4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 4/9] dma-buf: heaps: Add debugfs support
MIME-Version: 1.0

On Tue, Sep 02, 2025 at 03:37:45PM -0700, John Stultz wrote:
> On Tue, Sep 2, 2025 at 8:46=E2=80=AFAM Thierry Reding <thierry.reding@gma=
il.com> wrote:
> >
> > From: Thierry Reding <treding@nvidia.com>
> >
> > Add a callback to struct dma_heap_ops that heap providers can implement
> > to show information about the state of the heap in debugfs. A top-level
> > directory named "dma_heap" is created in debugfs and individual files
> > will be named after the heaps.
> >
>=20
> I know its debugfs, but this feels a little loosey-goosey as an uAPI.

Well, the whole point of debugfs is that it's not really an ABI. Nothing
should ever rely on the presence of these files.

> Is there any expected format for the show function?
>=20
> What would other dmabuf heaps ideally export via this interface?

I've thought about this a bit and I'm not sure it makes sense to
standardize on this. I think on one hand having a list of buffers
exported by the dma-buf heap is probably the lowest common denominator,
but then there might be a bunch of other things that are very heap-
specific that some heap might want to export.

> Is there some consistent dma_heap-ish concept for it to justify it
> being under a dma_heap directory, and not just an independent debugfs
> file for the driver implementing the dmabuf heap?

Well, I think just the fact that it's a dma-heap would qualify its
corresponding debugfs to be in a well-known location. We could of course
pick some arbitrary location, but that's just a recipe for chaos because
then everybody puts these whereever they want. There's really no
standard place for driver-specific debugfs files to go, so putting it
into some "subsystem"-specific directory seems like the better option.

Thierry

--sulytsn4e2thgtl4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmi4YNsACgkQ3SOs138+
s6FLbg//VYHy8TOrGMpDWro/ULEXXUAldaCb7nmtSEpNIXvKqfV5j9D/dcMLpLtY
LC53YPVnMm9g5c6mZ0w7DfUU5q+qAwCe2mvhA+Fm3UaRF2jMKhD/5LG4rk7ELWsL
Xb3raJAlnNFO9AHgE7oEwGYjF8q94yEiAZHNO62j1kxJ00CpZCxyG2rie7iaTAMh
VToay43MFoIv9ulrESaonZk84vL4HzYJZIZXeIgjs+mS0BmFH5fxvCPerNuiG4gf
Z4N4cCDGWfJ+EYFuMZ3p2pbLivKlTqI3QdihV8BO13OMaADW7vmSPMdDzYSgQ/R9
KdwIIctBlRpiGYOJCPb83kZFsFXwU4Cvnfc3HJDTjwLwlbIrAFTlPnyhL9eWEeZD
oD4Jdnf/tHXH9tFJUEZ+cPA8mCHjMrnL3mTItfYILkvaGuZGRRdacy5fyICO0fbv
xB0k9rSgPfwlafKgaHj3wQD02D1qmGZqATxAVYXu/RT682hMAYX8JJS5ar64fQ35
esRjjoSdlzaVisao/gog2ThKdoPsThxcMXcM4nHHMfkd+wURKomTszYl8lZGew3Y
dzUR7jKgI/rPUUUpBD7D+cPzNy5p2JzoQMPoBtKMPOOq6tQ1BXYJgXZtfW8DO1T6
QgUM6P7kdw0Dce+0PdZOD3TvkpPucxyqZlLA13ZLCYeW8xZKwsk=
=6VMq
-----END PGP SIGNATURE-----

--sulytsn4e2thgtl4--

--===============2702110189470636952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2702110189470636952==--
