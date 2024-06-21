Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 300A0912183
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 12:06:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0BC8441A1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Jun 2024 10:06:32 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id EC3C23F68F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Jun 2024 10:06:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JhW7pzto;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 88E6C6251A;
	Fri, 21 Jun 2024 10:06:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39C0BC32781;
	Fri, 21 Jun 2024 10:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718964389;
	bh=1GKLKGeRzQY51YWSHCRfEazQ3RSI3b+fO3L2sCeLnXA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JhW7pztoxJCkRjT1yLv7ThPWJWQqRkYgeFtNV8D6Vdr6R+6/OsZQDo4FBdUype8Sh
	 d318Thsws/swtFoXoebuAHdHMkwwdtZSYGGuZG+ihlFwVWLMbg/l8UsIL/rKKjrNpt
	 cLzKuxr9b6bPx1Z8lvJhPdGXgA3aACBsG82RZ+hIe1YR0TuVxRFELRYv+7QWnNzBag
	 RgVdmEQ7cOA4bzMw7jw9eFjm210ABRKiCqEayJ+0zjHURsdUbTsYSIQzWa0YaWdr5w
	 f2P9Av5rlyYQxEdk8NM/NN3GBJUI1PLV3X+sGnN4acoHbJQvpAoQHk10kHGtmO6Adr
	 qlkHePqiX3OZg==
From: Vinod Koul <vkoul@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Paul Cercueil <paul@crapouillou.net>
In-Reply-To: <20240620122726.41232-1-paul@crapouillou.net>
References: <20240620122726.41232-1-paul@crapouillou.net>
Message-Id: <171896438479.273533.11227587889239181030.b4-ty@kernel.org>
Date: Fri, 21 Jun 2024 15:36:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-Rspamd-Queue-Id: EC3C23F68F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: E6CTE35IHGRM62OHKEEQFP2PXGA7AQIZ
X-Message-ID-Hash: E6CTE35IHGRM62OHKEEQFP2PXGA7AQIZ
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v12 0/7] iio: new DMABUF based API v12
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E6CTE35IHGRM62OHKEEQFP2PXGA7AQIZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Thu, 20 Jun 2024 14:27:19 +0200, Paul Cercueil wrote:
> Here's the v12 of my patchset that introduces DMABUF support to IIO.
> 
> Apart from a small documentation fix, it reverts to using
> mutex_lock/mutex_unlock in one particular place, which used cleanup
> GOTOs (which don't play well with scope-managed cleanups).
> 
> Changelog:
> - [3/7]:
>     - Revert to mutex_lock/mutex_unlock in iio_buffer_attach_dmabuf(),
>       as it uses cleanup GOTOs
> - [6/7]:
>     - "obtained using..." -> "which can be obtained using..."
> 
> [...]

Applied, thanks!

[1/7] dmaengine: Add API function dmaengine_prep_peripheral_dma_vec()
      commit: 5878853fc9389e7d0988d4b465a415cf96fd14fa
[2/7] dmaengine: dma-axi-dmac: Implement device_prep_peripheral_dma_vec
      commit: 74609e5686701ed8e8adc3082d15f009e327286d
[7/7] Documentation: dmaengine: Document new dma_vec API
      commit: 380afccc2a55e8015adae4266e8beff96ab620be

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
