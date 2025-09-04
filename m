Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD1FB440AA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Sep 2025 17:31:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5B2844FBE
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Sep 2025 15:31:09 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by lists.linaro.org (Postfix) with ESMTPS id 2F85C434D9
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Sep 2025 15:31:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=iN27GiMF;
	spf=pass (lists.linaro.org: domain of thierry.reding@gmail.com designates 209.85.221.48 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3dcce361897so804638f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Sep 2025 08:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756999859; x=1757604659; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8xE4rmjGRisIQDV5Gl3u0Fv0zsZRWzQtHGzTA13lIgs=;
        b=iN27GiMFOO8mQDI1rR7A8NY3T78hbznA6exJTaAN3B15/12EFXv+71WwNe/DZ33gPF
         qSRrmm3LwOqWh5socPucw6BAUYCZgwRHeSTIV+yHkRDFXYSIQX98MFzG1WvLeLNPFfQs
         J0Qy1IKutA9qXvMGgTrm6YNXHtenXP9tcs1xxnRVIpzbe4Nsm97qEI1thddyxTMDj0Z8
         TqUCsHm9pOM4Ebf4UQk0iBO1XFy+hZorFXeOLvwx//cnm/AfH+T15wxgNZJDt4IWgBXL
         e2HmsBrm0x//txPqYzTgPK9ee+4oyBpsmnCis7+tswq7ZPWolNQlglTtP8T8eOMRwPSR
         K/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756999859; x=1757604659;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8xE4rmjGRisIQDV5Gl3u0Fv0zsZRWzQtHGzTA13lIgs=;
        b=NbCEwKArUS0fOU7LfOO4acrY3aSsjNX+AypoX8ley9gWFNiJNDdgQgdg2ZiYFHXh79
         p/+4vguFlvskPvOLdwLsd9/rzquFD41onMtTl+trLwA8UEN61eMHvORvbigaFQfG9zTM
         peh0IeMiVmJaEYqcQAp3fA4koy+NWW4M6FtS6su+g4nhlrzWsI8Eo9C7MtP3+5jG2VKK
         a2AXZ4XsMovIe2TTjs7mI2yVl2k0Yd1obibUdDJgY9HBb0bkCD6dt6syBiWXKb0dfRqA
         bTQBL1afKVD+rYXykYBlfxO2aC6c1gMM0Wmc4cUlqO4p6B4GDxJCzeEFsasC1T08TGWU
         fdKw==
X-Forwarded-Encrypted: i=1; AJvYcCWMHlN1NRr9Cawgo8WCI7RHUVV6kLs00jlK9S7HOmpAQYR5C0ogHl/ywi+yjLfaKYn+2zaZIQM6+G8Gnper@lists.linaro.org
X-Gm-Message-State: AOJu0YysFjbndZARs4RZKXro2Ky6ff37SzyJnDpfNX6NniFCUgas/zSO
	fPVXxgiXN5Wr2ORw8aA3QexErf9P4oghXfJttW1U/fokbjHFSxibcT9r
X-Gm-Gg: ASbGncuhkw4xOXxZhaFu3Qxbzar6ADi5hgHcgaPZR+wgX24b3Fg2gCwoWha3LKb8CTS
	71/2gW8vyO1sgGOz3Nr7EYIZybwlzxqUeTv/yIyK1FBw7hmp8ISfZgnXQWZ9X2GSJ6onj4rImXQ
	KKuj3QFN/W5RsqvJtadAAcrrvOnCPF5uybvrYHtqcznmUZCvTZHbY0EeJ/pGdN/BXOET1/qopS6
	9x33UbEjOr4FUVkBjCej8+1Hr8e/9F/Ki5nJ4OhoOecTSmIk2Rcw1V7QWJW6CTpkULCMD5ZNWN3
	FkmKFCb+9L8NeXxLlsoLDQs7uQVjzHu6067BqH0Gr0AG+S6nkg+mDoDaH2sU31SpxTPuQcUhhIy
	ymFEhf6i2a6fXHT/x6dtdvd98CEGc/f2ulOEIZnYQ5I5vXPG8x30EPL6sMFenFOLSJY2mGjMRTj
	PMlcPC/Vjs
X-Google-Smtp-Source: AGHT+IELB08VGh3VAq+KT32lgs3tsogmI3gmF9iQ69mvKEfdnKdejg4TzGBR9ruyPEVGthqdMWy/EA==
X-Received: by 2002:a5d:588b:0:b0:3dc:1473:18f3 with SMTP id ffacd0b85a97d-3dc14731977mr5762689f8f.41.1756999858759;
        Thu, 04 Sep 2025 08:30:58 -0700 (PDT)
Received: from orome (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a1f807f9sm27264155f8f.38.2025.09.04.08.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 08:30:57 -0700 (PDT)
Date: Thu, 4 Sep 2025 17:30:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Message-ID: <dzbefkymgrtyxfgfcdu4kq7rmgpa6khfqyhzz4a6y3qqonc4gj@yfafsqwnloia>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-7-thierry.reding@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250902154630.4032984-7-thierry.reding@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2F85C434D9
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,kernel.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.48:from];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: O7IKCZFGPLIKGY7RVXTSNNIQTKSADBEC
X-Message-ID-Hash: O7IKCZFGPLIKGY7RVXTSNNIQTKSADBEC
X-MailFrom: thierry.reding@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] arm64: tegra: Add VPR placeholder node on Tegra234
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O7IKCZFGPLIKGY7RVXTSNNIQTKSADBEC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0808919169419460067=="


