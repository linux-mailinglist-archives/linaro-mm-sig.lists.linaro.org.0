Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C6384AFE9B5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 15:10:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B235C454DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 13:10:18 +0000 (UTC)
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com [209.85.219.66])
	by lists.linaro.org (Postfix) with ESMTPS id B5B7C43BFB
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jul 2025 13:10:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=RGohTZ4d;
	spf=pass (lists.linaro.org: domain of nicolas@ndufresne.ca designates 209.85.219.66 as permitted sender) smtp.mailfrom=nicolas@ndufresne.ca;
	dmarc=pass (policy=none) header.from=ndufresne.ca
Received: by mail-qv1-f66.google.com with SMTP id 6a1803df08f44-6f8aa9e6ffdso53744556d6.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Jul 2025 06:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1752066605; x=1752671405; darn=lists.linaro.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZAGKhcIUqrN7+rHf/oU7IFgaAgelruhHD2QUrT9iidM=;
        b=RGohTZ4dp3N8IW/vdHqjQJqu6PUX9Bgnj5SGAnnuQlxNooeyeXkdUW7Wr9QxqdPIK4
         gs09+/zkc87+orwFIecoTpV1kLhdTiPxJqNdSSw/PKDdxKQOSBEmYOAg5e7gh7TuI83L
         uUz5rCFP6WBbaNUzQ8CLzbt8a7M/AhxGLKHvHQPYS1lSWd8rxqXmdIpdrq7bVIZamxgC
         nYZk6iCB64FdKqug/YVU0LX34oDvmScN3t/WJrDNYEAQz7CEp9m7r307anbIi49+kHK1
         3uen4lK1G/CbNlINUWUMdJzEpjxCU0Il9/uOhDxBatjkGmFBhWk7vkjsunH4pmLz9KwG
         QIjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752066605; x=1752671405;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZAGKhcIUqrN7+rHf/oU7IFgaAgelruhHD2QUrT9iidM=;
        b=NYhQoPi5zIOok1galpHhszP5kl5vdMD+1C18hsv9gril51D1fLh6QHPHqYzf6MTqep
         OplhH28xjHdaatpD9xFlBpvP1FVS9qhOTBGwJIQmJfTGb3a0jMw/b4mq3a1B76pJOZoI
         PrWOwprJQw6ymitsZCXJnGRUbEdStEKNmbu9Lza6gvjgMK88SnMp3sLHrb1JOpbD/nbt
         UC+cK140/HDmDXurA+NsZY8NUW4qwydTcssUY5EVUaot3VxEZ2MUT/7TEiyYHSVxUrcI
         9QYTjZYUrEngi/npWrP88e7YpcGLCVvsKAXEIKMFq1nwLP6VELHbQ8Wz1SgLs+hv9Qed
         fM1w==
X-Forwarded-Encrypted: i=1; AJvYcCUdnREBWYo8qXqFyC+FmH+Ktfn9B7wFP/e8zf+cn/DBYCHpdph4IkVmEnqudEbRlAOkRt6P4wulIuG0qTxo@lists.linaro.org
X-Gm-Message-State: AOJu0Yzb/oPXwbruT6wvaa+mmoO9d/TQxYIitYgXt0h1Vs2JzNSUGuJk
	TEzUxTY5nfjxZEIwXJ7T5KmpvIFZjFvPOXvyZZQUnrc1Qv3NLB1W/pn+PspIKlUtUEs=
X-Gm-Gg: ASbGncs6eslhevPFXQSc1c2RNGr8g/sAlUmj9HZSOqPtJwfLPVvfKDhW1gwyCxXnvbx
	rk/rO2k46i16DIH8lwsE2/j3JDrjE6uZQps9faDR21Aedux4DsbtQFUAvvQQh48HGXvcQx/r2Ec
	bBXQ8kP/RVM2v5JMlrAfHoNO5NeR+rErmL2242BEVR1fEEZEXPQQb/z6RxORp26pwIsDP/IG1qP
	JV9rTZm0YEp67H6S8+W1ZFml8Glc4WdMrF3mWUKd5q6N5ZF3K7i5csOOX5eytlySogepZgg+Ahj
	+ZivbkfTP3kwzIbbq/qqSOuOmC4BBNeb81PlTE8cCZVPV9XzQD+J0tUh9FSnvWPpYys=
