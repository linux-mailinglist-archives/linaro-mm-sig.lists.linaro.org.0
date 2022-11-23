Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E506352C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 09:33:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9F003EE5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 08:33:57 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by lists.linaro.org (Postfix) with ESMTPS id 713E53EC70
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 08:33:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=grLXygJZ;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.167.54 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id d6so27096038lfs.10
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 00:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=GP8l1iGGwn4fXZb322yNmXnMhiWxUfGRTbBa+6nT3ag=;
        b=grLXygJZO0Bx8iiadWbvlKJmmflKTxZ5vzxphVjLy81hMM1SgiQzoo0Shg5BZVXx/F
         da240dF2jq2j4Xp8zhJTt1v1Jp2vVfQQmzJEFar5V/atAsnyb3GcT/KJL6W1fvHu1nW8
         yw+r3yFPUSqyC6iH0gRMvHdIGp68AvndzFoWLI5ly0HDfvbESRyJzKKJGfmNjBTiKPRY
         MAjRWilMYt0kEY66xv3G13NkdGJKnX0Myfa3Xdv/CVzu3UAG96GERGexZo/vVFqtGj7W
         dbqaz/9Bn9UKFTv8CDXCNPVox0sk3G+lAWuuapn8n2/IR9asGZqZbBzzVKA6EbidNFOo
         dDEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GP8l1iGGwn4fXZb322yNmXnMhiWxUfGRTbBa+6nT3ag=;
        b=pJdjTQmiEw/9wT1LhOGjGwTgbWyhq184X2OpBmon8yH6Uwh+AsfTXHIg946q/cHxAp
         cIc248//RkJiXcdUuaK49LVOBXehNNzOV3E0MMPhq7lro3+wa0pOG6I6GOnP5JoYuqfk
         p5MbxcFTJgW9dmmVoodanamgth/ZtB5GSiadIENOpe4Bbr6nmCTgcZjTlD9B/2dD4wR7
         1cV3kB839ufXDKYVF/HoTbXMeCqonOmCA4nhIh8Y5OWntYuJcT7LLq2TnpNiasy5BI1I
         JxXY2DK0F45H67T9C+p1zyGK54xhJvthZpdiiCQlwistgUEP6qCRTMaJmLN7IKL9+XAT
         uFzA==
X-Gm-Message-State: ANoB5pmILchNmWV28gDRfDtQkNmCuHUmV5AmawkZ/crHia6EIhmacPRm
	Eb4UXZyhTCwTnlCcmWh72I0=
X-Google-Smtp-Source: AA0mqf4IYpzUuisugu07V7ZumpJ7U+9y3CR2RHG/v3U5LmMwrWA44BlVBzqXWZzDZxlQVrY6JNPJDA==
X-Received: by 2002:a19:ca1b:0:b0:4a7:7d62:2807 with SMTP id a27-20020a19ca1b000000b004a77d622807mr10479283lfg.77.1669192427925;
        Wed, 23 Nov 2022 00:33:47 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id p24-20020a2ea4d8000000b002790d8012cfsm2121782ljm.139.2022.11.23.00.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 00:33:47 -0800 (PST)
Date: Wed, 23 Nov 2022 10:33:38 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20221123103338.238571e1@eldfell>
In-Reply-To: <ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
References: <caf4d6b82843788db97555a58bc9e33915e5b50a.camel@ndufresne.ca>
	<b422be59-4b4b-2d0d-8e8c-b19f27c6832e@gmail.com>
	<4fa4e5d3b1f46e46139bad069cbf5e795e63afa8.camel@pengutronix.de>
	<cc091a11-d012-d998-b7e2-8b3d616867a7@gmail.com>
	<0abc6efddb8dfc1888de15a1bedaaac6688fd078.camel@pengutronix.de>
	<1e2a6750-9849-e9ee-69d6-e4bfdcfb64f3@gmail.com>
	<CAAFQd5B+VHs62M5Wf2L-xOw=_PoaXT+akAySkeZc75HeA3d0jQ@mail.gmail.com>
	<b2dec9b3-03a7-e7ac-306e-1da024af8982@amd.com>
	<346d6ad023ef8697aafd93ac1b100890f3637e44.camel@ndufresne.ca>
	<CAF6AEGuqgWi0T=B9cb+Uy7aoWBPGQmZ3JbwFcK_45GbkY2nHPg@mail.gmail.com>
	<Y3zeYnufgXJHQAbN@phenom.ffwll.local>
	<ae9ba9ba-3ad3-af23-be66-1540862bf571@amd.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: 713E53EC70
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.54:from];
	NEURAL_HAM(-0.00)[-1.000];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[ffwll.ch,gmail.com,ndufresne.ca,chromium.org,pengutronix.de,fooishbar.org,linaro.org,lists.freedesktop.org,lists.linaro.org,vger.kernel.org]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YG5W6U6BXQYZ6EU5BFQEGFBN4OVYHAV7
