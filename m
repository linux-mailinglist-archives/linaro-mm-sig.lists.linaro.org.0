Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBB1B42734
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 18:45:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D167045D83
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Sep 2025 16:45:36 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 366DF44A4A
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Sep 2025 16:45:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UkWhlLvR;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A71C46013F;
	Wed,  3 Sep 2025 16:45:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F4FCC4CEE7;
	Wed,  3 Sep 2025 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756917928;
	bh=1QCnhHk4YrbcljgZa4CIM09QqYheSpXKbkWo83aUiBA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UkWhlLvRnJr6ayb4Mng7/14tuavR02NoAo9XeCgTB/5K3v5y26XRy3pL1nHIvzpVo
	 Dn38VyfEu5u4ggHiuf1rlqoblQScmF2gjYxPS26gnp/84X6prefSXBDc4SGcU4jVmV
	 GgByW2YTigHjEiJ5pghcpSJ6FL20HQZZiwYDM9E6Is2l5xL/z2SlqQrmZyd62mHfef
	 kHNH2kx4gOmI+ozktvajibFsYx6syJhF5oL43UkIn1HNWfgVDoQJx6Fyv2lTYgnXUY
	 Y76w5eD/VP6VjR/Rgij0/nEUdUcV+LE/WBEqS2iY+YWtX/nGpN5ubrn9oP9U7/I1j0
	 7bgomSEmNytEw==
Date: Wed, 3 Sep 2025 11:45:27 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Message-ID: <175691792593.2483010.8132765871876943036.robh@kernel.org>
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
 <20250902154630.4032984-2-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250902154630.4032984-2-thierry.reding@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 366DF44A4A
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[google.com,kernel.org,ffwll.ch,gmail.com,linaro.org,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,arm.com,kvack.org,collabora.com,lists.linaro.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: LBZUSR7M3T3UK73J7P462T6NAM2ADKF6
X-Message-ID-Hash: LBZUSR7M3T3UK73J7P462T6NAM2ADKF6
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "T.J. Mercier" <tjmercier@google.com>, Conor Dooley <conor+dt@kernel.org>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org, Brian Starkey <Brian.Starkey@arm.com>, linux-mm@kvack.org, Mike Rapoport <rppt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dt-bindings: reserved-memory: Document Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LBZUSR7M3T3UK73J7P462T6NAM2ADKF6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Tue, 02 Sep 2025 17:46:21 +0200, Thierry Reding wrote:
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
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../nvidia,tegra-video-protection-region.yaml | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/nvidia,tegra-video-protection-region.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
