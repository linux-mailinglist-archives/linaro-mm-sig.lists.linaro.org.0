Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MagFA1eoWmksQQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 10:04:13 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D69041B4E48
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 10:04:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA13E3F6F0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 09:04:11 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 049993F6F0
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 09:04:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=bV3DNDdY;
	spf=pass (lists.linaro.org: domain of conor@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=conor@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5CDE74451F;
	Fri, 27 Feb 2026 09:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE6E0C116C6;
	Fri, 27 Feb 2026 09:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772183048;
	bh=ULqmscrmRYbb7GaDQ1iw2PdzZRP98XQa3VtXm4mRQjU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bV3DNDdY9xhWKrvNO/Wuy+ina1DeOPshRfqwbuTvmPjwRx4yGWjfQVOgUGjL9uVMz
	 jn9nl5F9K8IhoNQLMCgFUH+GwmMQjIB5QuGp7Bt2NGg+KO+KkooOYyQUKMC14i5Hbn
	 U+rwxMtwtNNVF6xJ8KqiYPYB8xqqE5zPgytc64riiVotu95z9lGEZbQtVqXrVuOewd
	 XNCpS2TWddFXJVBwHUJe+rl3evQjIJlQSeutsmpSHggaEe8uGS62b8/FNSMNSKTmTH
	 lmoxE/xzS2yUe7U3f8TvMsax/mz/zTfFJ6W0NylHRtRMeUr05tjwISn8pY1SmERF+f
	 D83rEBW+zmhKA==
Date: Fri, 27 Feb 2026 09:04:01 +0000
From: Conor Dooley <conor@kernel.org>
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Message-ID: <20260227-shakable-mummified-ba7bb54e0e05@spud>
References: <20260226-neutron-v1-0-46eccb3bb50a@nxp.com>
 <20260226-neutron-v1-3-46eccb3bb50a@nxp.com>
 <20260226-unthread-reformat-92b855c4acf9@spud>
 <16172163-8aef-4d94-be62-70e159aae182@oss.nxp.com>
MIME-Version: 1.0
In-Reply-To: <16172163-8aef-4d94-be62-70e159aae182@oss.nxp.com>
X-Spamd-Bar: -----
Message-ID-Hash: UWHCDBKIT7A7UUZNXMQ3F3P4AADOCL2S
X-Message-ID-Hash: UWHCDBKIT7A7UUZNXMQ3F3P4AADOCL2S
X-MailFrom: conor@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Taran <alexandru.taran@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dt-bindings: npu: Add bindings for NXP Neutron
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UWHCDBKIT7A7UUZNXMQ3F3P4AADOCL2S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4049201384440144255=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.870];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: D69041B4E48
X-Rspamd-Action: no action


--===============4049201384440144255==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HGUIQTmEq3BO0PCt"
Content-Disposition: inline


--HGUIQTmEq3BO0PCt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 27, 2026 at 08:45:29AM +0200, Daniel Baluta wrote:
> On 2/26/26 20:20, Conor Dooley wrote:
> [..]
> >> +  - |
> >> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> >> +    #include <dt-bindings/interrupt-controller/irq.h>
> >> +
> >> +    bus {
> >> +      #address-cells =3D <2>;
> >> +      #size-cells =3D <2>;
> >> +
> >> +      neutron@4ab00000 {
> > "neutron" is not a generic node name. This should be something like
> > "accelerator" or similar.
> >
> The only dts nodes I could find using accel subsystem are from rockhip. A=
nd they use npu@
>=20
> e.g:
>=20
> =BB=A0 =A0 =A0 =A0rknn_core_0: npu@fdab0000 {
> =BB=A0 =A0 =A0 =A0=BB=A0 =A0 =A0 =A0compatible =3D "rockchip,rk3588-rknn-=
core";
>=20
> Also, Ethos-U64 introduced by Rob with [1] is using npu@.
>=20
> So, I think we should go wit that. I haven't seen any document to standar=
dize the naming.

accelerator, npu, makes no difference to me, so sure.

--HGUIQTmEq3BO0PCt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaFeAQAKCRB4tDGHoIJi
0jXWAQDkJ0uqFe0zBBD97N8Nc9W1uspEgrsZpTqEwgxIVIlnKwD/SKBKuEJxP5os
9i6n1nocp64AivMzqCek95MinbTDIgQ=
=lAaA
-----END PGP SIGNATURE-----

--HGUIQTmEq3BO0PCt--

--===============4049201384440144255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4049201384440144255==--
