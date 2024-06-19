Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E46DB90EAE4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 14:22:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F02CC4413A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 12:22:29 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by lists.linaro.org (Postfix) with ESMTPS id 2FE1740B8E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 12:22:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=GoP2Vt4e;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.174 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-705e9e193caso3374944b3a.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 05:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718799746; x=1719404546; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V41/rcWKltI+WknTyeXP06R8W+cGdmxAwRdLK3VXRV4=;
        b=GoP2Vt4eL2EpVCfB51nwusGHG4wv+K0ooyPerjeAYQJXA3Reh5FJU7f+j4mPRblyeH
         7Ar4X9ArNNVxz7bPwK7zh2BWpNJGFc2JevB2pkmcqK47pcvbp3YTtDaaH0ooPQtpPBAt
         e4uONCM+VAFUcKTH9DNnErwD3+qZHhhSV8GvWWwusvx4OmeNYxoHALDAk5p4R/x8BZ4E
         CcNgtaNOuf/f6C1SMQl7tuqhMgR8dK/gRJ+DCX4FK0D72K3vyPPPU5F4tov8ph/dVi18
         fYYvB/E9GBqIDUqwokEbuSRb5rZXtg7Syu87Brze2BLqwhUOH7piqKaHL/PsfjBCbU2a
         uExA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718799746; x=1719404546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V41/rcWKltI+WknTyeXP06R8W+cGdmxAwRdLK3VXRV4=;
        b=MfERSswm4xZLdbKEH1Gr48tAgHSokIIJE9EazyZWwA68sHefhJ1qzYe01oGSN7IuGI
         HAywE7ntQslajdh+dP+J3PAbB9P3i+YxCl7YM9Lg7H2u7S+eKP7bVcA+wmeeO/VGH2X5
         Gufq93YPAg0P5apQ7S8JKO0hUrmdXs+4pLp4BrtK9m/X2E/h4AsByOga4Ctwa5xtDRaY
         oPp35UtqoAaDsmvLwsWJbHeSFXve4GtFfkAK+R9+AAPbuqAIxZQ0iRjzOKuarpUXmYIH
         4MUXqRGXKmVc+dQS9ShXdtwwXHeQio6i06jBiDaVWbmK2MQ0zdSTjqWqIaWhSPGLRzcO
         PsSg==
X-Forwarded-Encrypted: i=1; AJvYcCXDKjOJ9KirjQwrdWEnb2JMp9qgk2i2Thl671lMTHKLK9j6xxyEKJzBh0MIHjDSOxjH3sk8rPG8Rp8mdf8FwgAh50OTFNj51mS32lPF244=
X-Gm-Message-State: AOJu0YycUkUUDimmFa+UnlC0bmJaDMW49uO2EqI+s8Humiepj2vySuSh
	3wEm6kUveoeFTtX5PJ2k97nEyTnWp3bcKNhn4APMCH+CfiA9Uxbx
X-Google-Smtp-Source: AGHT+IFNxwWmh0mB5nhspfwKH+64F9TJyMuzEuB30lqUIBugcJh/Gng9OTFsOUwuNaX9+aJTaOMbww==
X-Received: by 2002:a62:bd10:0:b0:705:cade:1f40 with SMTP id d2e1a72fcca58-70629c3683emr2114067b3a.11.1718799746080;
        Wed, 19 Jun 2024 05:22:26 -0700 (PDT)
Received: from archie.me ([103.124.138.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705cc929321sm10560319b3a.26.2024.06.19.05.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 05:22:25 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
	id 015D5182522A8; Wed, 19 Jun 2024 19:22:22 +0700 (WIB)
Date: Wed, 19 Jun 2024 19:22:22 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Paul Cercueil <paul@crapouillou.net>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <ZnLNfq3QvdwlVD1t@archie.me>
References: <20240618100302.72886-1-paul@crapouillou.net>
 <20240618100302.72886-7-paul@crapouillou.net>
MIME-Version: 1.0
In-Reply-To: <20240618100302.72886-7-paul@crapouillou.net>
X-Rspamd-Queue-Id: 2FE1740B8E
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.174:from];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[15];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VJV3K6OYAOOMRGB7LB2OOCELT6L4JU2H
X-Message-ID-Hash: VJV3K6OYAOOMRGB7LB2OOCELT6L4JU2H
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 6/7] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VJV3K6OYAOOMRGB7LB2OOCELT6L4JU2H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2430782797107967259=="


--===============2430782797107967259==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wDBpEk9k3fDiQDP8"
Content-Disposition: inline


--wDBpEk9k3fDiQDP8
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2024 at 12:03:01PM +0200, Paul Cercueil wrote:
> +As part of this interface, three new IOCTLs have been added. These three
> +IOCTLs have to be performed on the IIO buffer's file descriptor,
> +obtained using the IIO_BUFFER_GET_FD_IOCTL() ioctl.
"... which can be obtained using ..."

--=20
An old man doll... just what I always wanted! - Clara

--wDBpEk9k3fDiQDP8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZnLNfgAKCRD2uYlJVVFO
o4y6AQDgOsdarQ8+Hpt/RroNmGj88fc5ztC2ucDL+SFkBMD3egEA/jAq/vCNnHLV
PeVNFq70Fcg7IPBxIcAc0QN08ILDOws=
=7nF7
-----END PGP SIGNATURE-----

--wDBpEk9k3fDiQDP8--

--===============2430782797107967259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2430782797107967259==--
