Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8D3BE10FE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 02:02:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B3B8456FD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 00:02:00 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	by lists.linaro.org (Postfix) with ESMTPS id 839494483C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 00:01:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=WRhaO9Y1;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.210.169 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-796f9a8a088so177480b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 17:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760572916; x=1761177716; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zrfi/VMjUvLRNlm3QRjfVIbaOCS5M7RG1lr8DfSwgF4=;
        b=WRhaO9Y1lPwC8NxtZgf+h6b4iFmFHWxrtUj0reGf6JmRPcsHJej9hpa2WX0pUCQKTr
         mgUFSPl3vKg9dSzdaS9OFdUYY5NP0uuPrNZp64MGv0hBPzA60xtP4uaAhtBZP7XQ0rR0
         67NoaXqOEs/8b6ygohVNehGgpMgPotqNzYjsYq/5xhkiqvRQ7ryCWW0LR7dObouadIva
         opcInWnDENOCasYUGmZrGk1xeN7982qW5pwxpFAdvQnukxp8MzCyDAEW+Q5IhrB0KlVS
         ZfKWx/miNypDMpehN/xXiP5co0tcqfSKgmEkTBM7JO+8Apv88qNCydYZGp9mkGHKffv9
         yuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760572916; x=1761177716;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zrfi/VMjUvLRNlm3QRjfVIbaOCS5M7RG1lr8DfSwgF4=;
        b=Q23FLB+4oOFmKNb2DjEBACdKne2JUomDWB8FZjpj8eYa4KySsX308Ee/S4kmztuaF8
         jvXKoGAJ9bEp+YZBvOzCjX+6Lex+/4EZjssSmct4cx91l7N94fcE/GsPuDxCeCmnpYCb
         /TIo9+ZtnjxkYjcNpz6PJcLmdCVQQOErD15jtCuKmwlMR0oURcntAwKrJXn9ACG5qG6E
         qKgJEHyfj6krMOId9yX1Vey7sAtYec+ntmml24F69Z0Y7XjMAp3FL/U69rWjCep1f1gQ
         5+Ipx8Bieq8yLhIFZa0dcjcKnkto3gUPeBo6sg9qYVwTlwZl/MPYcV9nz6M+kgudHgtV
         8Iiw==
X-Forwarded-Encrypted: i=1; AJvYcCUAS6EMG4Z/fIcZbMcABtBVKxUMYNqDEZ0Jop5CWZzkUxc8MqGAET8fvyzrH7wa62sV2vPJ7AwDo1GeueS1@lists.linaro.org
X-Gm-Message-State: AOJu0YwE6gl0vhfCcJF6z9Bjw6ZX+R792nRRBef6qa50ExiGX0D9AfSY
	mTwuVJNXqJQiXH5BCy2O1UGLvUsIapqSqq+UNbqU4hVcm9XnXfjPYEz4
X-Gm-Gg: ASbGncuiHU+28Lthsz3+QvBm1SV6aoslALMnDbmBgtH5j21EpJqsfzTozXENfFt8sdT
	C6X95qs3N4C6XzGsy5hZqJSoC4nQFj9KpU7/GNUW3XeeIFhO3Q5PJXZkCB3ERfn+oHtkomsXtQH
	ydubPLZKn6W9sVU0/BeZ57LRrxL0DoQCSex+iTwGUYqmTNQAcPCLeHupoHCQaRRQJNDZvPEorNz
	fONGeW7mtMfDUQ8jIyoRyOZpqjDlT+ejEkylLGOYi69emY3vqFbRjjIWgqUStaUzuNRkYQFd1ag
	PcP7+A6tTcrFTgGAYqMkhmdjci8ebxbs5Uk0McRNdaTh7gMXAMhYL63ktvZ+k46eoNvhWSi3Hge
	waJA8GwIyTeDYPydiGn8orVhP/puphU3GNZhmQ9W0zC1TGC7bGcPXuUhOJoLKf3tVm+aLMVFRqK
	eh0smxJ2cn5LT18A==
X-Google-Smtp-Source: AGHT+IHWPFl3wQ4UvDVjKcFZV8JmCaZHewB/K/pGnpEkw5mCOGWpXdamSbh5/nnQLrluiU4qXrWD4A==
X-Received: by 2002:a05:6a20:3d1c:b0:2e8:1c23:5c2d with SMTP id adf61e73a8af0-32da845fde6mr38728255637.50.1760572916459;
        Wed, 15 Oct 2025 17:01:56 -0700 (PDT)
Received: from archie.me ([103.124.138.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bb11ca0sm20159494b3a.32.2025.10.15.17.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 17:01:55 -0700 (PDT)
Received: by archie.me (Postfix, from userid 1000)
	id AC288420B701; Thu, 16 Oct 2025 07:01:53 +0700 (WIB)
Date: Thu, 16 Oct 2025 07:01:53 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Kriish Sharma <kriish.sharma2006@gmail.com>, sumit.semwal@linaro.org,
	benjamin.gaignard@collabora.com, Brian.Starkey@arm.com,
	jstultz@google.com, tjmercier@google.com, corbet@lwn.net
Message-ID: <aPA18fxQW398WHte@archie.me>
References: <20251015183402.1649988-1-kriish.sharma2006@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251015183402.1649988-1-kriish.sharma2006@gmail.com>
X-Rspamd-Queue-Id: 839494483C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.169:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,collabora.com,arm.com,google.com,lwn.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: C6KYFZNFV2IIRLFKBGGDQCNKLS7Z7TEN
X-Message-ID-Hash: C6KYFZNFV2IIRLFKBGGDQCNKLS7Z7TEN
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] htmldocs: userspace-api/dma-buf-heaps.rst: fix block quote warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C6KYFZNFV2IIRLFKBGGDQCNKLS7Z7TEN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5396795552592414279=="


--===============5396795552592414279==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sY9Nki+MnmfjR25j"
Content-Disposition: inline


--sY9Nki+MnmfjR25j
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 15, 2025 at 06:34:02PM +0000, Kriish Sharma wrote:
> Fixes: 1fdbb3ff1233 ("Add linux-next specific files for 20251015")

The correct blamed fixes should've been:

Fixes: 507211e3c7a1 ("Documentation: dma-buf: heaps: Add naming guidelines")

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--sY9Nki+MnmfjR25j
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaPA18QAKCRD2uYlJVVFO
o1mRAQD9zW96GC/QMBetvLQDoIrsCo0iDBbnK6vSUvPUFGiJBgEArGkrI0xtSD65
ufBe3Zc3jnfHJR/WnO5dziYq1UDYjQw=
=fHXv
-----END PGP SIGNATURE-----

--sY9Nki+MnmfjR25j--

--===============5396795552592414279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5396795552592414279==--
