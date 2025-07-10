Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1531B00659
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 17:21:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D802F44ADD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Jul 2025 15:21:16 +0000 (UTC)
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com [209.85.219.68])
	by lists.linaro.org (Postfix) with ESMTPS id 6B35943C33
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Jul 2025 15:21:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=l+OT7IZw;
	spf=pass (lists.linaro.org: domain of nicolas@ndufresne.ca designates 209.85.219.68 as permitted sender) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=pass (policy=none) header.from=ndufresne.ca
Received: by mail-qv1-f68.google.com with SMTP id 6a1803df08f44-7048d8fec46so16872456d6.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Jul 2025 08:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1752160865; x=1752765665; darn=lists.linaro.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xKpf3SbAmWkt5VJofJn48qdY/118qeqD5HjzAhisH5k=;
        b=l+OT7IZwhEZ7UjzTPtY8Py6Pf6+Y11kbvPQGpbdxirol1p9JmVQMbIozApDXXKH79x
         6UtuG3Ju+TkCWJAIoSkqJr+vicPh6NYc19+U8BQF3yMiS0ZhUYXr7ejPSby2IXrtTKsU
         HE4eZtrlmlQHQyGdQ7VZoXfNxTkpDFvtGRdRyKs3F4ZnxdH9grKa85OU8HZVxKGywuHp
         2Qd55AnnpCOdIW+RgNLmumJArFRkQu5EaHXxiuX2Whg9U2Y9/EmhgOVfhWW9DxQpclb+
         QD1/dQK0bvAZsELnF2vV0gRjng/LcdwC3N8VqnxrYVxuSzkggeFPyL2QAuj8beSfJPzD
         qVqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752160865; x=1752765665;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xKpf3SbAmWkt5VJofJn48qdY/118qeqD5HjzAhisH5k=;
        b=K1IejBn8tckpJOSqJxXGNVKj1e4jHZMfeYxjsm37y7Dkn5mDQnCrYnfyIxvwTrx3PB
         jeRW9e7ezPFgScnq0pAiU+Pp9+a4XZZHZjVjrwD0ew7kmyg5r/7FGaSpkzZnx44aeqGo
         lV0N9hR+sDDsaiPyneo9ZZV1X9ov9SOQhCeKun1ZsKuyQaVYLEhWUWL65Bigs8qowLj2
         akwkTvfC4bPXtYTLHMejBSnxxI9J254tcn+EhGw12TJYfpeqb/EwkA1qdJFgGhNVKnfP
         57+j8X5CpaDnDXm5ZNjDleJAOsocsEvSLgyp0JxHJXbgvmbGrRmrtykofEHK/MLNa3vH
         2oNQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8Ag1XNQ+fRKrM2kwxxzlWTlYNHwvFJr/4pH0ZtQ/dZ+YuCpQpxK0acaH/JarJgOJHJ1gShoeq5potuIbP@lists.linaro.org
X-Gm-Message-State: AOJu0YwO8ZQmaPcukzqqxcEuXe+kmgsbaVXHwcUGvszKnLD88KFwENO9
	GKpTmpMeHLf4f6mIN18c5PueVODiMDyxd61InEor8b6bgUyTXEoj5CH/d2II55PnIL8=
X-Gm-Gg: ASbGnctTPLLfRPG4094JTSBjugWfgDOD22MlhWqx5KkISetzXHpv/eSdPlVCi2pdQP6
	P272zhUigui3o7iHaV3Jlyezu+k83bpL7R7a/Gm4OHsOSN0Bs+/jwW9dnW+Z1kJSCUZ3um+MesB
	ZBSVfz72dOZnFg7q4pGqGbnlRTDZA/j7oLWCX4U6c+IAboveicYyGVE3x+tNcOdobj/ROFZhFpV
	POdpu5E2irsqw8u/j55Jymib+EfACyOPYY15rIp87V/t9TJwlbQQ6czddEf3C8mpvWSG9ZuAUqE
	qTPqEbmevgWi8qsEOjOmE3PqfqVSFMDOd/LHTAnkF3eSZYuFJuUHTgqPEaNTgmu7UFk=
