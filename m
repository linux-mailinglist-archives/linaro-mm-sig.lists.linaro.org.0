Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB64ABD094
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 09:37:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CBCD4598D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 May 2025 07:37:56 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id E04A941106
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 May 2025 07:37:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="dBCD7X/I";
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2CF8961155;
	Tue, 20 May 2025 07:37:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48570C4CEE9;
	Tue, 20 May 2025 07:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747726662;
	bh=fVyiR8D7qQA0+vUTgX2LRrLxivKrGYmC1L9B3HBhIp4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dBCD7X/Ibe+2sYG6xP8sVpZb/vvzfhqkfWycoZsODdRu0VlV9AzpwEbDry/P8F/Ki
	 160DahL5vOyYPwKvMHogsbRJjloc+9RW95QTgbAOYkHGrvyU6pZOIzBMpLDSRvv58+
	 BUnXAyXUkB275DFTYj37RQ48hOiD4G6tZPHThU8pDoh7Q96nKggGXnvCvaWTssLPXy
	 D4Lxnato7ApFWIGCt02TmsNFsgVWDS05ddVMquc+IEx925tVwN1KoOstszxYB9LJSg
	 931bNAa+VGLwHHpB9NalKtr0s4Ta9DlL0WsQCce7tNWGaAiywZjHqBSPLO//shlkOy
	 Xncs2LCkxJUOg==
Date: Tue, 20 May 2025 09:37:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Message-ID: <20250520-silent-prophetic-cricket-fa0fa9@kuoka>
References: <20250519-6-10-rocket-v4-0-d6dff6b4c0ae@tomeuvizoso.net>
 <20250519-6-10-rocket-v4-5-d6dff6b4c0ae@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250519-6-10-rocket-v4-5-d6dff6b4c0ae@tomeuvizoso.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,oss.qualcomm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: E04A941106
X-Spamd-Bar: --
Message-ID-Hash: WTZCG3FT7JYNLVRN74E7CN2NG3KAEUPT
X-Message-ID-Hash: WTZCG3FT7JYNLVRN74E7CN2NG3KAEUPT
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 05/10] accel/rocket: Add a new driver for Rockchip's NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WTZCG3FT7JYNLVRN74E7CN2NG3KAEUPT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, May 19, 2025 at 03:43:37PM GMT, Tomeu Vizoso wrote:
> +#endif
> diff --git a/drivers/accel/rocket/rocket_device.c b/drivers/accel/rocket/rocket_device.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..bb469ac87d36249157f4ba9d9f7106ad558309e4
> --- /dev/null
> +++ b/drivers/accel/rocket/rocket_device.c
> @@ -0,0 +1,39 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/* Copyright 2024-2025 Tomeu Vizoso <tomeu@tomeuvizoso.net> */
> +
> +#include <linux/clk.h>
> +#include <linux/dev_printk.h>
> +
> +#include "rocket_device.h"
> +
> +int rocket_device_init(struct rocket_device *rdev)
> +{
> +	struct device *dev = rdev->cores[0].dev;
> +	int err;
> +
> +	rdev->clk_npu = devm_clk_get(dev, "npu");
> +	if (IS_ERR(rdev->clk_npu)) {
> +		err = PTR_ERR(rdev->clk_npu);
> +		dev_err(dev, "devm_clk_get failed %d for clock npu\n", err);
> +		return err;
> +	}

That's probe path? so use standard syntax:

return dev_err_probe(). One line instead of four.

> +
> +	rdev->pclk = devm_clk_get(dev, "pclk");
> +	if (IS_ERR(rdev->pclk)) {
> +		err = PTR_ERR(rdev->pclk);
> +		dev_err(dev, "devm_clk_get failed %d for clock pclk\n", err);
> +		return err;

Same here... except that this should be blk API and entire function gets
smaller.

> +	}
> +
> +	/* Initialize core 0 (top) */
> +	err = rocket_core_init(&rdev->cores[0]);
> +	if (err)
> +		return err;
> +
> +	return 0;
> +}

...

> +static int rocket_device_runtime_resume(struct device *dev)
> +{
> +	struct rocket_device *rdev = dev_get_drvdata(dev);
> +	int core = find_core_for_dev(dev);
> +	int err = 0;
> +
> +	if (core < 0)
> +		return -ENODEV;
> +
> +	if (core == 0) {
> +		err = clk_prepare_enable(rdev->clk_npu);
> +		if (err) {
> +			dev_err(dev, "clk_prepare_enable failed %d for clock npu\n", err);
> +			return err;
> +		}
> +
> +		err = clk_prepare_enable(rdev->pclk);
> +		if (err) {
> +			dev_err(dev, "clk_prepare_enable failed %d for clock pclk\n", err);
> +			goto error_clk_npu;
> +		}
> +	}
> +
> +	err = clk_prepare_enable(rdev->cores[core].a_clk);
> +	if (err) {
> +		dev_err(dev, "clk_prepare_enable failed %d for a_clk in core %d\n", err, core);
> +		goto error_pclk;
> +	}
> +
> +	err = clk_prepare_enable(rdev->cores[core].h_clk);
> +	if (err) {
> +		dev_err(dev, "clk_prepare_enable failed %d for h_clk in core %d\n", err, core);
> +		goto error_a_clk;
> +	}

All four above calls could be just one call with bulk API.

> +
> +	return 0;
> +
> +error_a_clk:
> +	clk_disable_unprepare(rdev->cores[core].a_clk);
> +
> +error_pclk:
> +	if (core == 0)
> +		clk_disable_unprepare(rdev->pclk);
> +
> +error_clk_npu:
> +	if (core == 0)
> +		clk_disable_unprepare(rdev->clk_npu);

And all this would be gone...

> +
> +	return err;

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
