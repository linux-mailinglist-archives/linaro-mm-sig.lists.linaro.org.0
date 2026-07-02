Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9ydON5dvVmoN5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:19:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D547574FE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:19:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=kO4usZ5Q;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97FEF401C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:19:18 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id D7ADE40AB4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2026 12:58:37 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C126843D50;
	Thu,  2 Jul 2026 12:58:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEC311F000E9;
	Thu,  2 Jul 2026 12:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782997116;
	bh=E/1DCNOv6BvGR9MJ9FvUvqyYS0lnKrQcbwU1VR2yiNw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kO4usZ5QxTv0KTmHTZC/qASNpRJK/tbL1yjometAkq37XaVoiPj9yYNJYSMa/miOy
	 WDumAgPKPoA6O+ZAhZknNP5uy3myN2YtroWwxIDDh/D9adoYaQBir+NbjrazmpzPB/
	 G26xcrXk1KhYilWa5NJdthwc2uJy3iDeefPoHZlhdFDGTm+nZ6/SJsuST7sAsnkvJn
	 dXE7Zj7K2yahM8tyC7aM0z9NdoTfrtRX0iFx9IZ2s+glDcBGyXLo+A5UHqZ60T2grQ
	 plqvfAsOE08WmETjdkeuGfJSTD3aYifZvi/nV1eTiyVSnRKxXP1QYtapabLU1eTAKw
	 hZ6pAM4+B/9zQ==
Date: Thu, 2 Jul 2026 14:58:33 +0200
From: Thierry Reding <thierry.reding@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Message-ID: <akZde-8lFvf8rPji@orome>
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
 <20260701-tegra-vpr-v3-1-d80f7b871bb4@nvidia.com>
 <178293558945.1610040.13281502080616690110.robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <178293558945.1610040.13281502080616690110.robh@kernel.org>
X-Spamd-Bar: --------
X-MailFrom: thierry.reding@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7LIBJDTSXIUXJ4VYOVZ62SP5ACIUBSMZ
X-Message-ID-Hash: 7LIBJDTSXIUXJ4VYOVZ62SP5ACIUBSMZ
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:14:45 +0000
CC: Christian Borntraeger <borntraeger@linux.ibm.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, dri-devel@lists.freedesktop.org, David Hildenbrand <david@kernel.org>, Yury Norov <yury.norov@gmail.com>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Simona Vetter <simona@ffwll.ch>, linux-trace-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-mm@kvack.org, Russell King <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, David Airlie <airlied@gmail.com>, Vasily Gorbik <gor@linux.ibm.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, linaro-mm-sig@lists.linaro.org, Heiko Carstens <hca@linux.ibm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thierry Reding <treding@nvidia.com>, Maxime Ripard <mripard@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, John Stultz <jstultz@google.com>, Luca Ceresoli <lu
 ca.ceresoli@bootlin.com>, Vlastimil Babka <vbabka@kernel.org>, Brian Starkey <Brian.Starkey@arm.com>, Mikko Perttunen <mperttunen@nvidia.com>, Michal Hocko <mhocko@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Jonathan Hunter <jonathanh@nvidia.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, Suren Baghdasaryan <surenb@google.com>, linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org, devicetree@vger.kernel.org, "Liam R. Howlett" <liam@infradead.org>, linux-tegra@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Andrew Morton <akpm@linux-foundation.org>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Lorenzo Stoakes <ljs@kernel.org>, "T.J. Mercier" <tjmercier@google.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, iommu@lists.linux.dev, Mike Rapoport <rppt@kernel.org>, Sve
 n Schnelle <svens@linux.ibm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/11] dt-bindings: reserved-memory: Document Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7LIBJDTSXIUXJ4VYOVZ62SP5ACIUBSMZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8935498620357905676=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	DATE_IN_PAST(1.00)[292];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:borntraeger@linux.ibm.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:david@kernel.org,m:yury.norov@gmail.com,m:linux-media@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:robin.murphy@arm.com,m:simona@ffwll.ch,m:linux-trace-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:christian.koenig@amd.com,m:linux-mm@kvack.org,m:linux@armlinux.org.uk,m:will@kernel.org,m:mhiramat@kernel.org,m:airlied@gmail.com,m:gor@linux.ibm.com,m:benjamin.gaignard@collabora.com,m:linaro-mm-sig@lists.linaro.org,m:hca@linux.ibm.com,m:sumit.semwal@linaro.org,m:treding@nvidia.com,m:mripard@kernel.org,m:thierry.reding@gmail.com,m:jstultz@google.com,m:lu ca.ceresoli@bootlin.com,m:vbabka@kernel.org,m:Brian.Starkey@arm.com,m:mperttunen@nvidia.com,m:mhocko@suse.com,m:rostedt@goodmis.org,m:jonathanh@nvidia.com,m:maarten.lankhorst@linux.intel.com,m:skomatineni@nvidia.com,m:surenb@google.com,m:linux-arm-kernel@lists.infradead.org,m:linux-s390@vger.kernel.org,
 m:devicetree@vger.kernel.org,m:liam@infradead.org,m:linux-tegra@vger.kernel.org,m:catalin.marinas@arm.com,m:conor+dt@kernel.org,m:tzimmermann@suse.de,m:akpm@linux-foundation.org,m:gerald.schaefer@linux.ibm.com,m:agordeev@linux.ibm.com,m:ljs@kernel.org,m:tjmercier@google.com,m:mathieu.desnoyers@efficios.com,m:iommu@lists.linux.dev,m:rppt@kernel.org,m:svens@linux.ibm.com,m:yurynorov@gmail.com,m:krzk@kernel.org,m:thierryreding@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCPT_COUNT_GT_50(0.00)[54];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linux.ibm.com,rasmusvillemoes.dk,lists.freedesktop.org,kernel.org,gmail.com,vger.kernel.org,arm.com,ffwll.ch,amd.com,kvack.org,armlinux.org.uk,collabora.com,lists.linaro.org,linaro.org,nvidia.com,google.com,bootlin.com,suse.com,goodmis.org,linux.intel.com,lists.infradead.org,infradead.org,suse.de,linux-foundation.org,efficios.com,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,nvidia.com:email,orome:mid,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 79D547574FE