X-Google-Smtp-Source: AGHT+IH0uA7EbnPkACvyJEVJCpbYJKsf0sky4Js9sJlbaC40zioZfAIyIXsCJGWIghdll3hzxEsL/w==
X-Received: by 2002:a05:6214:4e14:b0:6fa:a5c9:2ee7 with SMTP id 6a1803df08f44-70495a1fe12mr51088666d6.8.1752160864846;
        Thu, 10 Jul 2025 08:21:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b699::5ac? ([2606:6d00:17:b699::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7049799e407sm9536186d6.23.2025.07.10.08.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 08:21:04 -0700 (PDT)
Message-ID: <78c981eb7fafe864bea60c662ba5b474fbd44669.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Ripard <mripard@kernel.org>
Date: Thu, 10 Jul 2025 11:21:02 -0400
In-Reply-To: <20250709-spotted-ancient-oriole-c8bcd1@houat>
References: <20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org>
	 <49e3fa834aadb37452112bb704a1a1593c1fd0b8.camel@ndufresne.ca>
	 <20250709-spotted-ancient-oriole-c8bcd1@houat>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0MU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT6ImQQTFg
 oAQQIbAwULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgBYhBO8NUoEVxMPCGgRvEtlBlFEpYHL0BQJ
 oLLLGBQkJZfd1AAoJENlBlFEpYHL0BEkA/3qkWYt99myYFSmTJUF8UB/7OroEm3vr1HRqXeQe9Qp2
 AP0bsoAe6KjEPa/pJfuJ2khrOPPHxvyt/PBNbI5BYcIABLQnTmljb2xhcyBEdWZyZXNuZSA8bmljb
 2xhc0BuZHVmcmVzbmUuY2E+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQ
 TvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyy+AUJCWX3dQAKCRDZQZRRKWBy9FJ5AQCNy8SX8DpHbLa
 cy58vgDwyIpB89mok9eWGGejY9mqpRwEAhHzs+/n5xlVlM3bqy1yHnAzJqVwqBE1D0jG0a9V6VQI=
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6B35943C33
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.58 / 15.00];
	BAYES_HAM(-2.98)[99.90%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ndufresne.ca,none];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.68:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: YJKIRDDJCK6IWN3X74XI2IUPQIUZWWJV
X-Message-ID-Hash: YJKIRDDJCK6IWN3X74XI2IUPQIUZWWJV
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 0/2] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YJKIRDDJCK6IWN3X74XI2IUPQIUZWWJV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4062330255867858697=="


--===============4062330255867858697==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-0srW01EuwsYGDYpmIBS/"


--=-0srW01EuwsYGDYpmIBS/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 09 juillet 2025 =C3=A0 15:38 +0200, Maxime Ripard a =C3=A9crit=
=C2=A0:
> > Will there be a generic way to find out which driver/device this carveo=
ut
> > belongs to ? In V4L2, only complex cameras have userspace drivers,
> > everything
> > else is generic code.
>=20
> I believe it's a separate discussion, but the current stance is that the
> heap name is enough to identify in a platform-specific way where you
> allocate from. I've worked on documenting what a good name is so
> userspace can pick it up more easily here:
>=20
> https://lore.kernel.org/r/20250616-dma-buf-heap-names-doc-v2-1-8ae43174cd=
bf@kernel.org
>=20
> But it's not really what you expected

=46rom a dma-heap API, the naming rules seems necessary, but suggesting gener=
ic
code to use "grep" style of search to match a heap is extremely fragile. Th=
e
documentation you propose is (intentionally?) vague. For me, the naming is =
more
like giving proper names to your function calls do devs can make sense out =
of
it.

Stepping back a little, we already opened the door for in-driver use of hea=
ps.
So perhaps the way forward is to have V4L2 drivers utilize heaps from insid=
e the
kernel. Once driver are fully ported, additional APIs could be added so tha=
t
userspace can read which heap(s) is going to be used for the active
configuration, and which other heaps are known usable (enumerate them). The=
re is
no need to add properties in that context, since these will derives from th=
e
driver configuration you picked. If you told you driver you doing secure me=
mory
playback, the driver will filter-out what can't be used.

Examples out there often express simplified view of the problem. Your ECC v=
ideo
playback case is a good one. Let's say you have performance issue in both
decoder and display due to ECC. You may think that you just allocate from a=
 non-
ECC heap, import these into the decoder, and once filled, import these into=
 the
display driver and you won.

But in reality, your display buffer might not be the reference buffers, and=
 most
of the memory bandwidth in a modern decoder goes into reading reference fra=
mes
and the attached metadata (the later which may or may not be in the same
allocation block).

Even once the reference frames get exposed to userspace (which is a long te=
rm
goal), there will still be couple of buffers that just simply don't fit and=
 must
be kept hidden inside the driver.

My general conclusion is that once these heap exists, and that we guarantee
platform specific unique names, we should probably build on top. Both users=
pace
and driver become consumers of the heap. And for the case where the platfor=
m-
specific knowledge lives inside the kernel, then heaps are selected by the
kernel. Also, very little per-driver duplication will be needed, since 90% =
of
the V4L2 driver share the allocator implementation.

Does that makes any sense to anyone ?

Nicolas


--=-0srW01EuwsYGDYpmIBS/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaG/aXgAKCRDZQZRRKWBy
9DlHAP9fTMIloahiN5XMBZnBB4aGkZUXdygAalNGlj6RFJZc3AD/RAhlPPmyBaVt
ZDKBRjZVW40OnGDxhAYZePpjsIkSPw4=
=uaX4
-----END PGP SIGNATURE-----

--=-0srW01EuwsYGDYpmIBS/--

--===============4062330255867858697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4062330255867858697==--
