Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A17C6A9227
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 09:06:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 258383EEE7
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 08:06:43 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id 097B93E941
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 08:06:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Ux8u3jgY;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id i10so1887297plr.9
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Mar 2023 00:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677830783;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2GNgFypKn/0hc5Isav8O5f3I0hf4LLGb3YNTok/vC30=;
        b=Ux8u3jgY4xPsXvtIDLngtm6THaaqQKr8ISSap3TtA42a9SIGaO7kOXmvJtURJTC7eU
         ucpvgT3jdlM5QrvkTUaWCkj/ksmrJtpcp9sbpGb25MGQQ32ucJSJtaVBUnV+zGoSaOMU
         qdLfegpB4yjaX0JZE+a+Ke4gCVS00j3fmQAIoEX0OkimEozc3WaldkliB+2TfcxlD/TT
         b1fXh0LRXeaC/PKaECznitkJj4H8qUzZ4i9RWNUGCTUQlOhPhueSOEs86QjHHAwn6oop
         NLMCDRiHxdXEHxN40O9Km1m23oE3XntsDCWjxh7Z1Do6zWaNmt3DTnOnd6rJ7BKJj0+K
         qRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677830783;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2GNgFypKn/0hc5Isav8O5f3I0hf4LLGb3YNTok/vC30=;
        b=ufOGQFhhUpLjzI1/mNshbu+0eCTCdvNJrCcw3vIiX06jybNTvMH9CTRDn6jyo1E896
         IUEk75bBuHAOGv6Kq0Q5TBr5becHcMG9+5IZoe5E9l2X2SbCMuDpbENizcv6umMmwKc/
         KkKOlss9TQ4R7Iu69PuXMyh0zEdShmJQlnj0gFga1IQrZtw59EggTEzVjuVA4vVWI8nq
         Fykh13260m1gfNfsKA9MrvDPpOva0Ku2UTIXGoNNnQNRhle5eUvXoXzLrnRHdQ1DIhRr
         6pudYmGn8r473rbOIPUjxzsHexJcB15Bsyzv54A2GJB9pUM3FKRvMn5pEprFelevsLxG
         /Rzg==
X-Gm-Message-State: AO0yUKVdQa5B6FbfbkKEM8ea7npZAKgAWOpiSBenUat64ulkEqC4cQec
	hHaR/9hBLp4f+uHL0dqT1SE=
X-Google-Smtp-Source: AK7set/y0ZWmbann7eE3oSNJgm0cy1BGxnKo48BhulCfaGdm1imER6hOYVoRuA6vUXdoT5U9GtHDhw==
X-Received: by 2002:a05:6a20:8c97:b0:c7:5cb6:2ff7 with SMTP id k23-20020a056a208c9700b000c75cb62ff7mr1397114pzh.22.1677830782975;
        Fri, 03 Mar 2023 00:06:22 -0800 (PST)
Received: from debian.me (subs32-116-206-28-31.three.co.id. [116.206.28.31])
        by smtp.gmail.com with ESMTPSA id r7-20020a634407000000b005038291e5cbsm918858pga.35.2023.03.03.00.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Mar 2023 00:06:22 -0800 (PST)
Received: by debian.me (Postfix, from userid 1000)
	id 267F1106180; Fri,  3 Mar 2023 15:06:18 +0700 (WIB)
Date: Fri, 3 Mar 2023 15:06:18 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>,
	Intel GFX Mailing List <intel-gfx@lists.freedesktop.org>
Message-ID: <ZAGqet3U8AMm4Uf1@debian.me>
References: <6feae796-db3f-1135-a607-cfefb0259788@gnuweeb.org>
MIME-Version: 1.0
In-Reply-To: <6feae796-db3f-1135-a607-cfefb0259788@gnuweeb.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 097B93E941
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.70 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.177:from];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-pl1-f177.google.com:rdns,mail-pl1-f177.google.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,gmail.com,ffwll.ch,linaro.org,amd.com,suse.de,lists.freedesktop.org,vger.kernel.org,lists.linaro.org]
Message-ID-Hash: 5OZ3K4M7NHZRR5XKCAORWOVAUSGVNAIK
X-Message-ID-Hash: 5OZ3K4M7NHZRR5XKCAORWOVAUSGVNAIK
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>, Manasi Navare <manasi.d.navare@intel.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Linux 6.2.1 hits a display driver bug (list_del corruption, ffff88811b4af298->next is NULL)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5OZ3K4M7NHZRR5XKCAORWOVAUSGVNAIK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0276904592706539707=="


--===============0276904592706539707==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SfEzHmcCPaMIkdPc"
Content-Disposition: inline


--SfEzHmcCPaMIkdPc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 03, 2023 at 03:46:56AM +0700, Ammar Faizi wrote:
> Hi,
>=20
> Linux 6.2.1 hits a display driver bug (list_del corruption, ffff88811b4af=
298->next is NULL).
>=20
> Unfortunately, I don't know the last good commit and the first bad commit.

Can you please try v6.1?

--=20
An old man doll... just what I always wanted! - Clara

--SfEzHmcCPaMIkdPc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZAGqdAAKCRD2uYlJVVFO
o6tYAPsHUCjEZzvaAnu5vqweP64uXu3vAHJpeX3chmv8QC747QD9FtDdYRCRW/a6
ed37mcnX36rkPmyFZayYgbJln2MDjgg=
=8ymv
-----END PGP SIGNATURE-----

--SfEzHmcCPaMIkdPc--

--===============0276904592706539707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0276904592706539707==--
