Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F07A4AFD9A6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 23:21:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 155E63F6DD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 21:21:42 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 881F03F6DD
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Jul 2025 21:21:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ceLa8LDc;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B725844137;
	Tue,  8 Jul 2025 21:21:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42891C4CEED;
	Tue,  8 Jul 2025 21:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752009690;
	bh=BD45fOSIJuFMBAgIlSkATWlSQYal73zlmew1ys0nEOw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ceLa8LDcpUhuLf+TCrHxLAH1fLRwQgCP7HUiw3erLFEnnmi5ucOx8mzDUfhGxVCxJ
	 1SiJuTWo577zuuNDx+YuZ2wjDzayqvIAU1OEz3u3h7CFn4KAID2ef9Teg0cMY1C+WA
	 /5+YE0PrrhWE/6nIhAK12bMt+2PHz/FBue60O38wno5DNf3RxcwdhFvRcG3ldfr7ax
	 lg9PXvX40G3mpjacx7sycLPDYHelmuurrhjuTgoqjPkUvDdAa0zu9FOxJPX0rtW5cY
	 yoBtswoYsblAYTRoMoZtOXD382/XQhcGAl+kMLZo1D2SlSoa7ku7aC1P5mhpZUEkmI
	 o54yV+XskZadA==
Date: Tue, 8 Jul 2025 16:21:28 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: LiangCheng Wang <zaq14760@gmail.com>
Message-ID: <175200964552.1075683.215921884605311329.robh@kernel.org>
References: <20250708-drm-v1-0-45055fdadc8a@gmail.com>
 <20250708-drm-v1-3-45055fdadc8a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250708-drm-v1-3-45055fdadc8a@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 881F03F6DD
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.49 / 15.00];
	BAYES_HAM(-2.99)[99.97%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,ffwll.ch,vger.kernel.org,linux.intel.com,lists.freedesktop.org,suse.de,lists.linaro.org,gmail.com,linaro.org,amd.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: BPTBBINGMCYWZTOKOAOKIC22RSYDNYLT
X-Message-ID-Hash: BPTBBINGMCYWZTOKOAOKIC22RSYDNYLT
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maxime Ripard <mripard@kernel.org>, Simona Vetter <simona@ffwll.ch>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Wig Cheng <onlywig@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] dt-bindings: display: Add Mayqueen Pixpaper e-ink panel
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BPTBBINGMCYWZTOKOAOKIC22RSYDNYLT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Tue, 08 Jul 2025 18:06:46 +0800, LiangCheng Wang wrote:
> The binding is for the Mayqueen Pixpaper e-ink display panel,
> controlled via an SPI interface.
> 
> Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>
> ---
>  .../bindings/display/mayqueen,pixpaper.yaml        | 63 ++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 

This should be patch 2. Bindings come before users of them.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
