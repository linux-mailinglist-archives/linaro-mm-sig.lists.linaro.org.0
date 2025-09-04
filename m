Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 649AFB43B09
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Sep 2025 14:07:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E40343C14
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Sep 2025 12:07:11 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by lists.linaro.org (Postfix) with ESMTPS id 79E4443C14
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Sep 2025 12:07:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=PKtxtWIE;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.128.49 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45dcff2f313so5065345e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Sep 2025 05:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756987622; x=1757592422; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PLld95qjRcnXUupD3eIzFa+wkQsC9TBTtZNr9c2tK1s=;
        b=PKtxtWIEmQj772WTnqrTybEu85M0A/yoJbLL7JWPTAMwhJys78XJSPegm0aFYdhcfJ
         C3FqFzbix+tfydO4MMW8qTdR/2ZPU+X+kXNhy5mfwBETopi+Cj0WlcR+imwJxxye2w0L
         HoztfQu3FNz5rDOhGJvEvInzxWGdWsJZtqlbwXUQnIp3Rue0felpLwz7U31aZaYZI8yy
         xAohEZ4zAtZa+7V0pl9zSf3+7lbSUl0gW6sx3V65o/q1mNuXtC2A55ngH57f8XacAMO6
         UMw1kJpgJZ5mRnNtC0rHufqhExbRTDm/sHWKTNOXaIyGqlZKws5BLzqJjocpwd5dAnBB
         i4RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756987622; x=1757592422;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PLld95qjRcnXUupD3eIzFa+wkQsC9TBTtZNr9c2tK1s=;
        b=PHtx//NFepbuokkoJT1iZyRdT5igXHEcPGoFq/z8VmQIe2H7jYpNVCf1PRXRMxkB5S
         d5MWpRRPnY9pYLnRrKq1TxyPNsVsCOs1URMQKvZdOm5VR/OCq0U118G8X6LzIK/qNcWm
         U0rOC2bpNraHXqLaRfaxu/yCgMSQao29StjQkMPU+GlhoyzzpDIVyzzrHE4fT61tYThK
         BJ2ukQFpZ7vkIIdd9myhUOESKuEe7LcvqHKmtjucHe+s7+JjlNz3w96O3EhRBFX9H9Uv
         HvXuTDBLariykiUjenRlWYT9gHSos7LkJeAuCV0/g6NeTN6e4ceG+hQTsL5s14Azfzj3
         X+KQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpngDsBR93fMwWdBorQrsIVfX3m6Wqav1XhZfN0OQx+2MGGyWdQrVsNaGUPaqb5nA+HSYPqt3L2HZfRuP7@lists.linaro.org
X-Gm-Message-State: AOJu0YxBvdsvR0nM1IHyvdjHkBWMqyX/m18BgVty8ZsXzBXzvlPOpQoo
	vPNcX+eoq2bYzlAJF69O4L7qutwn2RQML3DvrjKGetSS/gq9s1MPsxFU
X-Gm-Gg: ASbGncuMl18pgQxeIwUftw6ndLwHe2fxPLOJMt2EGxaVLFw1v2u9dPmDY+BMoSwXXG3
	KnEF8wytU2+/KTpHFbL1EO85Gw6/cKKfbobHGhldyxRbYns7Smj5grce1COktimkZvm6fGvVCn1
	rn68YiANWi6OtCPRqZbNYkqVxHvq+3FusoFDrH71nECYIpW2/2/2iJTLToy3IPwrgOkP4/O6bwQ
	9qLdaQoZEWFEqbX8glHX1zzyg9CioGyQGDEORlYnbsq4DwuOzM28Afg1ekXUDFomifO3ty3z9XB
	JfQnlrzdpA6gNHZJIy16hNSTPMyYExFtCNCJj+yUJxBoFZRabJJL4QPqxC8KOip5q3cjCikOn8W
	uMgXkU5mMQKhJzwttSPmxJSGB5qt5sqiY0PZTVHKCmrNkNMTsCfntRaPHwcOcmaj+ObqEk/ZMRn
	+VyoPvVsW+
X-Google-Smtp-Source: AGHT+IG59eYhocU/Hh7asCkInZg6kFlAG3r0FLBdaakyF5gvjtdvhWnDUh6z/r89PFN/6r5wlaCujQ==
X-Received: by 2002:adf:a406:0:b0:3e1:7964:2c17 with SMTP id ffacd0b85a97d-3e17964361cmr922214f8f.62.1756987622170;
        Thu, 04 Sep 2025 05:07:02 -0700 (PDT)
