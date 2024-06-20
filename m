Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E839910C06
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 18:20:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 533A24486D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jun 2024 16:20:51 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 99F5C3F68F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jun 2024 16:20:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Nu2Yr48S;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 20436CE2429;
	Thu, 20 Jun 2024 16:20:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 412CEC2BD10;
	Thu, 20 Jun 2024 16:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718900445;
	bh=Ei2mXhkMdIXa7FVDgJeUlvKaLLb4XZD4GhWPWTEbGqs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nu2Yr48SMT1dEChkQZ4vicJt/c6nYv2Fw6IWSIcipsJAWbcMdGVKjF05YMka0KIq3
	 cQDU4SVfXPJx7LUIewT3F/xj9S9fMLKu7L18ycjslIuHn+0wmfiYmmo5jnusXD5h1O
	 dYgcJwPXw+fYdUIEhzuXZNoYOlj7XCgUMlRRfNxn3ZprHWDKCC5DuZX+SN5yRTWK4J
	 fjedakvvr6In6GUx7mW6m2s/kaWMeGf6SkNUA5lAafrSIuPws0f8+cidLkm18FWTBY
	 cvlElmnH/l6zdndlkAzl/4WZNPK4Lit46hXHzM9/IgkfrCm4sZJVdKw6GgKdjlgQYQ
	 rSLyTWdke1/Vw==
Date: Thu, 20 Jun 2024 21:50:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <ZnRW2axOg7gtKzz0@matsya>
References: <20240620122726.41232-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240620122726.41232-1-paul@crapouillou.net>
X-Rspamd-Queue-Id: 99F5C3F68F
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.94 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.44)[97.43%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[145.40.73.55:from,100.75.92.58:received];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WUAD365YVMDIEJTZZXYG26YU6TPFQVZE
X-Message-ID-Hash: WUAD365YVMDIEJTZZXYG26YU6TPFQVZE
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Nuno Sa <nuno.sa@analog.com>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 0/7] iio: new DMABUF based API v12
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WUAD365YVMDIEJTZZXYG26YU6TPFQVZE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 20-06-24, 14:27, Paul Cercueil wrote:
> Hi Jonathan,

Hey Jonathan,

Assuming we are fine with this series, how would you like to proceed.
Would you be fine with me picking the dmaengine bits and providing a
signed tag for you to pull?

-- 
~Vinod
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
