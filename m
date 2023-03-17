Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 725D56BE61A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 10:59:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 700BE3F4A9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 09:59:32 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by lists.linaro.org (Postfix) with ESMTPS id 9EAFF3E942
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 09:59:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ZZWOhJjI;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.167.45 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id j11so5744440lfg.13
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 02:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679047153;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=GetE0CPIO0EH0AkPMpbbSlnaxclV0uWSKmcnJYv943A=;
        b=ZZWOhJjIHqhzSL0qXhFVIun4WL2FPoijpgQAvi8wvjx7KyMfzyti9VYxSm9l0+vSU6
         gSWQkukFk2DouvMob4c9tm/gfbF1lpdbgJW46r776B4J8AOVprqMtiDVvxp4K6AfOqdW
         GcgUsb/MqOLCrSEjCuCNeJZyAJEkQ9rbABF9jhJv5qScxrLTMsULlN82De/sA0h11kjk
         QzRToddsLtDtpyL68BMUG8KMNAicyX8BSPg1QbA1LcbXpwdtx//i/1vbekd8KX6ma1IO
         8FNAdG9Hasdom5beiPPd+Hr6XtMtiN1EEjeaHD6+C+TA74gbcmGp8l9fTC0G4v/eaBfJ
         E8Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679047153;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GetE0CPIO0EH0AkPMpbbSlnaxclV0uWSKmcnJYv943A=;
        b=NBKAmCnkeUw+lJurHaovf25CayWVbst+nf7EysEI+/sJOFghCHeKyo1QHqaTrEv2MC
         f3eRyTJsrsgDNahgDRX5tXNyUZMhwvmmJGSTU65I8hG4TFdTWbaQ8i0zjOjJRDQSC053
         Al2af5xeFiqj+YRu7DrsBzUmte18Nmapjz2MUIxwJu82HIsDne4xKL/jMK/1kTSEiASh
         x1M+p3XWWPzXBD7unCSvN22p/MLRBfN3FZ6XYJ9BcdPGl0ubWIQZCV7oMov+9b54VETp
         OJcIKm2zZ6sGtZWVCyG8/2oOh3ufDxBlvie+W5APFF5DBshLQp0sYD8FDHhtgxj6axVx
         er7w==
X-Gm-Message-State: AO0yUKVh8Cx/gYP0ZZA95c3HyyFUFvvonbApi8tLSWR+mGEPumceEdPV
	jrRDse8JQLcI2wHIDtVe4e0=
X-Google-Smtp-Source: AK7set9RZop77B4urwlU3xmOSywkaR53Mnt6mfkZx0B9jsN1lpPLw7BjM8mMGD2HTKb5Uof18XEVpw==
X-Received: by 2002:a05:6512:931:b0:4e8:4abf:f19d with SMTP id f17-20020a056512093100b004e84abff19dmr3891922lft.15.1679047153125;
        Fri, 17 Mar 2023 02:59:13 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id u22-20020a2ea176000000b00295b9d903b7sm322981ljl.119.2023.03.17.02.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 02:59:12 -0700 (PDT)