--===============0808919169419460067==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4xtz2xrto4fsphdg"
Content-Disposition: inline


--4xtz2xrto4fsphdg
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 6/9] arm64: tegra: Add VPR placeholder node on Tegra234
MIME-Version: 1.0

On Tue, Sep 02, 2025 at 05:46:26PM +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> This node contains two sets of properties, one for the case where the
> VPR is resizable (in which case the VPR region will be dynamically
> allocated at boot time) and another case where the VPR is fixed in size
> and initialized by early firmware.
>=20
> The firmware running on the device is responsible for updating the node
> with the real physical address for the fixed VPR case and remove the
> properties needed only for resizable VPR. Similarly, if the VPR is
> resizable, the firmware should remove the "reg" property since it is no
> longer needed.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra234.dtsi | 34 ++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra234.dtsi
> index df034dbb8285..4d572f5fa0b1 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> @@ -28,6 +28,40 @@ aliases {
>  		i2c8 =3D &dp_aux_ch3_i2c;
>  	};
> =20
> +	reserved-memory {
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges;
> +
> +		vpr: video-protection-region@0 {
> +			compatible =3D "nvidia,tegra-video-protection-region";
> +			status =3D "disabled";
> +			no-map;
> +
> +			/*
> +			 * Two variants exist for this. For fixed VPR, the
> +			 * firmware is supposed to update the "reg" property
> +			 * with the fixed memory region configured as VPR.
> +			 *
> +			 * For resizable VPR we don't care about the exact
> +			 * address and instead want a reserved region to be
> +			 * allocated with a certain size and alignment at
> +			 * boot time.
> +			 *
> +			 * The firmware is responsible for removing the
> +			 * unused set of properties.
> +			 */
> +
> +			/* fixed VPR */
> +			reg =3D <0x0 0x0 0x0 0x0>;
> +
> +			/* resizable VPR */
> +			size =3D <0x0 0x70000000>;
> +			alignment =3D <0x0 0x100000>;
> +			reusable;
> +		};
> +	};

Hi DT maintainers,

I wanted to get some feedback on this type of placeholder DT node. This
doesn't actually validate properly because it contains properties for
both the fixed and resizable VPR variants, which are mutually exclusive.
However, the way that this currently works is that UEFI will remove and
update whatever properties need to change during boot, so the booted
kernel ends up with the correct, non-conflicting information.

The reason why it was done this way is because it simplifies the code in
UEFI to update this node. Also, without this being a placeholder I don't
know what to put into this. There's no "default" for this. One option is
to not have this in the DT at all and completely create it at boot time,
but then it becomes quite difficult to create the phandle references.

While at it, I'm not sure if I properly understand how to correctly name
a reserved-memory region that is dynamically allocated like in the case
of resizable VPR? It doesn't have a base address during boot and the
kernel will allocate memory where it sees fit. Do I just leave out the
unit-address in that case?

Thanks,
Thierry

--4xtz2xrto4fsphdg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmi5sKwACgkQ3SOs138+
s6EL1w/+O3vMzwflDNuAsOeJT5PO30EnSdPQtwSfs1kegW1Z0O7O+SxPDRbIOumH
ZtXCWjmHUA0x4A4tV1KHYusXEpLe8kdgMeaFYK3XECONFcW/xto7lbOk9ujNo4B0
RSBU+KmbKVeHe3JQ8ENftNYUpQqLHdBEi/FZVlgjZW8KLe+MuWHnvoZsutLTvLim
edJeSpS/ms98AYPqE+MACLkqG92b1y0jgGhsa3dymQhX6RYbJxLTzO3SCG9WKpFL
OkfgV5XwyRYgsBQDIkJnBu4+CtPOO2mJeUQGuHgvSlfv8Ulz6jYKIcPQj5hhJ8KZ
qtqV5vMoRauXf76f97vKenJ86SPlWymUWCj5/K88mqtDm9EUoTtMT0LfGhCsIfIX
TNBYgIz79w16UvFuZ/CmD2MEUPi00WpA5b2UyifcHKKnORwL08lBhLD0r5UWMf/H
qUqNt0qtK2EuPjOeUMwB8YN5VPZCP4oWEWoSVCF3cbjUitjx2ogJRMgeazsAZdmP
x1+CSVvTpQ1RqXIn3ezRgBkPLQ2d1KJIJdv+pdQn1zcFTuqd0nP5yFS52TiWsJ8/
cczmrWcs3r30Aoaw3e0rW3OQHghuXLaavcm6FmLVFGs4VDlpRbFnESuLbynzAbAk
7VfAJwgPBaLVqs2UqkC5ezADL7wV+VxmrcPUry4JBO+17jVwwBk=
=p0GH
-----END PGP SIGNATURE-----

--4xtz2xrto4fsphdg--

--===============0808919169419460067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0808919169419460067==--
