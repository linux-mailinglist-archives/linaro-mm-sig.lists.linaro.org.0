Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMP1NqVhcmnfjQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jan 2026 18:43:01 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DB56B8EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jan 2026 18:43:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D04D84014A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Jan 2026 17:36:30 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 31D443F774
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jan 2026 17:36:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="J2UlAbs/";
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 881C26013A;
	Thu, 22 Jan 2026 17:36:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18E08C16AAE;
	Thu, 22 Jan 2026 17:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769103383;
	bh=LWuS3t9H4s3n6SwgiZKmTr2O9DxNfnIGAD3zPijQ33Y=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=J2UlAbs/vbrkBlyTHAfoan1jPcOAJxwT4BQ6oTfUzQfCjFYnYuBOLhk45uDRuo3H/
	 AJ8YLsNqMPeQk6bxrBUW4PebRQqKIJGaBH3o3sVJ/wCleTmh3Xs3rYCTFcCTV0DjdL
	 lFfljb7U/kwXSMP8Jr+si3Cl0QrOaYVUt06WEriczzOsLxWottOB5M33ZaHWcmER1j
	 Mk4ThL/ejNwhMrlPiTqkuu5YaIQ2gd2Dv060RYhMQ27NGNiy7CnmBVzhiURLuxKoM4
	 Us6ZSRm/FeOLO4R3kRcxyGhfIE6bksw1Y7YGglSW0V6erdeJECMaqujSUGr8LSxRd/
	 1+7wE2rIsVeXQ==
Date: Thu, 22 Jan 2026 11:36:22 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Thierry Reding <thierry.reding@kernel.org>
In-Reply-To: <20260122161009.3865888-3-thierry.reding@kernel.org>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-3-thierry.reding@kernel.org>
Message-Id: <176910338211.2903017.10944159060341564914.robh@kernel.org>
X-Spamd-Bar: --
Message-ID-Hash: 2TOHX4OUKHHEUJGMAIQ4WX2GX3L5AUBI
X-Message-ID-Hash: 2TOHX4OUKHHEUJGMAIQ4WX2GX3L5AUBI
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, devicetree@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org, Brian Starkey <Brian.Starkey@arm.com>, Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, Simona Vetter <simona@ffwll.ch>, linux-tegra@vger.kernel.org, John Stultz <jstultz@google.com>, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, "T . J . Mercier" <tjmercier@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 02/10] dt-bindings: display: tegra: Document memory regions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2TOHX4OUKHHEUJGMAIQ4WX2GX3L5AUBI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.946];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,linaro.org:email]
X-Rspamd-Queue-Id: 71DB56B8EE
X-Rspamd-Action: no action


On Thu, 22 Jan 2026 17:10:01 +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Add the memory-region and memory-region-names properties to the bindings
> for the display controllers and the host1x engine found on various Tegra
> generations. These memory regions are used to access firmware-provided
> framebuffer memory as well as the video protection region.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../bindings/display/tegra/nvidia,tegra186-dc.yaml     | 10 ++++++++++
>  .../bindings/display/tegra/nvidia,tegra20-dc.yaml      | 10 +++++++++-
>  .../bindings/display/tegra/nvidia,tegra20-host1x.yaml  |  7 +++++++
>  3 files changed, 26 insertions(+), 1 deletion(-)
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

See https://patchwork.kernel.org/project/devicetree/patch/20260122161009.3865888-3-thierry.reding@kernel.org

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