Received: from orome (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3df4fd372c1sm5436504f8f.29.2025.09.04.05.07.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 05:07:00 -0700 (PDT)
Date: Thu, 4 Sep 2025 14:06:58 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Frank van der Linden <fvdl@google.com>
Message-ID: <zmsn3bdqj2eclrm3xehnp27u57orqiq74ki2qn6aahpiamp4sn@wgalbnbpzmr4>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-4-thierry.reding@gmail.com>
 <CAPTztWa7kcx8bBEJEKvnjcD4v1-eDLVxMd9C10XiBQi4CDLfHg@mail.gmail.com>
 <v7zrmrhvemyymq6qamz6wbgzr4cijfe4n76ivwyadmltadlot7@3csy442wfasf>
 <CAPTztWZJqzbR7Y6jE6NM1qQOumYz-ckzSfGDfUcsgMVU7SBb0Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPTztWZJqzbR7Y6jE6NM1qQOumYz-ckzSfGDfUcsgMVU7SBb0Q@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 79E4443C14
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.49:from];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: QZMOK5C7ZKJCWKQ3EWDGHR5QRDJJJD6Z
X-Message-ID-Hash: QZMOK5C7ZKJCWKQ3EWDGHR5QRDJJJD6Z
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QZMOK5C7ZKJCWKQ3EWDGHR5QRDJJJD6Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1431334850870326865=="


--===============1431334850870326865==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dxmjpjrjb5ukagg6"
Content-Disposition: inline


--dxmjpjrjb5ukagg6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
MIME-Version: 1.0

On Wed, Sep 03, 2025 at 09:41:18AM -0700, Frank van der Linden wrote:
> On Wed, Sep 3, 2025 at 9:05=E2=80=AFAM Thierry Reding <thierry.reding@gma=
il.com> wrote:
> >
> > On Tue, Sep 02, 2025 at 10:27:01AM -0700, Frank van der Linden wrote:
> > > On Tue, Sep 2, 2025 at 8:46=E2=80=AFAM Thierry Reding <thierry.reding=
@gmail.com> wrote:
> > > >
> > > > From: Thierry Reding <treding@nvidia.com>
> > > >
> > > > There is no technical reason why there should be a limited number o=
f CMA
> > > > regions, so extract some code into helpers and use them to create e=
xtra
> > > > functions (cma_create() and cma_free()) that allow creating and fre=
eing,
> > > > respectively, CMA regions dynamically at runtime.
> > > >
> > > > Note that these dynamically created CMA areas are treated specially=
 and