X-Message-ID-Hash: YG5W6U6BXQYZ6EU5BFQEGFBN4OVYHAV7
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Clark <robdclark@gmail.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, Tomasz Figa <tfiga@chromium.org>, Daniel Stone <daniel@fooishbar.org>, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Try to address the DMA-buf coherency problem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YG5W6U6BXQYZ6EU5BFQEGFBN4OVYHAV7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8380313957501102315=="

--===============8380313957501102315==
Content-Type: multipart/signed; boundary="Sig_/cajiis7amej/mZobkBvjUIf";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/cajiis7amej/mZobkBvjUIf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 22 Nov 2022 18:33:59 +0100
Christian K=C3=B6nig <christian.koenig@amd.com> wrote:

> We should have come up with dma-heaps earlier and make it clear that=20
> exporting a DMA-buf from a device gives you something device specific=20
> which might or might not work with others.
>=20
> Apart from that I agree, DMA-buf should be capable of handling this.=20
> Question left is what documentation is missing to make it clear how=20
> things are supposed to work?

Perhaps somewhat related from Daniel Stone that seems to have been
forgotten:
https://lore.kernel.org/dri-devel/20210905122742.86029-1-daniels@collabora.=
com/

It aimed mostly at userspace, but sounds to me like the coherency stuff
could use a section of its own there?


Thanks,
pq

--Sig_/cajiis7amej/mZobkBvjUIf
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmN92uIACgkQI1/ltBGq
qqeufxAArV/1qNM1iUdpazc77pVkdR39lQLHZ5KUA/NcbdEnLh1WkJfTIRjChTEO
EuXBSUYEPBxiwU9ig405p8W5fqIzVneFY4yjtHzB1ugVWwxYSrIVvyljQwihEn8g
X4aB+nwsf2Z23UQEcP4Ov+QlzE34zoMS9JDe9JJ7R8TdUbWWRfR0aJKK5ifNcYGi
6YFW12O6XdNRoJ2mwAqiqIGHO5tlP6ADQHOuhEykrn55oAAwsgLkCpDdxTtcwAbz
r98SgI6Km7S8cnQD5y7yR2gPHENM5P5xhS9SU1Wqc7K2pmgVkT22vgtDP3O+yb2h
cy9ASGQw6Eu71V4Gpz8wnVDzGniqCfnug3fC/HpaO/VSbFG1ahI3eb7fGozDOpTc
sOfmr/72BZvq8rkkVroC/psgmY+j8OS8+y/z+ICD6yItPTwIH+EYOLACSINSkx4k
3hQBs2QH2zyBZMg2LbnjYSYJNwVPbboQme15A0y6bCGYKd6ipxr3Gx35x8EC2+jN
B+HQEfKq5K/dXPL8Aiql/sMcjyo16ejQnBbfwMa9UHwUGG9KhWDxYnCB3CrW1z+Q
eDcROSwnY84xDwApp0aIU+4qMST1QMF1oxf5OIjm1JZcVB4Bv7w6RveUa33aCKeb
SJN5+Ot13ubVvPAaEns8vcw9iRdyy50+i9q7MdBHqtTSrJvO1Vg=
=m2RZ
-----END PGP SIGNATURE-----

--Sig_/cajiis7amej/mZobkBvjUIf--

--===============8380313957501102315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8380313957501102315==--