Date: Fri, 17 Mar 2023 11:59:08 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
Message-ID: <20230317115908.2559b5f6@eldfell>
In-Reply-To: <20230317111737.48702bca@eldfell>
References: <20230308155322.344664-1-robdclark@gmail.com>
	<20230308155322.344664-2-robdclark@gmail.com>
	<ZAtQspuFjPtGy7ze@gmail.com>
	<CAF6AEGsGOr5+Q10wX=5ttrWCSUJfn7gzHW8QhxFC0GDLgagMHg@mail.gmail.com>
	<ZBHNvT3BLgS3qvV5@gmail.com>
	<CAF6AEGu1S2CXzRxV_c5tE_H+XUGiO=n0tXjLZ_u_tW-eMqMsQw@mail.gmail.com>
	<ZBLg0t0tTVvuPuiJ@gmail.com>
	<CAF6AEGvV5arZThTyju_=xFFDWRbMaexgO_kkdKZuK-zeCxrN7Q@mail.gmail.com>
	<CA+hFU4xbssR+=Sf4ia5kPdsSb4y9SQUd4nx_2p1Szcbtna28CA@mail.gmail.com>
	<20230317110921.0862cc8b@eldfell>
	<20230317111737.48702bca@eldfell>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.24; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9EAFF3E942
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	FORGED_RECIPIENTS(2.00)[m:sebastian.wick@redhat.com,m:robdclark@gmail.com,m:jadahl@gmail.com,m:robdclark@chromium.org,m:corbet@lwn.net,m:ckoenig.leichtzumerken@gmail.com,m:intel-gfx@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:christian.koenig@amd.com,m:linux-media@vger.kernel.org,m:ckoenigleichtzumerken@gmail.com,s:linaro-mm-sig@lists.linaro.org];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.45:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,chromium.org,lwn.net,lists.freedesktop.org,vger.kernel.org,amd.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 2X2N6BNA725WIE33XGGLAIY74X2KFY7F
X-Message-ID-Hash: 2X2N6BNA725WIE33XGGLAIY74X2KFY7F
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Clark <robdclark@gmail.com>,
	Jonas =?UTF-8?B?w4VkYWhs?= <jadahl@gmail.com>,
	Rob Clark <robdclark@chromium.org>, Jonathan Corbet <corbet@lwn.net>,
	intel-gfx@lists.freedesktop.org,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	dri-devel@lists.freedesktop.org,
	Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	DMA@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 01/15] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2X2N6BNA725WIE33XGGLAIY74X2KFY7F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5776787045776637766=="

--===============5776787045776637766==
Content-Type: multipart/signed; boundary="Sig_/ns=2iCi6874feZ5wvr=m5cb";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/ns=2iCi6874feZ5wvr=m5cb
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 17 Mar 2023 11:17:37 +0200
Pekka Paalanen <ppaalanen@gmail.com> wrote:

> On Fri, 17 Mar 2023 11:09:21 +0200
> Pekka Paalanen <ppaalanen@gmail.com> wrote:
>=20
> > On Thu, 16 Mar 2023 23:22:24 +0100
> > Sebastian Wick <sebastian.wick@redhat.com> wrote: =20
>=20
> > > Vblank can be really long, especially with VRR where the additional
> > > time you get to finish the frame comes from making vblank longer. =20
>=20
> Btw. VRR extends front porch, not vblank.

Need to correct myself too. vblank includes front porch, vsync does not.

https://electronics.stackexchange.com/questions/166681/how-exactly-does-a-v=
ga-cable-work


Thanks,
pq

--Sig_/ns=2iCi6874feZ5wvr=m5cb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmQUOewACgkQI1/ltBGq
qqfISQ/8D20lVay+/4PbbioQiKn34OZSSgRSLuQjkLK3bCQ84cA0rv+Oz1aUGYV3
dsJ3YzqrEMJ61jeeBC+unA1LXaBnuHhlvjkU9AM+ToBreSuu2CoGkJuFGcZ22jSO
rpwSAKyeWKHOXkTrByH6CyuB5sM5IL+CBU77sJO/k8x14PwxPdCGu+kNx+YYf8FY
NXEhu/5X0KNUZ4rtpoY4sw0dSXPOvB7ZeCC0PfnMi4faokOLprd935td6Wl3zlOW
Oqf/x8/3vhfk/hZfr44+wRX0xGT45GK62HWVflGc6BMc3dnSetOmDJ5VNESDFSdZ
z07d9H0wBgk+FkmN3FNYk7GUKDSKO+X3c5Pee7Z1Fpz9lERDItmYsHMW+nESIdh4
7rKN8n4uvQH/dLS673ezoAcw0TAg0wvbBZFaAA00ehYQevfgPbq9uxMYiiFIaOQE
eq0osWfvsz7688j0PaQU0B33V9AYBIxoFWumfz/kVWpN25SBxiZcmocAQfkX7HBG
cIp5AGMriF+6XCdzYpmHBhRf068SvJZI4r3FSHGpA/kcE/ZyhUBdQgZDsLtdIPeG
G5+uSWGZ9JcCftfpPLiT6TEJVjhmByaO1WHQvTR75aczQFald5RlESucK2L89hDd
vS3SOL+JOPO1nJGPh+e340xzw9gZCstkeD7ajtZUELPnhvdDzDA=
=f9L1
-----END PGP SIGNATURE-----

--Sig_/ns=2iCi6874feZ5wvr=m5cb--

--===============5776787045776637766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5776787045776637766==--
