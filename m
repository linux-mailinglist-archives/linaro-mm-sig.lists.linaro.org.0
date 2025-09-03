Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 05604B42636
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 18:05:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDC4F455FA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 16:05:48 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by lists.linaro.org (Postfix) with ESMTPS id 2AB6E44407
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Sep 2025 16:05:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=k+7YkEia;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.221.47 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so72778f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Sep 2025 09:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756915539; x=1757520339; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yLCSap59X655LjRRdRVDlno90QWSbu9XZF5TPpJulw8=;
        b=k+7YkEiaHni7lpIphl5q+vRK3dp4S8yv+MDZivOr1PTtDNYU/KAVW85GvlHYuNfpw7
         5vt6S0YwRjlpL8fv4/gN4+l9G565wQv5rUn6C2s+5G/7DklX5dhfHReP2EKi5NukCoDS
         94q19d2r5R/4NC6aAtWATStnChWgklLLZhcEzaupxuNeiel29RBK+2+sxqLzBvyz56N8
         xu2SJ7FOrh4WnGDYK2uEZ+WtKSAivUHPs8PjrOyAULjJiA6wBLlDTRySu9hLVgJRjsp5
         UIcoQcXWv9B31k0Fh4XM6N+XbKgPU5kOv3InikuymZYl33Lvow2QCtsUbFzWJHgi3Od2
         0+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756915539; x=1757520339;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLCSap59X655LjRRdRVDlno90QWSbu9XZF5TPpJulw8=;
        b=T2MSYZNpnGcpfQGrfnYbjNhnB8bcjYehuDsMQAuiodzIMUv8yZFRSDwiHViyisGHOx
         4060sEtfH0JM6EQOnUMlqu4EGMgNuUqwrw18y8Th+uiLp3i8tIPYavifoYKd+zZlu00H
         7T2jIxI5n/Fjc8OrO/rpUQQhEK/xWL0XqJGny5gsQRSXn1FuTxGVXaaal4Ysaw82D9Rw
         XJlhEfopQ31mqEcFwjmH+emk2pNne+WZpRu6GTaAzfVwqxlBE7OzpdN5EtB9T0J2mE8j
         eEPuoH/E341YHh5kImEq5fua1diqbPklNeJKw7RwokJbVVLGZeqDVpzgB/kYXCZUsnZh
         p0fQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwMjTG5tipQkeR/HRWkjqGV76LCFTju8nhgpdTkJvMqQvttBMfyUhR7Q3Vy4P1FXjxHwWNuLbaHjQA3p5R@lists.linaro.org
X-Gm-Message-State: AOJu0Yy1obxb5FRlylUP27crsdIJU92mhnSrmOxmtef/wFLYiRlg1PSD
	VCgiGuYJBzhGQ1AAbwXuGI/5qEUpB278uktUo7S+qhQTEZZTqejAwJXc
X-Gm-Gg: ASbGncuFmQZwyEVGZW3WvCaznvOergH0aNgW+nD++NjxlcnluPoG0EittIhY+ffTogk
	WK5cOhRX6URQ4fniNuP64eQcRVa3ziD26UmHtUThLR2ZXqgSFUAoNCP898advVccruDBjlICcg5
	8MQJRLiYkIi3TRMkwYrxJHxO6oTuieM2gqyIWS1sZhZGxt94J1/dwz2Mxw4PCPRDTP7is0TstEx
	g6x+e14B/cOLF4AEs8jn13p2VJ21jVi2h5kYqovuPAtSxHkkpyJ5z67b2snA0kdGKNUpafXtmxB
	/RM9FM+GZnnapRanH+5sjSl2TyD+jXO54VV+BDIL+VA6WP8c+rdPK4To1kL0wU4XKYaHEBAgc5b
	GCt+1pEpCckJX5kX2GlahgL5nBIIBFEiDQRk84Buu6y5lTIn38nnjK4YOEiYTkjqOELUNuWNwlD
	8AgckKQAdF
X-Google-Smtp-Source: AGHT+IEK8F7kNjGc7W/OtAYN0SPufkeKfdMjFea1WYfcRndMdqBIHchu0H33lCxAbsFDmGMqVedfpQ==
X-Received: by 2002:a05:6000:3111:b0:3db:c7aa:2c4a with SMTP id ffacd0b85a97d-3dbc7aa304amr3472709f8f.42.1756915538938;
        Wed, 03 Sep 2025 09:05:38 -0700 (PDT)
Received: from orome (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d66b013b7dsm13160799f8f.28.2025.09.03.09.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 09:05:37 -0700 (PDT)
Date: Wed, 3 Sep 2025 18:05:35 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Frank van der Linden <fvdl@google.com>
Message-ID: <v7zrmrhvemyymq6qamz6wbgzr4cijfe4n76ivwyadmltadlot7@3csy442wfasf>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-4-thierry.reding@gmail.com>
 <CAPTztWa7kcx8bBEJEKvnjcD4v1-eDLVxMd9C10XiBQi4CDLfHg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPTztWa7kcx8bBEJEKvnjcD4v1-eDLVxMd9C10XiBQi4CDLfHg@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2AB6E44407
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.47:from];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: LRD2N4FNTEUM26D5WWAWTO3UPCDSRAF2
X-Message-ID-Hash: LRD2N4FNTEUM26D5WWAWTO3UPCDSRAF2
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LRD2N4FNTEUM26D5WWAWTO3UPCDSRAF2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7690792647001063831=="


--===============7690792647001063831==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cd2jrjiunyvxx6e3"
Content-Disposition: inline


--cd2jrjiunyvxx6e3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/9] mm/cma: Allow dynamically creating CMA areas
MIME-Version: 1.0

