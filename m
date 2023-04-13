Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E316E05D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Apr 2023 06:16:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 551C63E91F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Apr 2023 04:16:31 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id B02903E91F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Apr 2023 04:16:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b="ixhStj/l";
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.214.175 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id m18so13691681plx.5
        for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Apr 2023 21:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681359379; x=1683951379;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IVdcMCSPC9IdbB1xsDX6nGCc2/KXvPpMpeLbbNIoZdo=;
        b=ixhStj/lXF2Wb6en9bP6aQn57tdm/ux1IsYvjHemNcm/wBViqRJNPuEFXppLu0E/t2
         uleZxtEXXiVc6dyJrKWpl7HpfdmkOHFAgl1OxRTbZ9Q+uEQ3+rVyduNe/a/fuE60UE+u
         uZ/5TJDBkch0aS5/uXkpo8XWmMdTS+k8mFJbyHuzacE+aTvFivhdrHEBeACfuvbLCdcI
         FI1AtMgnxjrvfF4uBfUxdHZ1TGJXpM+5KJo/9hjgwHT9FlG40e2G5kZ8sK/AhU17YP4/
         adlzlQoYHHsl6QaDPE+7Q4IShVTBtt0Zrr+XFGq5yuPWPKSNP1ctOj5El1Bglxox+aGA
         j3GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681359379; x=1683951379;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IVdcMCSPC9IdbB1xsDX6nGCc2/KXvPpMpeLbbNIoZdo=;
        b=jQyNcHflldYOItmBJ4BzBPKh/e1uQFepN2Gw+dGKdHZFBwUDEUuUwvemIWSMBakMHs
         H3Gg/dxYByeyErTOg2dC5swBa5V3QY1dgfRRaHurQ8JjCrDcip+rY3rQYMwUdeMqeCnV
         Dw4e7q55dAziqZUIu6dM3av+vPvk4rWa1RpzT+orspwVDCBiZc/ukh2u6x+zAV/0w5nO
         BNEjgGHMllEgzjHKgUlwnJ97fTtOiDEucXsaYrCAya1F4I8vwZj15+QHOXI4wdQzOfEk
         bkvtB7myhmO4jKQpM7s4ZieAMxc0KbHvWNkaUimf7I1XZeizt3R2iW7DLu7EYp3z9KFJ
         CR9g==
X-Gm-Message-State: AAQBX9eyKOp5Gfx4uENqypHro0rpj2uHRDEoulPBc6zc2kjFTsQQVvk7
	sP4oCW4VYZoKR9Zy0GXiQKc=
X-Google-Smtp-Source: AKy350ZxVVjpIXli7JXsRewIfhWAjg80eCXA9xHAm4QsrsGgjV6RpllcsCD234fzfx934OmJduhV0g==
X-Received: by 2002:a05:6a20:c110:b0:d9:33a3:e7c5 with SMTP id bh16-20020a056a20c11000b000d933a3e7c5mr781664pzb.35.1681359378790;
        Wed, 12 Apr 2023 21:16:18 -0700 (PDT)
Received: from debian.me (subs03-180-214-233-66.three.co.id. [180.214.233.66])
        by smtp.gmail.com with ESMTPSA id x47-20020a056a000bef00b0063418ea5032sm284183pfu.1.2023.04.12.21.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Apr 2023 21:16:18 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 70224106755; Thu, 13 Apr 2023 11:16:15 +0700 (WIB)
Date: Thu, 13 Apr 2023 11:16:15 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Message-ID: <ZDeCD5HuM7KJt4fu@debian.me>
References: <6feae796-db3f-1135-a607-cfefb0259788@gnuweeb.org>
 <ZAGqet3U8AMm4Uf1@debian.me>
 <ZAOTU5CRwdEC1lGH@biznet-home.integral.gnuweeb.org>
 <87v8jetaik.fsf@intel.com>
 <ZAXT1B1GTlmA78Ld@biznet-home.integral.gnuweeb.org>
 <ZDYw0vVg7Y1oExJL@debian.me>
 <ZDaPNx7WSKeMqgmj@biznet-home.integral.gnuweeb.org>
MIME-Version: 1.0
In-Reply-To: <ZDaPNx7WSKeMqgmj@biznet-home.integral.gnuweeb.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B02903E91F
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[linux.intel.com,lists.freedesktop.org,intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,suse.de,vger.kernel.org,lists.linaro.org,lists.linux.dev,leemhuis.info];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.175:from]
Message-ID-Hash: 7NHV3O5MOVTGL4MZFPNBKVE6LTQVRP3F
X-Message-ID-Hash: 7NHV3O5MOVTGL4MZFPNBKVE6LTQVRP3F
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jani Nikula <jani.nikula@linux.intel.com>, Intel GFX Mailing List <intel-gfx@lists.freedesktop.org>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>, Manasi Navare <manasi.d.navare@intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Linux Regressions <regressions@lists.linux.dev>, Linux regression tracking <regressions@leemhuis.info>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Linux 6.2.1 hits a display driver bug (list_del corruption, ffff88811b4af298->next is NULL)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7NHV3O5MOVTGL4MZFPNBKVE6LTQVRP3F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1258085572981511609=="


--===============1258085572981511609==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bhJLHQiEgQvFLfqm"
Content-Disposition: inline


--bhJLHQiEgQvFLfqm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 12, 2023 at 06:00:07PM +0700, Ammar Faizi wrote:
> On Wed, Apr 12, 2023 at 11:17:22AM +0700, Bagas Sanjaya wrote:
> > From gitlab issue above, I don't see any progress on bisection attempt.
> > Ammar, have you successfully boot Ubuntu 20.04 with v5.10 kernel and
> > test there?
>=20
> I am still using Ubuntu 22.04. Haven't tried 20.04. I'll arrange time
> for it this week.
>=20
> > Anyway, I'm adding this to regzbot (with tentative commit range):
> >=20
> > #regzbot introduced: v5.10..v5.15.103
> > #regzbot title: Linux 6.2.1 hits a display driver bug (list_del corrupt=
ion, ffff88811b4af298->next is NULL)
> > #regzbot link: https://gitlab.freedesktop.org/drm/intel/-/issues/8274
> >=20
> > (Also Cc: Thorsten)
>=20
> Not sure why you marked it as regression. I haven't even found the last
> good commit. It's possible that it's always broken since the beginning.
>=20

OK, marking this as inconclusive for now:

#regzbot inconclusive: Still on process on finding last known good commit

Thanks!

--=20
An old man doll... just what I always wanted! - Clara

--bhJLHQiEgQvFLfqm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZDeCDwAKCRD2uYlJVVFO
oyDQAQCpRHiwWX5dI6Er50EYf4tUXS1tL3eFJnh7YP059N3xcgD/WqgxlPTZGAiH
sI/ZeNdqtFgb4R4FLXyRHG1gh18ugQA=
=US0W
-----END PGP SIGNATURE-----

--bhJLHQiEgQvFLfqm--

--===============1258085572981511609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1258085572981511609==--
