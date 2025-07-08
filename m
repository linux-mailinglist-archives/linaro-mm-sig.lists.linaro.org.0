Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0189AFD976
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 23:16:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A65A455F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 21:16:36 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 6E1D63F61A
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Jul 2025 21:16:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ZamDFZxo;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E06745C5B94;
	Tue,  8 Jul 2025 21:16:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BDE2C4CEED;
	Tue,  8 Jul 2025 21:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752009380;
	bh=ltXtFs+FCm7kdZYRy8gh9v9vkGeWsCBaQ7k3C/UgmI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZamDFZxoUKnJ50jqbuzf+mtCNimN+KnRAHw02TOqvhnP7JYLwu3iAIRak9q6CbuPh
	 Tm9NOOK+IZHdF5YxaVfKzqX1iIO2C1Z7g0G3jF9kByA5pHxPC6eYvpOghY9g2l38Uc
	 w6Rks0L2Jkv3BPhcEOCglupnmTsLWTlO1Y5VQRlohfL1xXRb9d7Z48jJg4wI2cEhaj
	 tZkl0Qtt9tBtM0J/DL3tFlV8Z+VMViPe8aGypq9UF4oa4fwtZmWITcuJURdpQNICfo
	 pZ7ioh1TlUXff8RrD64B5n074XRUvpNFkKeXaHqy/Ck1GNwRpcScus2WLD9/yDMR0l
	 pNMVwtdwZuRyg==
Date: Tue, 8 Jul 2025 16:16:19 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: LiangCheng Wang <zaq14760@gmail.com>
Message-ID: <175200937878.1039013.16279385818262913331.robh@kernel.org>
References: <20250708-drm-v1-0-45055fdadc8a@gmail.com>
 <20250708-drm-v1-1-45055fdadc8a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250708-drm-v1-1-45055fdadc8a@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6E1D63F61A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.98 / 15.00];
	BAYES_HAM(-2.98)[99.93%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[139.178.84.217:from];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[suse.de,kernel.org,gmail.com,vger.kernel.org,lists.linaro.org,linux.intel.com,lists.freedesktop.org,amd.com,ffwll.ch,linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_TWO(0.00)[2];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: LWXJTLTDZWWBOCQSK26OXAQZG5LCVUK4
X-Message-ID-Hash: LWXJTLTDZWWBOCQSK26OXAQZG5LCVUK4
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Wig Cheng <onlywig@gmail.com>, devicetree@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Mayqueen name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LWXJTLTDZWWBOCQSK26OXAQZG5LCVUK4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Tue, 08 Jul 2025 18:06:44 +0800, LiangCheng Wang wrote:
> From: Wig Cheng <onlywig@gmail.com>
> 
> Mayqueen is a Taiwan-based company primarily focused on the development
> of arm64 development boards and e-paper displays.
> 
> Signed-off-by: Wig Cheng <onlywig@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