On Tue, Sep 02, 2025 at 10:27:01AM -0700, Frank van der Linden wrote:
> On Tue, Sep 2, 2025 at 8:46=E2=80=AFAM Thierry Reding <thierry.reding@gma=
il.com> wrote:
> >
> > From: Thierry Reding <treding@nvidia.com>
> >
> > There is no technical reason why there should be a limited number of CMA
> > regions, so extract some code into helpers and use them to create extra
> > functions (cma_create() and cma_free()) that allow creating and freeing,
> > respectively, CMA regions dynamically at runtime.
> >
> > Note that these dynamically created CMA areas are treated specially and
> > do not contribute to the number of total CMA pages so that this count
> > still only applies to the fixed number of CMA areas.
> >
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  include/linux/cma.h | 16 ++++++++
> >  mm/cma.c            | 89 ++++++++++++++++++++++++++++++++++-----------
> >  2 files changed, 83 insertions(+), 22 deletions(-)
[...]
> I agree that supporting dynamic CMA areas would be good. However, by
> doing it like this, these CMA areas are invisible to the rest of the
> system. E.g. cma_for_each_area() does not know about them. It seems a
> bit inconsistent that there will now be some areas that are globally
> known, and some that are not.

That was kind of the point of this experiment. When I started on this I
ran into the case where I was running out of predefined CMA areas and as
I went looking for ways on how to fix this, I realized that there's not
much reason to keep a global list of these areas. And even less reason
to limit the number of CMA areas to this predefined list. Very little
code outside of the core CMA code even uses this.

There's one instance of cma_for_each_area() that I don't grok. There's
another early MMU fixup for CMA areas in 32-bit ARM that. Other than
that there's a few places where the total CMA page count is shown for
informational purposes and I don't know how useful that really is
because totalcma_pages doesn't really track how many pages are used for
CMA, but pages that could potentially be used for CMA.

And that's about it.

It seems like there are cases where we might really need to globally
know about some of these areas, specifically ones that are allocated
very early during boot and then used for very specific purposes.

However, it seems to me like CMA is more universally useful than just
for these cases and I don't see the usefulness of tracking these more
generic uses.

> I am being somewhat selfish here, as I have some WIP code that needs
> the global list :-) But I think the inconsistency is a more general
> point than just what I want (and the s390 code does use
> cma_for_each_area()). Maybe you could keep maintaining a global
> structure containing all areas?

If it's really useful to be able to access all CMA areas, then we could
easily just add them all to a global linked list upon activation (we may
still want/need to keep the predefined list around for all those early
allocation cases). That way we'd get the best of both worlds.

> What do you think are the chances of running out of the global count
> of areas?

Well, I did run out of CMA areas during the early VPR testing because I
was initially testing with 16 areas and a different allocation scheme
that turned out to cause too many resizes in common cases.

However, given that the default is 8 on normal systems (20 on NUMA) and
is configurable, it means that even with restricting this to 4 for VPR
doesn't always guarantee that all 4 are available. Again, yes, we could
keep bumping that number, but why not turn this into something a bit
more robust where nobody has to know or care about how many there are?

> Also, you say that "these are treated specially and do not contribute
> to the number of total CMA pages". But, if I'm reading this right, you
> do call cma_activate_area(), which will do
> init_cma_reserved_pageblock() for each pageblock in it. Which adjusts
> the CMA counters for the zone they are in. But your change does not
> adjust totalcma_pages for dynamically created areas. That seems
> inconsistent, too.

I was referring to just totalcma_pages that isn't impacted by these
dynamically allocated regions. This is, again, because I don't see why
that information would be useful. It's a fairly easy change to update
that value, so if people prefer that, I can add that.

I don't see an immediate connection between totalcma_pages and
init_cma_reserved_pageblock(). I thought the latter was primarily useful
for making sure that the CMA pages can be migrated, which is still
critical for this use-case.

Thierry

--cd2jrjiunyvxx6e3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmi4Z0wACgkQ3SOs138+
s6HhmA//SMOIdCPTIhm9/2hI6bIiP7AY1j6GdkcEqHRdfrj9+7vySjIRju4hKC3/
YFfr1tCxniYIMxmH+EBUK8bZT3ul0IYLIAO0WA2a8Tc2MypvKL7bvvo4lf+ecbUE
Nsu3LO8MVZQTZ2KFR6mFiXKVi4MTs7XD05csQuvxazvHixU+AueWaKsSwhL1YWmK
yZ14mjJNHFwVJrZ+4Pj4nsmjQw6Qe9D8eZ+d1gXMeTyPg+RJDay+EJBxM7/Vs8Sy
T0m/UudLZIle+EYXBzhlKyHvkFDuUuutaZaYESuiRvts7iwQnhLYaIheHIj9x2gG
VC1vjkFeh4RhbB1srxB71CzyJPKbwJ5oIdvnA1kBeDUlPGuFGm1wM+FygAwoKXvR
HHCF+FaX4H/FeFz0y6z0fkvhfLm+LLuBBuj5KHTCblCLk3cYfVha+Lr4msWjbI4I
51F8NtxQehBsHWv1F2JOguGRE4lv3svHyb3yuQeJC9SPdN12/2gmY85xnm3knlhB
hq9a/y2r622vqFwgPTg5kKhBdjIwWf6tdxefR230K+Qw5ypbrNQQoPhFR/4lG2IX
n/BX8IGEoVCHH7OC3/JfinZyE2td7+xKs/GF81elCfACdkeCRJhL4EWSGVRTI/TP
3OcUwmEbp+Cr0gdYspxD0nxw7bP5SUuAIZRRBEH1KfamNw5DEcE=
=TbFN
-----END PGP SIGNATURE-----

--cd2jrjiunyvxx6e3--

--===============7690792647001063831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7690792647001063831==--
