Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFD0A22DC4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 14:29:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F6873F5DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jan 2025 13:29:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 3727E3F4B3
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jan 2025 13:29:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WECUUaVM;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C70B35C03F5;
	Thu, 30 Jan 2025 13:28:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2243C4CEE0;
	Thu, 30 Jan 2025 13:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738243742;
	bh=SzL+0ECLZhbMXBiNpxvhWK0pVhnz1sd91qYL9DClqgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WECUUaVMInqFHMFwEGhbamsuAJkqp8L1NgIs5r8eaLytvmVkM94f3iOFQ0V8wiZah
	 s6MTIhHnm1Ws1dq3R4zMdLL/5JuLl/vi90+PsRsK7dHwtj9aRxOOC5WYoDGBIJrJLu
	 4pUKyhI7WFCKj0kjsyDtb7XV1ctGhun4+H1ciLLpRQh8VnagZbY1ezED7b8a9WOJuX
	 jRF77ATie3d4fYpEckR58GXo2APy/MesYmtoYDr+yONY4qqo1DEbmfKnS5GOIjXOdd
	 00zp0ifUehqpMff0Y3vdGvcBnRsdUDJ2XUYN3Wv5+hTGMa7zz3GSC1z1a7YIy6wFrN
	 XJhSoqRZISXYA==
Date: Thu, 30 Jan 2025 14:28:59 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Florent Tomasin <florent.tomasin@arm.com>
Message-ID: <ats2unrml5a7vbpdrqrzowodrsfj44bnubpbujg2igk3imeklx@nrpmg5oeq3gz>
References: <cover.1738228114.git.florent.tomasin@arm.com>
 <771534be8dfa2a3bdc3876502752f518224b9298.1738228114.git.florent.tomasin@arm.com>
MIME-Version: 1.0
In-Reply-To: <771534be8dfa2a3bdc3876502752f518224b9298.1738228114.git.florent.tomasin@arm.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3727E3F4B3
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[31];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,google.com,amd.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: KGE2CE6Y5NTLGWZ5JO4LEFF7AEMQUEPJ
X-Message-ID-Hash: KGE2CE6Y5NTLGWZ5JO4LEFF7AEMQUEPJ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-arm-ker
 nel@lists.infradead.org, linux-mediatek@lists.infradead.org, nd@arm.com, Akash Goel <akash.goel@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 1/5] dt-bindings: dma: Add CMA Heap bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KGE2CE6Y5NTLGWZ5JO4LEFF7AEMQUEPJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8188225326874965123=="


--===============8188225326874965123==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="bmhdmohxtvk6vpli"
Content-Disposition: inline


--bmhdmohxtvk6vpli
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH 1/5] dt-bindings: dma: Add CMA Heap bindings
MIME-Version: 1.0

Hi,

On Thu, Jan 30, 2025 at 01:08:57PM +0000, Florent Tomasin wrote:
> Introduce a CMA Heap dt-binding allowing custom
> CMA heap registrations.
>=20
> * Note to the reviewers:
> The patch was used for the development of the protected mode
> feature in Panthor CSF kernel driver and is not initially thought
> to land in the Linux kernel. It is mostly relevant if someone
> wants to reproduce the environment of testing. Please, raise
> interest if you think the patch has value in the Linux kernel.
>=20
> Signed-off-by: Florent Tomasin <florent.tomasin@arm.com>
> ---
>  .../devicetree/bindings/dma/linux,cma.yml     | 43 +++++++++++++++++++
>  1 file changed, 43 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/linux,cma.yml
>=20
> diff --git a/Documentation/devicetree/bindings/dma/linux,cma.yml b/Docume=
ntation/devicetree/bindings/dma/linux,cma.yml
> new file mode 100644
> index 000000000000..c532e016bbe5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/linux,cma.yml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/linux-cma.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Custom Linux CMA heap
> +
> +description:
> +  The custom Linux CMA heap device tree node allows registering
> +  of multiple CMA heaps.
> +
> +  The CMA heap name will match the node name of the "memory-region".
> +
> +properties:
> +  compatible:
> +    enum:
> +      - linux,cma
> +
> +  memory-region:
> +    maxItems: 1
> +    description: |
> +      Phandle to the reserved memory node associated with the CMA Heap.
> +      The reserved memory node must follow this binding convention:
> +       - Documentation/devicetree/bindings/reserved-memory/reserved-memo=
ry.txt
> +
> +examples:
> +  - |
> +    reserved-memory {
> +      #address-cells =3D <2>;
> +      #size-cells =3D <2>;
> +
> +      custom_cma_heap: custom-cma-heap {
> +        compatible =3D "shared-dma-pool";
> +        reg =3D <0x0 0x90600000 0x0 0x1000000>;
> +        reusable;
> +      };
> +    };
> +
> +    device_cma_heap: device-cma-heap {
> +      compatible =3D "linux,cma";
> +      memory-region =3D <&custom_cma_heap>;
> +    };

Isn't it redundant with the linux,cma-default shared-dma-pool property
already?

Maxime

--bmhdmohxtvk6vpli
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ5t+lgAKCRAnX84Zoj2+
donhAX9x/cTFDmyFuCnkSVtxn7cvuf3F9KhUXKz36q10FjqdD7EC8VQn3wUym/Z7
8wtTJXcBfiiGdCFDdeUNdXAechjJXITJhWsytboK18cCIe6R1dyzOx/J+Wvt4WIW
SACe2NmJ9Q==
=VxzG
-----END PGP SIGNATURE-----

--bmhdmohxtvk6vpli--

--===============8188225326874965123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8188225326874965123==--
