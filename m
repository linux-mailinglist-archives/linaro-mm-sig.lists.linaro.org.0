Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0FE6DEA45
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Apr 2023 06:17:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6FDBC3F629
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Apr 2023 04:17:39 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lists.linaro.org (Postfix) with ESMTPS id 05BF93EC03
	for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Apr 2023 04:17:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=RlIwUSvX;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id y11-20020a17090a600b00b0024693e96b58so9262448pji.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Apr 2023 21:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681273047;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hq/mTM6vqO5fl2BFqwBvgyto2iWy4lzSUp2jXy0gRvg=;
        b=RlIwUSvX9oZQhTPSDp7e+uIzThMoEzwTnlmdzri1CU8jQEHwALdI51Ah9ME0rf11m8
         7FBcjhBbnQsB2nj7UQ252Cm2VovvzUnIWs5NgJC82dc2QEKzbvedLwHoBiYjteANduV+
         TncT6mBXRyL5H+gKtP2KFuRPMhbBxhVCoTAIt1QQX+T/AZW7Ds2+D659FZ2HTIDDXhBP
         XmFiCFMCMG6N9AaAfEkio6U97Kc4LEWSW170wVV1FfqW8wgH8c3AMGdwWUnWqbandO+L
         1IBoF+a+I0TrGwnCV20sM9chdMgodtRD9VNBAP/BH2ATfU6bnm4QwzC4ZO/WdJq3TNXb
         CGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681273047;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hq/mTM6vqO5fl2BFqwBvgyto2iWy4lzSUp2jXy0gRvg=;
        b=OyLKuuUt3p8qlHNavkoq/WZsIQKNj/it0faA55NzhOXf2zMVzhIHKVrzsMHgy5izm0
         Uh3I5zsuKVapRBSUVDrmZWtUFRNzDI3cA3RDxOxwsjn0JAk5eUVQ71gq/2wwFLhKZ9Ig
         SGJHAvu3UjrYd5M7Fv42tYs+7BJq+CKHhRAHevs21kyj159UsZiR1qpz15fmSQ2ik9Gy
         ZvxPke7R1gLWJcVB3nEgCNmSTFL2vskPTt9vPf1JN0xjAL58+UibL2ZVCWrnL0e98X6I
         SgrK+1HWJTL06zDM0JcXt/HAkCf9nN/0JUVmSjSi09AIp8Rogh/iKUFZfN5RxFpRjZv+
         X1oQ==
X-Gm-Message-State: AAQBX9eC66o6pmkShU0Fa8Wh7WxKUM5SvZxihwkLARhSGVMRYp1rMjGb
	m8M2RY9UN0cae23n6Zc7Pms=
X-Google-Smtp-Source: AKy350a1z06v0KqJPjvsjepiCUuBZua9rRdG2dJCxmd9vvnWAItbO2F6KpdEGZApvgHF1OZx5jWKFg==
X-Received: by 2002:a05:6a20:b705:b0:d9:a792:8e52 with SMTP id fg5-20020a056a20b70500b000d9a7928e52mr3986430pzb.57.1681273046927;
        Tue, 11 Apr 2023 21:17:26 -0700 (PDT)
Received: from debian.me (subs03-180-214-233-66.three.co.id. [180.214.233.66])
        by smtp.gmail.com with ESMTPSA id x24-20020a62fb18000000b0062de9ef6915sm10571496pfm.216.2023.04.11.21.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 21:17:26 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id C07181068E7; Wed, 12 Apr 2023 11:17:22 +0700 (WIB)
Date: Wed, 12 Apr 2023 11:17:22 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>,
	Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZDYw0vVg7Y1oExJL@debian.me>
References: <6feae796-db3f-1135-a607-cfefb0259788@gnuweeb.org>
 <ZAGqet3U8AMm4Uf1@debian.me>
 <ZAOTU5CRwdEC1lGH@biznet-home.integral.gnuweeb.org>
 <87v8jetaik.fsf@intel.com>
 <ZAXT1B1GTlmA78Ld@biznet-home.integral.gnuweeb.org>
MIME-Version: 1.0
In-Reply-To: <ZAXT1B1GTlmA78Ld@biznet-home.integral.gnuweeb.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 05BF93EC03
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.216.42:from,180.214.233.66:received];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.42:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,linux.intel.com,intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,suse.de,vger.kernel.org,lists.linaro.org,lists.linux.dev,leemhuis.info];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: J2WCQOLCJXHYXEPTTCBXJ4JVPBTBAH3J
X-Message-ID-Hash: J2WCQOLCJXHYXEPTTCBXJ4JVPBTBAH3J
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Intel GFX Mailing List <intel-gfx@lists.freedesktop.org>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>, Manasi Navare <manasi.d.navare@intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Linux Regressions <regressions@lists.linux.dev>, Linux regression tracking <regressions@leemhuis.info>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Linux 6.2.1 hits a display driver bug (list_del corruption, ffff88811b4af298->next is NULL)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J2WCQOLCJXHYXEPTTCBXJ4JVPBTBAH3J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4817028516759426384=="


--===============4817028516759426384==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="riLMWEg/4LOAeueD"
Content-Disposition: inline


--riLMWEg/4LOAeueD
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 06, 2023 at 06:51:48PM +0700, Ammar Faizi wrote:
> On Mon, Mar 06, 2023 at 12:54:59PM +0200, Jani Nikula wrote:
> > Please file a bug at fdo gitlab:
> >=20
> > https://gitlab.freedesktop.org/drm/intel/wikis/How-to-file-i915-bugs
>=20
> OK, I posted it here https://gitlab.freedesktop.org/drm/intel/-/issues/82=
74
>=20

Hi,

=46rom gitlab issue above, I don't see any progress on bisection attempt.
Ammar, have you successfully boot Ubuntu 20.04 with v5.10 kernel and
test there?

Anyway, I'm adding this to regzbot (with tentative commit range):

#regzbot introduced: v5.10..v5.15.103
#regzbot title: Linux 6.2.1 hits a display driver bug (list_del corruption,=
 ffff88811b4af298->next is NULL)
#regzbot link: https://gitlab.freedesktop.org/drm/intel/-/issues/8274

(Also Cc: Thorsten)

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--riLMWEg/4LOAeueD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZDYwzAAKCRD2uYlJVVFO
o5/sAQCOZEp244paV37hHVVszEf/eKSIXWtgAAMsix36DcZ4pQEAkRjyNdxRZdYv
qEYxt6Z1lmleaN5i4eQGxbGF4VyCHw8=
=6JIi
-----END PGP SIGNATURE-----

--riLMWEg/4LOAeueD--

--===============4817028516759426384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4817028516759426384==--
