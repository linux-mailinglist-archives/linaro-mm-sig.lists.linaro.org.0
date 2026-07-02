Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ge+JAa5vVmoV5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:19:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B660875751F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:19:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=nFPIDQwI;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9D4A409AC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:19:40 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 8438640AB4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2026 13:47:45 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0976240169;
	Thu,  2 Jul 2026 13:47:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7AFA1F00A3A;
	Thu,  2 Jul 2026 13:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783000064;
	bh=7+4RPXWq0sLT4EC9giNUS42X6L6ymGhyY95vN1pSoHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nFPIDQwIPH19qZY0KdZIF0OqTnY30f1TYEmARp3ZaCpQ9jfD6iYoKRcGHpf9dmS3/
	 edR8ZSu+zdQq6Dvcq1lBcJSgfVriFf5auqL7ebJU8tffvnfbRBm3ZYwUjfjtALVCty
	 ZLYuAobaRM1h6UGAdDFcGBrwV1nvHMKNR5Esk1crHtrt2z4UITnu0PYV999TKPCSuo
	 SCtNHCIYFGCzJq2b2NJCfti4LL5z+GI/0+IqYFp4TEynUdL5YfVhonCcxefDmm5klY
	 h6hiQYiHPqP0wJNLOE6DwgkIExj1ta6AG4wkPKVu3yLjBWlTIPxaQj+ws+QBGcKsbV
	 nLvgFGreL0ACQ==
Date: Thu, 2 Jul 2026 15:47:41 +0200
From: Thierry Reding <thierry.reding@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Message-ID: <akZr1mzrkyidju53@orome>
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
 <20260701-tegra-vpr-v3-2-d80f7b871bb4@nvidia.com>
 <178293559078.1610192.17087150631381044391.robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <178293559078.1610192.17087150631381044391.robh@kernel.org>
X-Spamd-Bar: --------
X-MailFrom: thierry.reding@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JMM7G25WC4ZDQXUM5IPCRW7DUDOBMZXN
X-Message-ID-Hash: JMM7G25WC4ZDQXUM5IPCRW7DUDOBMZXN
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:01 +0000
CC: linaro-mm-sig@lists.linaro.org, Lorenzo Stoakes <ljs@kernel.org>, Sven Schnelle <svens@linux.ibm.com>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Thomas Zimmermann <tzimmermann@suse.de>, Yury Norov <yury.norov@gmail.com>, linux-media@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jonathan Hunter <jonathanh@nvidia.com>, linux-s390@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>, Vlastimil Babka <vbabka@kernel.org>, Heiko Carstens <hca@linux.ibm.com>, Mikko Perttunen <mperttunen@nvidia.com>, David Hildenbrand <david@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, iommu@lists.linux.dev, linux-kernel@vger.kernel.org, Simona Vetter <simona@ffwll.ch>, Mike Rapoport <rppt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Robin Murphy <robin.murphy@arm.com>, Russell King <linux@armlinux.org.uk>, dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>, Vasily Gorbik <gor@linux.ibm.com>, Brian
  Starkey <Brian.Starkey@arm.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Christian Borntraeger <borntraeger@linux.ibm.com>, John Stultz <jstultz@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Thierry Reding <thierry.reding@gmail.com>, devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Catalin Marinas <catalin.marinas@arm.com>, linux-arm-kernel@lists.infradead.org, Alexander Gordeev <agordeev@linux.ibm.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, linux-mm@kvack.org, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Thierry Reding <treding@nvidia.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, "Liam R. Howlett" <liam@infradead.org>, Andrew Morton <akpm@linux-foundation.org>, Suren Baghdasaryan <surenb@google.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, linux-tegra@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Michal Hocko <mhocko@suse.com>, "T.J. Mercier" <tjmercier@google.com>, 
 David Airlie <airlied@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 02/11] dt-bindings: display: tegra: Document memory regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JMM7G25WC4ZDQXUM5IPCRW7DUDOBMZXN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5665101477788912182=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	DATE_IN_PAST(1.00)[291];
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
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ljs@kernel.org,m:svens@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:tzimmermann@suse.de,m:yury.norov@gmail.com,m:linux-media@vger.kernel.org,m:linux-trace-kernel@vger.kernel.org,m:linux@rasmusvillemoes.dk,m:jonathanh@nvidia.com,m:linux-s390@vger.kernel.org,m:mhiramat@kernel.org,m:vbabka@kernel.org,m:hca@linux.ibm.com,m:mperttunen@nvidia.com,m:david@kernel.org,m:rostedt@goodmis.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:simona@ffwll.ch,m:rppt@kernel.org,m:maarten.lankhorst@linux.intel.com,m:robin.murphy@arm.com,m:linux@armlinux.org.uk,m:dri-devel@lists.freedesktop.org,m:mripard@kernel.org,m:gor@linux.ibm.com,m:Brian.Starkey@arm.com,m:krzk+dt@kernel.org,m:borntraeger@linux.ibm.com,m:jstultz@google.com,m:christian.koenig@amd.com,m:thierry.reding@gmail.com,m:devicetree@vger.kernel.org,m:benjamin.gaignard@collabora.com,m:catalin.marinas@arm.com,m:linux-arm-kernel@lists.infradead.org,m:agorde
 ev@linux.ibm.com,m:mathieu.desnoyers@efficios.com,m:linux-mm@kvack.org,m:sumit.semwal@linaro.org,m:will@kernel.org,m:treding@nvidia.com,m:luca.ceresoli@bootlin.com,m:liam@infradead.org,m:akpm@linux-foundation.org,m:surenb@google.com,m:skomatineni@nvidia.com,m:linux-tegra@vger.kernel.org,m:conor+dt@kernel.org,m:mhocko@suse.com,m:tjmercier@google.com,m:airlied@gmail.com,m:yurynorov@gmail.com,m:krzk@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCPT_COUNT_GT_50(0.00)[54];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[lists.linaro.org,kernel.org,linux.ibm.com,suse.de,gmail.com,vger.kernel.org,rasmusvillemoes.dk,nvidia.com,goodmis.org,lists.linux.dev,ffwll.ch,linux.intel.com,arm.com,armlinux.org.uk,lists.freedesktop.org,google.com,amd.com,collabora.com,lists.infradead.org,efficios.com,kvack.org,linaro.org,bootlin.com,infradead.org,linux-foundation.org,suse.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns,devicetree.org:url,orome:mid,linaro.org:email,nvidia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B660875751F


--===============5665101477788912182==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qagealkznxwhby33"
Content-Disposition: inline


--qagealkznxwhby33
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 02/11] dt-bindings: display: tegra: Document memory
 regions