X-Google-Smtp-Source: AGHT+IGIuCHqZKNodo56olakSu8x5uw0f2xLhJJZfSNQfbpUkgQ6IrbD1NkWCR45DMziT4jJFNtuYg==
X-Received: by 2002:a05:6214:590a:b0:702:d9d7:b6e2 with SMTP id 6a1803df08f44-7048b9b4b63mr37884916d6.34.1752066604935;
        Wed, 09 Jul 2025 06:10:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b699::5ac? ([2606:6d00:17:b699::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-702c4ccd601sm91309236d6.27.2025.07.09.06.10.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 06:10:04 -0700 (PDT)
Message-ID: <49e3fa834aadb37452112bb704a1a1593c1fd0b8.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Saravana Kannan <saravanak@google.com>, Sumit Semwal
 <sumit.semwal@linaro.org>, Benjamin Gaignard	
 <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
 John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?=	 <christian.koenig@amd.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek
 Szyprowski <m.szyprowski@samsung.com>, Robin Murphy	 <robin.murphy@arm.com>
Date: Wed, 09 Jul 2025 09:10:02 -0400
In-Reply-To: <20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org>
References: <20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org>
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
X-Rspamd-Queue-Id: B5B7C43BFB
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ndufresne.ca,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.66:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[2606:6d00:17:b699::5ac:received];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.219.66:from]
X-Rspamd-Action: no action
Message-ID-Hash: IBIPHFHR67IYHQT6L2X3FJ3WYYJLC55B
X-Message-ID-Hash: IBIPHFHR67IYHQT6L2X3FJ3WYYJLC55B
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Davis <afd@ti.com>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 0/2] dma-buf: heaps: Create a CMA heap for each CMA reserved region
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IBIPHFHR67IYHQT6L2X3FJ3WYYJLC55B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6774303869674980938=="


--===============6774303869674980938==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-FlPJGplGJlZTiMNIPwxV"


--=-FlPJGplGJlZTiMNIPwxV
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime,

Le mercredi 09 juillet 2025 =C3=A0 14:44 +0200, Maxime Ripard a =C3=A9crit=
=C2=A0:
> Hi,
>=20
> Here's another attempt at supporting user-space allocations from a
> specific carved-out reserved memory region.
>=20
> The initial problem we were discussing was that I'm currently working on
> a platform which has a memory layout with ECC enabled. However, enabling
> the ECC has a number of drawbacks on that platform: lower performance,
> increased memory usage, etc. So for things like framebuffers, the
> trade-off isn't great and thus there's a memory region with ECC disabled
> to allocate from for such use cases.
>=20
> After a suggestion from John, I chose to first start using heap
> allocations flags to allow for userspace to ask for a particular ECC
> setup. This is then backed by a new heap type that runs from reserved
> memory chunks flagged as such, and the existing DT properties to specify
> the ECC properties.
>=20
> After further discussion, it was considered that flags were not the
> right solution, and relying on the names of the heaps would be enough to
> let userspace know the kind of buffer it deals with.
>=20
> Thus, even though the uAPI part of it had been dropped in this second
> version, we still needed a driver to create heaps out of carved-out memor=
y
> regions. In addition to the original usecase, a similar driver can be
> found in BSPs from most vendors, so I believe it would be a useful
> addition to the kernel.
>=20
> Some extra discussion with Rob Herring [1] came to the conclusion that
> some specific compatible for this is not great either, and as such an
> new driver probably isn't called for either.
>=20
> Some other discussions we had with John [2] also dropped some hints that
> multiple CMA heaps might be a good idea, and some vendors seem to do
> that too.
>=20
> So here's another attempt that doesn't affect the device tree at all and
> will just create a heap for every CMA reserved memory region.

Does that means that if we carve-out memory for a co-processor operating sy=
stem,
that memory region is now available to userspace to allocate from ? Or is t=
here
a nuance to that ?

