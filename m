Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D85691078E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 16:09:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F0F944812
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 14:09:01 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by lists.linaro.org (Postfix) with ESMTPS id 8476640B7D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jun 2024 14:08:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=gswuTiU9;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.174 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-70623ec42c2so759511b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jun 2024 07:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718892539; x=1719497339; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bkoariQAFK5nzptqulE5lD4Ceq9ZNl7I/5y71MtF05E=;
        b=gswuTiU9ifzP4ey6/ih4wlucJE7Rtc1enY0J5neAJ8xkj5mZpiLAWXDDWYc/t1WICG
         Z+ExVwyY6dcBsDbAbxVIk5ZvRGIMQ6i16OdfjReVK0xYi0981/hq6P2gXk3jNpFyMju/
         V2QfX17IqzBpgXnqyT8iSccmDDGVQA3UNhMkTBmYUKe61Powagn5shbaktkETlhN0dBR
         4gW8WoEZqq+w8m+p78OTn0yXv/fcD8ohCMdRnzix+o8NM7maoVnkshnNZtKfuRcgQQ4a
         lFVqCH8DisHEXUROEsfXMIp6IcPhX31f0aVL/mafnPHZXNQGMBJPbUsFhOn+WxV5Yu+N
         oAsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718892539; x=1719497339;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bkoariQAFK5nzptqulE5lD4Ceq9ZNl7I/5y71MtF05E=;
        b=rDbvJ8R7kAMt6YhSMV7xUSD+7pXhKR8s91lbIaDx+FoKWpPMTJRTVe3HFTyLXR2ezX
         WEowbky6LpAYqDKkns0Y+rfsZoOLnjPW9RmwWcfbJ90GcJY50VTDUmlSCQ7RO4tLfdQQ
         f+nhCnY4P0fQhNgSwDbK6XvIEJdyWUujtGwvSc2UMt45/c5fZXN9e3ogNmnC1WXpH49j
         1SCCDWpsM4NRAoWtbcPns1bsW8W4/e+YF0gbAvoEnX8L7bBVl63mLWDoHMOSUlPVqE88
         v+JaHHAvmZJ2Hgj18iZCc7Kp/35dfPWJq2j9IpkHV/+z0vaR4EAzLDWaliPg4KWs2eGN
         gM0w==
X-Forwarded-Encrypted: i=1; AJvYcCWUc4DKXuR9RxEkkHtrTrSY1lupLUWWvlrWicLqorSmNBNb7ohl31vOyu3rq5O8GlnEYb7TuBORS8ETg9zihpQg3OGyPeje2FUefkoxsvY=
X-Gm-Message-State: AOJu0YzHxlNs2jrp7iH0FKaZ118D+TBPjBsUdRABT7EF16s/O8W3ni3k
	Vfr4PHrWSd2S/4RxhpWdmItKUkFBekqP2IDqzEQfFVXXA7Ak5yyv
X-Google-Smtp-Source: AGHT+IEWi/i9vtD/HvCPbZdrn1cy8dwPBWfdCTrVuHryTftlO8XzUts6A/QV130K6XeOnU1kYBckXA==
X-Received: by 2002:a05:6a00:4f06:b0:705:995c:3e30 with SMTP id d2e1a72fcca58-706290abf4fmr7801065b3a.17.1718892538504;
        Thu, 20 Jun 2024 07:08:58 -0700 (PDT)
Received: from archie.me ([103.124.138.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705cc987743sm12800997b3a.90.2024.06.20.07.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 07:08:58 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
	id AFD9C1824D9E0; Thu, 20 Jun 2024 21:08:55 +0700 (WIB)
Date: Thu, 20 Jun 2024 21:08:55 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Paul Cercueil <paul@crapouillou.net>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Vinod Koul <vkoul@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <ZnQ398_ZtYpo-JLS@archie.me>
References: <20240620122726.41232-1-paul@crapouillou.net>
 <20240620122726.41232-7-paul@crapouillou.net>
MIME-Version: 1.0
In-Reply-To: <20240620122726.41232-7-paul@crapouillou.net>
X-Rspamd-Queue-Id: 8476640B7D
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.174:from];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
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
Message-ID-Hash: MXM5T3OPGJ6ODG7NXG7JM5FNOS5PFHSF
X-Message-ID-Hash: MXM5T3OPGJ6ODG7NXG7JM5FNOS5PFHSF
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 6/7] Documentation: iio: Document high-speed DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MXM5T3OPGJ6ODG7NXG7JM5FNOS5PFHSF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8568108103708391509=="


--===============8568108103708391509==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OmuTAUrc7S676QKv"
Content-Disposition: inline


--OmuTAUrc7S676QKv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 20, 2024 at 02:27:25PM +0200, Paul Cercueil wrote:
> Document the new DMABUF based API.
>=20

LGTM, thanks!

Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>

--=20
An old man doll... just what I always wanted! - Clara

--OmuTAUrc7S676QKv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZnQ37gAKCRD2uYlJVVFO
o/r8AQCIFAAnhfXKSkVIpjhII/qaXwnWsgfL4cVfExJmpumexgD/Ri4NWMVAfeiY
yXZE6Mz87M0muGonVU4ld7vLcryHOwE=
=A0ev
-----END PGP SIGNATURE-----

--OmuTAUrc7S676QKv--

--===============8568108103708391509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8568108103708391509==--