MIME-Version: 1.0

On Wed, Jul 01, 2026 at 02:53:11PM -0500, Rob Herring (Arm) wrote:
>=20
> On Wed, 01 Jul 2026 18:08:13 +0200, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > Add the memory-region and memory-region-names properties to the bindings
> > for the display controllers and the host1x engine found on various Tegra
> > generations. These memory regions are used to access firmware-provided
> > framebuffer memory as well as the video protection region.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> > Changes in v3:
> > - document properties for VIC
> > ---
> >  .../devicetree/bindings/display/tegra/nvidia,tegra124-vic.yaml |  8 ++=
++++++
> >  .../devicetree/bindings/display/tegra/nvidia,tegra186-dc.yaml  | 10 ++=
++++++++
> >  .../devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml   | 10 ++=
+++++++-
> >  .../bindings/display/tegra/nvidia,tegra20-host1x.yaml          |  7 ++=
+++++
> >  4 files changed, 34 insertions(+), 1 deletion(-)
> >=20
>=20
> My bot found errors running 'make dt_binding_check' on your patch:
>=20
> yamllint warnings/errors:
>=20
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/d=
isplay/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names: 'anyOf=
' conditional failed, one must be fixed:
> 	'maxitems' is not one of ['$ref', 'additionalItems', 'additionalProperti=
es', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dep=
endentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', '=
enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', '=
minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', '=
patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevalua=
tedProperties', 'uniqueItems']
> 	'type' was expected
> 	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/d=
isplay/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names:items: =
{'enum': ['framebuffer', 'protected']} is not of type 'array'
> 	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/d=
isplay/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names: Additi=
onal properties are not allowed ('maxitems' was unexpected)
> 	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/d=
isplay/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names:items: =
{'enum': ['framebuffer', 'protected']} is not of type 'array'
> 	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/d=
isplay/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names: Additi=
onal properties are not allowed ('maxitems' was unexpected)
> 	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml

Ugh... looks like these are all because I mistyped maxItems as maxitems.
Oh well. Sorry for the noise.

Thierry

--qagealkznxwhby33
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmpGa/wACgkQ3SOs138+
s6FjYBAAiIaBIWdZjFXo82rzspIHpvGgfQhSt4a55q2oojIy6N1UmTKiAcJDv5oW
g8aamgHNh028eD+y5O//mo8BgJnGgvSRFyZ5oH94ydn2FQyK09IRUTJVHXmZzij2
+yZ9kKvyJ8LNB08ozD6+GiG4mxobGEPJile7TvkPBR1IIHTcj72lUtBx1CmXMh2b
vkf7mcrVS0SdxnSoB3SOQGuGp0DV3apzKI/1ufoc+D0N/OfGuORq+/94WVM6HoP7
jORXz/xD1A49PqM9SzGgcVzd2Lm1Latg393tFhznCSVdaPw+OJ4ckF75rTIHAh7t
l95RTj9kj1PhQGZogzjAlCPm9hAWJdHu+GRkO2SY0wGPb4TD2/dLEgUr9Cckce1Y
V7yOCjHLpTgLS33V5O0Bx0NrtOJSs96jUl3pXjSGH1hvb3oZT1WjIA5PzlW44COY
uFHhHIvff1c156UMtRj5zlO5CnKXUKEoYhIrLkFyGrJKRiKh9OS33SAkvkoV1y7s
+BOjmuSA/MHXq6cg6S7Kg6NUGFo/c2KJs9t/5z787NDvmCMYlFgzkjIMFoIh21P9
gHRn3FS98btWp0qlVqv0R6N3sg/suUVCNco6ZMbhEDGafxejqTNRdwipjnb+hxNp
/rlf42/+2WRXWgWDUy0h+bRrMtgHxa6OTPo57aAfd7QkWrSM8tk=
=AE/S
-----END PGP SIGNATURE-----

--qagealkznxwhby33--

--===============5665101477788912182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5665101477788912182==--
