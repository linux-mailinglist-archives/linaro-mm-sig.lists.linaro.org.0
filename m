Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I83xHzZwRWrxAAsAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 21:53:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F05AA6F1215
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 01 Jul 2026 21:53:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=SW5Xw1L4;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3EF440C6A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Jul 2026 19:53:24 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 09E083F768
	for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Jul 2026 19:53:13 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F2744433C5;
	Wed,  1 Jul 2026 19:53:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DA4B1F000E9;
	Wed,  1 Jul 2026 19:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782935591;
	bh=Btp8Coh0/YDoX5eWIBILnB6rkqO9aOJKzbTAJEfWmYk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=SW5Xw1L4n6km0go7iiQIUMhYp6NAfj0RV6eYQqCVHodCALEB8dTOYsfQaNULAMbqI
	 xB7nUW5AdUfmj/kfqGM0ge94GbUCCvRDC/EQnSopZqdpLC3YWJPU3hhxzoB7TiuMXK
	 rgwksGyFQDkLQ4L1Zv//reedGipqwPdRgCwYfIYn7SUowcW/xIaoKQgA7tLYyowF21
	 vtZqvsjUt5lA/qYPA9GV1RiCdmGczJhLUDM+otUG+k4cTl/W4Sjha1gMK6icACBU9B
	 4gKGJaZ253aNPnE8hxuMfX5mHW4TnINK1IFn2iP7EiwQlNNuW7HvzKuCaOFexbJrlV
	 u/4ONeNo3HSXg==
Date: Wed, 01 Jul 2026 14:53:10 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>
In-Reply-To: <20260701-tegra-vpr-v3-1-d80f7b871bb4@nvidia.com>
References: <20260701-tegra-vpr-v3-0-d80f7b871bb4@nvidia.com>
 <20260701-tegra-vpr-v3-1-d80f7b871bb4@nvidia.com>
Message-Id: <178293558945.1610040.13281502080616690110.robh@kernel.org>
X-Spamd-Bar: -----
Message-ID-Hash: AG2J2BLZ6VPOB5YJ6TRPF3SRVOSVHNPO
X-Message-ID-Hash: AG2J2BLZ6VPOB5YJ6TRPF3SRVOSVHNPO
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian Borntraeger <borntraeger@linux.ibm.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, dri-devel@lists.freedesktop.org, David Hildenbrand <david@kernel.org>, Yury Norov <yury.norov@gmail.com>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Simona Vetter <simona@ffwll.ch>, linux-trace-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-mm@kvack.org, Russell King <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, David Airlie <airlied@gmail.com>, Vasily Gorbik <gor@linux.ibm.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, linaro-mm-sig@lists.linaro.org, Heiko Carstens <hca@linux.ibm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thierry Reding <treding@nvidia.com>, Maxime Ripard <mripard@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, John Stultz <jstultz@google.com>, Luca Ceresoli <
 luca.ceresoli@bootlin.com>, Vlastimil Babka <vbabka@kernel.org>, Brian Starkey <Brian.Starkey@arm.com>, Mikko Perttunen <mperttunen@nvidia.com>, Michal Hocko <mhocko@suse.com>, Steven Rostedt <rostedt@goodmis.org>, Jonathan Hunter <jonathanh@nvidia.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, Suren Baghdasaryan <surenb@google.com>, linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org, devicetree@vger.kernel.org, "Liam R. Howlett" <liam@infradead.org>, linux-tegra@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Andrew Morton <akpm@linux-foundation.org>, Gerald Schaefer <gerald.schaefer@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ibm.com>, Lorenzo Stoakes <ljs@kernel.org>, "T.J. Mercier" <tjmercier@google.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, iommu@lists.linux.dev, Mike Rapoport <rppt@kernel.org>, S
 ven Schnelle <svens@linux.ibm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/11] dt-bindings: reserved-memory: Document Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AG2J2BLZ6VPOB5YJ6TRPF3SRVOSVHNPO/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:borntraeger@linux.ibm.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:david@kernel.org,m:yury.norov@gmail.com,m:linux-media@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:robin.murphy@arm.com,m:simona@ffwll.ch,m:linux-trace-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:christian.koenig@amd.com,m:linux-mm@kvack.org,m:linux@armlinux.org.uk,m:will@kernel.org,m:mhiramat@kernel.org,m:airlied@gmail.com,m:gor@linux.ibm.com,m:benjamin.gaignard@collabora.com,m:linaro-mm-sig@lists.linaro.org,m:hca@linux.ibm.com,m:sumit.semwal@linaro.org,m:treding@nvidia.com,m:mripard@kernel.org,m:thierry.reding@gmail.com,m:jstultz@google.com,m:luca.ceresoli@bootlin.com,m:vbabka@kernel.org,m:Brian.Starkey@arm.com,m:mperttunen@nvidia.com,m:mhocko@suse.com,m:rostedt@goodmis.org,m:jonathanh@nvidia.com,m:maarten.lankhorst@linux.intel.com,m:skomatineni@nvidia.com,m:surenb@google.com,m:linux-arm-kernel@lists.infradead.org,m:linux-s390@vger.ke
 rnel.org,m:devicetree@vger.kernel.org,m:liam@infradead.org,m:linux-tegra@vger.kernel.org,m:catalin.marinas@arm.com,m:conor+dt@kernel.org,m:tzimmermann@suse.de,m:akpm@linux-foundation.org,m:gerald.schaefer@linux.ibm.com,m:agordeev@linux.ibm.com,m:ljs@kernel.org,m:tjmercier@google.com,m:mathieu.desnoyers@efficios.com,m:iommu@lists.linux.dev,m:rppt@kernel.org,m:svens@linux.ibm.com,m:yurynorov@gmail.com,m:krzk@kernel.org,m:thierryreding@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[robh@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,rasmusvillemoes.dk,lists.freedesktop.org,kernel.org,gmail.com,vger.kernel.org,arm.com,ffwll.ch,amd.com,kvack.org,armlinux.org.uk,collabora.com,lists.linaro.org,linaro.org,nvidia.com,google.com,bootlin.com,suse.com,goodmis.org,linux.intel.com,lists.infradead.org,infradead.org,suse.de,linux-foundation.org,efficios.com,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,devicetree.org:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F05AA6F1215


On Wed, 01 Jul 2026 18:08:12 +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The Video Protection Region (VPR) found on NVIDIA Tegra chips is a
> region of memory that is protected from CPU accesses. It is used to
> decode and play back DRM protected content.
> 
> It is a standard reserved memory region that can exist in two forms:
> static VPR where the base address and size are fixed (uses the "reg"
> property to describe the memory) and a resizable VPR where only the
> size is known upfront and the OS can allocate it wherever it can be
> accomodated.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v2:
> - add examples for fixed and resizable VPR
> ---
>  .../nvidia,tegra-video-protection-region.yaml      | 76 ++++++++++++++++++++++
>  1 file changed, 76 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/reserved-memory/nvidia,tegra-video-protection-region.example.dtb: protected@2a8000000 (nvidia,tegra-video-protection-region): reg: [[2, 2818572288], [0, 1879048192]] is too long
	from schema $id: http://devicetree.org/schemas/reserved-memory/nvidia,tegra-video-protection-region.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/reserved-memory/nvidia,tegra-video-protection-region.example.dtb: protected@2a8000000 (nvidia,tegra-video-protection-region): Unevaluated properties are not allowed ('no-map', 'reg' were unexpected)
	from schema $id: http://devicetree.org/schemas/reserved-memory/nvidia,tegra-video-protection-region.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260701-tegra-vpr-v3-1-d80f7b871bb4@nvidia.com

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