> > > > do not contribute to the number of total CMA pages so that this cou=
nt
> > > > still only applies to the fixed number of CMA areas.
> > > >
> > > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > > > ---
> > > >  include/linux/cma.h | 16 ++++++++
> > > >  mm/cma.c            | 89 ++++++++++++++++++++++++++++++++++-------=
----
> > > >  2 files changed, 83 insertions(+), 22 deletions(-)
> > [...]
> > > I agree that supporting dynamic CMA areas would be good. However, by
> > > doing it like this, these CMA areas are invisible to the rest of the
> > > system. E.g. cma_for_each_area() does not know about them. It seems a
> > > bit inconsistent that there will now be some areas that are globally
> > > known, and some that are not.
> >
> > That was kind of the point of this experiment. When I started on this I
> > ran into the case where I was running out of predefined CMA areas and as
> > I went looking for ways on how to fix this, I realized that there's not
> > much reason to keep a global list of these areas. And even less reason
> > to limit the number of CMA areas to this predefined list. Very little
> > code outside of the core CMA code even uses this.
> >
> > There's one instance of cma_for_each_area() that I don't grok. There's
> > another early MMU fixup for CMA areas in 32-bit ARM that. Other than
> > that there's a few places where the total CMA page count is shown for
> > informational purposes and I don't know how useful that really is
> > because totalcma_pages doesn't really track how many pages are used for
> > CMA, but pages that could potentially be used for CMA.
> >
> > And that's about it.
> >
> > It seems like there are cases where we might really need to globally
> > know about some of these areas, specifically ones that are allocated
> > very early during boot and then used for very specific purposes.
> >
> > However, it seems to me like CMA is more universally useful than just
> > for these cases and I don't see the usefulness of tracking these more
> > generic uses.
> >
> > > I am being somewhat selfish here, as I have some WIP code that needs
> > > the global list :-) But I think the inconsistency is a more general
> > > point than just what I want (and the s390 code does use
> > > cma_for_each_area()). Maybe you could keep maintaining a global
> > > structure containing all areas?
> >
> > If it's really useful to be able to access all CMA areas, then we could
> > easily just add them all to a global linked list upon activation (we may
> > still want/need to keep the predefined list around for all those early
> > allocation cases). That way we'd get the best of both worlds.
> >
> > > What do you think are the chances of running out of the global count
> > > of areas?
> >
> > Well, I did run out of CMA areas during the early VPR testing because I
> > was initially testing with 16 areas and a different allocation scheme
> > that turned out to cause too many resizes in common cases.
> >
> > However, given that the default is 8 on normal systems (20 on NUMA) and
> > is configurable, it means that even with restricting this to 4 for VPR
> > doesn't always guarantee that all 4 are available. Again, yes, we could
> > keep bumping that number, but why not turn this into something a bit
> > more robust where nobody has to know or care about how many there are?
> >
> > > Also, you say that "these are treated specially and do not contribute
> > > to the number of total CMA pages". But, if I'm reading this right, you
> > > do call cma_activate_area(), which will do
> > > init_cma_reserved_pageblock() for each pageblock in it. Which adjusts
> > > the CMA counters for the zone they are in. But your change does not
> > > adjust totalcma_pages for dynamically created areas. That seems
> > > inconsistent, too.
> >
> > I was referring to just totalcma_pages that isn't impacted by these
> > dynamically allocated regions. This is, again, because I don't see why
> > that information would be useful. It's a fairly easy change to update
> > that value, so if people prefer that, I can add that.
> >
> > I don't see an immediate connection between totalcma_pages and
> > init_cma_reserved_pageblock(). I thought the latter was primarily useful
> > for making sure that the CMA pages can be migrated, which is still
> > critical for this use-case.
>=20
> My comment was about statistics, they would be inconsistent after your
> change. E.g. currently, totalcma_pages is equal to the sum of CMA
> pages in each zone. But that would no longer be true, and applications
> / administrators looking at those statistics might see the
> inconsistency (between meminfo and vmstat) and wonder what's going on.
> It seems best to keep those numbers in sync.
>=20
> In general, I think it's fine to support dynamic allocation, and I
> agree with your arguments that it doesn't seem right to set the number
> of CMA areas via a config option. I would just like there to be a
> canonical way to find all CMA areas.

Okay, so judging by your and David's feedback, it sounds like I should
add a bit of code to track dynamically allocated areas within a global
list, along with the existing predefined regions and keep totalcma_pages
updated so that the global view is consistent.

I'll look into that. Thanks for the feedback.

Thierry

--dxmjpjrjb5ukagg6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmi5gOIACgkQ3SOs138+
s6HoXw//XNrWJmAMVCgR+fCzlx0zoU4zdXoaxEp6EQWJKYjG//X6xi10kqOs2jVR
uu5knOytKBYAZxrbGlElM3YDTUvN62voCXi2dgvDZ53e0xVNnz+JbhGvA4FRpqU4
57ax3pJqEz4nWK7WnYrovlUSwMEPyzXb8KiRydUchOAr/QQfaCQKP1+HUgjsNsi0
0JgzT2LrmkZJvzpYS1gK7Kyb7hnGh620lWwILWeiB8Y9XvtuktdxcuTqvt3hp3TF
d8WHkQgF591iqMllbP1UFBd4zh852n3wuS/NutP4F2xH87BvkL+Az3uo4oAkqRW5
ihpe1fdjufRrSa8j4he62obtU3HQUFzXH+1nktOYrN+NGtqvRm6FJGjbg9MgAN+J
NeEn2yAIbCOT7Xhv/tAPSlB86nJVG3mmbWkfzVQhMdkeQrrTOkE7WHVH8YsDKF0x
fEnOR+NpJ5NAe74DupV116N6YvFBd7Za9uHVPW4Xue+vqShxRl0H3/mIpmZg0JHf
La8GRnYptVZoHP7YncT7rIFLmvBwf98uE+jUpHPrYbnrvBoXzECCg9higjZ/6faY
X+rx5NUc6BRVTVncIvdiKwTR/g/F/9fFBAlDx3ie4MEJgtL6yvEIuCyw58N3X/uu
UZmj3uvPk4sZILsIZO7+65qLprdN/o+T1UBAL8aWUo7bSNflcKw=
=jDv8
-----END PGP SIGNATURE-----

--dxmjpjrjb5ukagg6--

--===============1431334850870326865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1431334850870326865==--