For other carveout, such as RK3588 HDMI receiver, that is clearly a win, gi=
ving
user the ability to allocate using externally supplied constraints rather t=
hen
having to convince the v4l2 driver to match these. While keeping the safety=
 that
this carveout will yield valid addresses for the IP.

Will there be a generic way to find out which driver/device this carveout
belongs to ? In V4L2, only complex cameras have userspace drivers, everythi=
ng
else is generic code.

Nicolas

>=20
> It also falls nicely into the current plan we have to support cgroups in
> DRM/KMS and v4l2, which is an additional benefit.
>=20
> Let me know what you think,
> Maxime
>=20
> 1: https://lore.kernel.org/all/20250707-cobalt-dingo-of-serenity-dbf92c@h=
ouat/
> 2:
> https://lore.kernel.org/all/CANDhNCroe6ZBtN_o=3Dc71kzFFaWK-fF5rCdnr9P5h1s=
gPOWSGSw@mail.gmail.com/
>=20
> Let me know what you think,
> Maxime
>=20
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
> Changes in v6:
> - Drop the new driver and allocate a CMA heap for each region now
> - Dropped the binding
> - Rebased on 6.16-rc5
> - Link to v5:
> https://lore.kernel.org/r/20250617-dma-buf-ecc-heap-v5-0-0abdc5863a4f@ker=
nel.org
>=20
> Changes in v5:
> - Rebased on 6.16-rc2
> - Switch from property to dedicated binding
> - Link to v4:
> https://lore.kernel.org/r/20250520-dma-buf-ecc-heap-v4-1-bd2e1f1bb42c@ker=
nel.org
>=20
> Changes in v4:
> - Rebased on 6.15-rc7
> - Map buffers only when map is actually called, not at allocation time
> - Deal with restricted-dma-pool and shared-dma-pool
> - Reword Kconfig options
> - Properly report dma_map_sgtable failures
> - Link to v3:
> https://lore.kernel.org/r/20250407-dma-buf-ecc-heap-v3-0-97cdd36a5f29@ker=
nel.org
>=20
> Changes in v3:
> - Reworked global variable patch
> - Link to v2:
> https://lore.kernel.org/r/20250401-dma-buf-ecc-heap-v2-0-043fd006a1af@ker=
nel.org
>=20
> Changes in v2:
> - Add vmap/vunmap operations
> - Drop ECC flags uapi
> - Rebase on top of 6.14
> - Link to v1:
> https://lore.kernel.org/r/20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@ker=
nel.org
>=20
> ---
> Maxime Ripard (2):
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dma/contiguous: Add helper to test reserve=
d memory type
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dma-buf: heaps: cma: Create CMA heap for e=
ach CMA reserved region
>=20
> =C2=A0drivers/dma-buf/heaps/cma_heap.c | 52
> +++++++++++++++++++++++++++++++++++++++-
> =C2=A0include/linux/dma-map-ops.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 13 ++++=
++++++
> =C2=A0kernel/dma/contiguous.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 7 ++++++
> =C2=A03 files changed, 71 insertions(+), 1 deletion(-)
> ---
> base-commit: 47633099a672fc7bfe604ef454e4f116e2c954b1
> change-id: 20240515-dma-buf-ecc-heap-28a311d2c94e
> prerequisite-message-id: <20250610131231.1724627-1-jkangas@redhat.com>
> prerequisite-patch-id: bc44be5968feb187f2bc1b8074af7209462b18e7
> prerequisite-patch-id: f02a91b723e5ec01fbfedf3c3905218b43d432da
> prerequisite-patch-id: e944d0a3e22f2cdf4d3b3906e5603af934696deb
>=20
> Best regards,

--=-FlPJGplGJlZTiMNIPwxV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaG5qKgAKCRDZQZRRKWBy
9I45AQCBj0TCMQPihz2UiP5Ogn12VhminFtzBanzF6NqFNH8KAEA5amWJFCjCvXh
CZHsD/GwiUBvhWKPUZTCeUOA8R12UAY=
=ljqG
-----END PGP SIGNATURE-----

--=-FlPJGplGJlZTiMNIPwxV--

--===============6774303869674980938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6774303869674980938==--
