Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E156F90EB31
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 14:34:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E38DF4413A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jun 2024 12:34:55 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by lists.linaro.org (Postfix) with ESMTPS id 6BE0340B8E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 12:34:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=U8lqCfXb;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.214.180 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1f4a5344ec7so6127725ad.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jun 2024 05:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718800491; x=1719405291; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=izLEjKclWmIAjHC4MNPzF0kEUXBzIGhUDyI33snqJIc=;
        b=U8lqCfXbPSQUn+FLCqwa2pgzJ5d4jJsklXUntpXmjhlzI0gXYy2OSZRDCQ9RkTBDjv
         fFSHCik3jdEd/sUHPyyZ7zDTvYe13ev1Yg9SGFlKKkUyuArITnPqNhnWcNfMET74J5Nx
         f0HNq9wcTonqq4RDJ64O2VhLe2JZKGUfCYfogLnz9YqFIGcX4Q+VXHEnmbypPwvVq0hN
         a2MCTxzXrJnAQI0MkriJjp6WKlxROXmB/r9ja+u92ChJe7zVoE3nM0gHAwl0YJLp0Chf
         qiZkGzrNsoqwA40Y5TwEiQXn4KwPEZ4JMSTaVICyz1KdOKlCeZ85YopuzB4hzc7C4790
         FeMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718800491; x=1719405291;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=izLEjKclWmIAjHC4MNPzF0kEUXBzIGhUDyI33snqJIc=;
        b=FX5t3fKwetQ64KCoFa7PJ7gYRTFz/kaLjbNqgLKsQhwFsnGCKfjkwrq/Az0cr4SZVw
         MxGbVmOAs/H793b8oPS4WEJEn0LyeeI/PjLla5WCT2vWn8+BZTMnLUbk3GWiCUL5E4nh
         q7sKh0Nvb8YSdIkjjI27m9YHr0l4b53zFuCg6R7pddww3WqfKPaQ5RYxUBUVCC+JhDkE
         fucklWhCtIxIk0t0jtzAVP23ghqiKxhb0a1lShcS7XbzVD47pWVhVbD4F6jMtdxeqUto
         gYzYuRS1PbsBVclOq84d0+ti9yChTgZROUSpkEooItUYG0wet5kbYx9nIFKGKxs2IxYS
         WA8g==
X-Forwarded-Encrypted: i=1; AJvYcCXm88PxUzrbhpiI9AZHE8wxY57+xKus4CSd5M4gA2xtD7CgrTHpWN4QhWNwdQAaIhm+wek7O6wABSw/9WkHoN0xjqYG4JWFX6KYvRZvXMs=
X-Gm-Message-State: AOJu0YwTe7yx6S6CQ2bdjv5aeZYNdcby8iNb4QlDJI4LuQaIEjA7m6fd
	BGLDJgvo/c9cBhrXqrpQE6uIpQqKZrklcCh7Hm4aYXb4xen46v2X
X-Google-Smtp-Source: AGHT+IEcB9hqDiOaiiqXDcdkruBbV/uMxC4QPzGwEbCe7v1uupCHq+Ap/o3FdsOBJyDISnfA+bQ6nQ==
X-Received: by 2002:a17:902:e80d:b0:1f9:b19b:4281 with SMTP id d9443c01a7336-1f9b19b46admr18456575ad.33.1718800491391;
        Wed, 19 Jun 2024 05:34:51 -0700 (PDT)
Received: from archie.me ([103.124.138.155])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855f1ac4bsm115511095ad.227.2024.06.19.05.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 05:34:50 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
	id AE04C190E115C; Wed, 19 Jun 2024 19:34:48 +0700 (WIB)
Date: Wed, 19 Jun 2024 19:34:48 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Paul Cercueil <paul@crapouillou.net>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <ZnLQaBQrV7KhxOeC@archie.me>
References: <20240618100302.72886-1-paul@crapouillou.net>
 <20240618100302.72886-8-paul@crapouillou.net>
MIME-Version: 1.0
In-Reply-To: <20240618100302.72886-8-paul@crapouillou.net>
X-Rspamd-Queue-Id: 6BE0340B8E
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.20 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.180:from];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6TGHLBDA57M5Q7V6GJTERRPTKXOOMWEE
X-Message-ID-Hash: 6TGHLBDA57M5Q7V6GJTERRPTKXOOMWEE
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 7/7] Documentation: dmaengine: Document new dma_vec API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6TGHLBDA57M5Q7V6GJTERRPTKXOOMWEE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1662850023684882532=="


--===============1662850023684882532==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="P+G0VMb+YrutxSpB"
Content-Disposition: inline


--P+G0VMb+YrutxSpB
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2024 at 12:03:02PM +0200, Paul Cercueil wrote:
> Document the dmaengine_prep_peripheral_dma_vec() API function, the
> device_prep_peripheral_dma_vec() backend function, and the dma_vec
> struct.
>=20

LGTM, thanks!

Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>

--=20
An old man doll... just what I always wanted! - Clara

--P+G0VMb+YrutxSpB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZnLQaAAKCRD2uYlJVVFO
o62HAP9Sf4C2GxRgQTiPvegZlarJtrtpsHOKgq1BhJIuokVeCgEA3Sb4DkOK66Dj
J768fmI0av+lWGHkQD9s9mkd4Y3TcAc=
=Ys7t
-----END PGP SIGNATURE-----

--P+G0VMb+YrutxSpB--

--===============1662850023684882532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1662850023684882532==--
