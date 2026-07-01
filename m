Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wLtxBj9wRWrzAAsAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 21:53:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B696F121B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 21:53:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=dVQu4w7P;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D3C640536
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2026 19:53:33 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id BEAC13F768
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 19:53:13 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 12DEE601DF;
	Wed,  1 Jul 2026 19:53:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A4A41F00A3A;
	Wed,  1 Jul 2026 19:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782935592;
	bh=fzFM+3fnKG0YLEDmBIloyOG/31SnlMJCbijzwmUNu+0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=dVQu4w7P3dCUJ5KBUDAc4q3L1wAsQVNP/nKMxUpjt8ZiS/3HdSIMwTOljW8/JVMl0
	 DD5yfBvXaIX6yid82xMVg80tHH93ROwQVaAxzACoOABqbDYaCrwrCdnMp9yQjhfmtv
	 yM/CK/nD1+sWbi/uI5coRQ1PFmO6naJBOghjrbGdQihcbAPR/R2fxRSZsHfL3/gAe1
	 dMrlH6WU1wKStdUEBTtzKgxEFvCZ0V/P2NzUQYLEfQBmrAPn+66TFX5UaD09Y1Jc/x
	 xn/7dzGPjhWgaqehG2ONJtZ4IjW23B2TJGgOkXsKOGFoAeMGU/E2Pcw/2APB/MHO/i
	 qx3e+GdTEgJqA==
Date: Wed, 01 Jul 2026 14:53:11 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>
In-Reply-To: <20260701-tegra-vpr-v3-2-d80f7b871bb4@nvidia.com>
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
 <20260701-tegra-vpr-v3-2-d80f7b871bb4@nvidia.com>
Message-Id: <178293559078.1610192.17087150631381044391.robh@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: G5C4UEAL4WZE572F3VFEZG3T5GRIAQX2
X-Message-ID-Hash: G5C4UEAL4WZE572F3VFEZG3T5GRIAQX2
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, Lorenzo Stoakes <ljs@kernel.org>, Sven Schnelle <svens@linux.ibm.com>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Thomas Zimmermann <tzimmermann@suse.de>, Yury Norov <yury.norov@gmail.com>, linux-media@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jonathan Hunter <jonathanh@nvidia.com>, linux-s390@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>, Vlastimil Babka <vbabka@kernel.org>, Heiko Carstens <hca@linux.ibm.com>, Mikko Perttunen <mperttunen@nvidia.com>, David Hildenbrand <david@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, iommu@lists.linux.dev, linux-kernel@vger.kernel.org, Simona Vetter <simona@ffwll.ch>, Mike Rapoport <rppt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Robin Murphy <robin.murphy@arm.com>, Russell King <linux@armlinux.org.uk>, dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>, Vasily Gorbik <gor@linux.ibm.com>, Brian
  Starkey <Brian.Starkey@arm.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Christian Borntraeger <borntraeger@linux.ibm.com>, John Stultz <jstultz@google.com>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Thierry Reding <thierry.reding@gmail.com>, devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Catalin Marinas <catalin.marinas@arm.com>, linux-arm-kernel@lists.infradead.org, Alexander Gordeev <agordeev@linux.ibm.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, linux-mm@kvack.org, Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>, Thierry Reding <treding@nvidia.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, "Liam R. Howlett" <liam@infradead.org>, Andrew Morton <akpm@linux-foundation.org>, Suren Baghdasaryan <surenb@google.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, linux-tegra@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Michal Hocko <mhocko@suse.com>, "T.J. Mercier" <tjmercier@google.com>
 , David Airlie <airlied@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 02/11] dt-bindings: display: tegra: Document memory regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G5C4UEAL4WZE572F3VFEZG3T5GRIAQX2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ljs@kernel.org,m:svens@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:tzimmermann@suse.de,m:yury.norov@gmail.com,m:linux-media@vger.kernel.org,m:linux-trace-kernel@vger.kernel.org,m:linux@rasmusvillemoes.dk,m:jonathanh@nvidia.com,m:linux-s390@vger.kernel.org,m:mhiramat@kernel.org,m:vbabka@kernel.org,m:hca@linux.ibm.com,m:mperttunen@nvidia.com,m:david@kernel.org,m:rostedt@goodmis.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:simona@ffwll.ch,m:rppt@kernel.org,m:maarten.lankhorst@linux.intel.com,m:robin.murphy@arm.com,m:linux@armlinux.org.uk,m:dri-devel@lists.freedesktop.org,m:mripard@kernel.org,m:gor@linux.ibm.com,m:Brian.Starkey@arm.com,m:krzk+dt@kernel.org,m:borntraeger@linux.ibm.com,m:jstultz@google.com,m:christian.koenig@amd.com,m:thierry.reding@gmail.com,m:devicetree@vger.kernel.org,m:benjamin.gaignard@collabora.com,m:catalin.marinas@arm.com,m:linux-arm-kernel@lists.infradead.or
 g,m:agordeev@linux.ibm.com,m:mathieu.desnoyers@efficios.com,m:linux-mm@kvack.org,m:sumit.semwal@linaro.org,m:will@kernel.org,m:treding@nvidia.com,m:luca.ceresoli@bootlin.com,m:liam@infradead.org,m:akpm@linux-foundation.org,m:surenb@google.com,m:skomatineni@nvidia.com,m:linux-tegra@vger.kernel.org,m:conor+dt@kernel.org,m:mhocko@suse.com,m:tjmercier@google.com,m:airlied@gmail.com,m:yurynorov@gmail.com,m:krzk@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.linaro.org,kernel.org,linux.ibm.com,suse.de,gmail.com,vger.kernel.org,rasmusvillemoes.dk,nvidia.com,goodmis.org,lists.linux.dev,ffwll.ch,linux.intel.com,arm.com,armlinux.org.uk,lists.freedesktop.org,google.com,amd.com,collabora.com,lists.infradead.org,efficios.com,kvack.org,linaro.org,bootlin.com,infradead.org,linux-foundation.org,suse.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[robh@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[54];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,nvidia.com:email,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91B696F121B


On Wed, 01 Jul 2026 18:08:13 +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Add the memory-region and memory-region-names properties to the bindings
> for the display controllers and the host1x engine found on various Tegra
> generations. These memory regions are used to access firmware-provided
> framebuffer memory as well as the video protection region.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v3:
> - document properties for VIC
> ---
>  .../devicetree/bindings/display/tegra/nvidia,tegra124-vic.yaml |  8 ++++++++
>  .../devicetree/bindings/display/tegra/nvidia,tegra186-dc.yaml  | 10 ++++++++++
>  .../devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml   | 10 +++++++++-
>  .../bindings/display/tegra/nvidia,tegra20-host1x.yaml          |  7 +++++++
>  4 files changed, 34 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names: 'anyOf' conditional failed, one must be fixed:
	'maxitems' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names:items: {'enum': ['framebuffer', 'protected']} is not of type 'array'
	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names: Additional properties are not allowed ('maxitems' was unexpected)
	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names:items: {'enum': ['framebuffer', 'protected']} is not of type 'array'
	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dc.yaml: properties:memory-region-names: Additional properties are not allowed ('maxitems' was unexpected)
	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260701-tegra-vpr-v3-2-d80f7b871bb4@nvidia.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