--===============8935498620357905676==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jt3c4zsxeledpb4t"
Content-Disposition: inline


--jt3c4zsxeledpb4t
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 01/11] dt-bindings: reserved-memory: Document Tegra VPR
MIME-Version: 1.0

On Wed, Jul 01, 2026 at 02:53:10PM -0500, Rob Herring (Arm) wrote:
>=20
> On Wed, 01 Jul 2026 18:08:12 +0200, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > The Video Protection Region (VPR) found on NVIDIA Tegra chips is a
> > region of memory that is protected from CPU accesses. It is used to
> > decode and play back DRM protected content.
> >=20
> > It is a standard reserved memory region that can exist in two forms:
> > static VPR where the base address and size are fixed (uses the "reg"
> > property to describe the memory) and a resizable VPR where only the
> > size is known upfront and the OS can allocate it wherever it can be
> > accomodated.
> >=20
> > Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> > Changes in v2:
> > - add examples for fixed and resizable VPR
> > ---
> >  .../nvidia,tegra-video-protection-region.yaml      | 76 ++++++++++++++=
++++++++
> >  1 file changed, 76 insertions(+)
> >=20
>=20
> My bot found errors running 'make dt_binding_check' on your patch:
>=20
> yamllint warnings/errors:
>=20
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/r=
eserved-memory/nvidia,tegra-video-protection-region.example.dtb: protected@=
2a8000000 (nvidia,tegra-video-protection-region): reg: [[2, 2818572288], [0=
, 1879048192]] is too long
> 	from schema $id: http://devicetree.org/schemas/reserved-memory/nvidia,te=
gra-video-protection-region.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/r=
eserved-memory/nvidia,tegra-video-protection-region.example.dtb: protected@=
2a8000000 (nvidia,tegra-video-protection-region): Unevaluated properties ar=
e not allowed ('no-map', 'reg' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/reserved-memory/nvidia,te=
gra-video-protection-region.yaml

Any ideas why that second error shows up? It turns out that it goes away
when the first one is fixed (which admittedly is a stupid mistake), but
I spent quite a bit of time looking for a fix before realizing that it's
only a side-effect of the first.

Thierry

--jt3c4zsxeledpb4t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmpGYHcACgkQ3SOs138+
s6FXSg/8DETX0ZuK2IIeUJbIHp/syjqHI0/Rww4Pal6HHyPG1Nmh7Mw8aUeTurgJ
joGwb1v3IfLcjn3lMb2FCqe/oBcRBhmc8WlGWIiqiFfoTtXAPo8Rg64dg0l2ndIV
u9BZrRKqkWLAjjq8uSoXf/8ub0GjtRGMSEiRqa4adYKV0VAUPUbQjEzfikHg91aU
kSrCvilTLa1KSh268wVWvSEKjraNsiSBq+IoZ3L641ddHo9unPIuXnoFTZzFam4o
xj7cgpnuBO79MYgpv5vlyz3Rz9W1twGkNdysDqEVRuh8kHJLNsaFrWhMEOeoTcMX
iCyp3WySjGD1yBTs7VM2RXj9RvBllF0DYKc142VSpEPhsy49wMcjv8Bag05Zwzys
LHSKvs1SF/dN62tw1x2kZs+Jd4+QcwlTfGDQbtf3Xtf88MP6QcXUUWXB+VMcWumA
K4mrmfHiRpBrk7IW3c+b4lGwZ6Tl72Z1c6LI07ju7x3DohTXat7hYT2+iDZI1xfA
s47ub8HQS6xthrn9/xco8ZPWOOjizZiMRSe7l/2gbvrymb1LINSe8uL0W6CFPCJ6
G37Ad7PfTI1b60hHNGhEGteQtvty4ZuUr126ehR9qrhkvpzYWRUT/ml5MeCYjsOY
hJrS/jVvbJcphwokdb+6MUfkHN1EC7gbyLCALmMVjSqAec+7Ds0=
=yG1A
-----END PGP SIGNATURE-----

--jt3c4zsxeledpb4t--

--===============8935498620357905676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8935498620357905676==--
