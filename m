Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BCD79D038
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 13:38:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E51FD3EFF6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 11:38:54 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 89A6A3EF28
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 11:38:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=K4YOz5hN;
	spf=pass (lists.linaro.org: domain of broonie@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=broonie@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 59BBEB81CEF;
	Tue, 12 Sep 2023 11:38:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4C8EC433C9;
	Tue, 12 Sep 2023 11:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694518693;
	bh=h30b56RrRORKmlU4pC18wtn1e1EQ/8raoGBkCT361sM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=K4YOz5hNZrqjLdTbhxxFHvS2l4kzfDALcCAxmSU6AUaAhJs3afTFzWBtzbY+FWOxd
	 /LGrRgZYBnek1Y85XT26sSfS+eQZx6uc12ooEAvV0IOKlY80nX6tskwzTg9/c85ymE
	 fQR+hvjnHnkdHiKCPwux7J790Kwu8YmOkreruYmvpvOItqfLUd8BZ26bSLqzzyN3Zg
	 zCoyLw9u9CzQSwSzcKK9W/bxFVRJexG48oHeaNiGi0+xm+32KnoedCoKgMt+96CqjN
	 eAM/NEjdZ7OShOMnE8pBTH8fYY5cGDez5JMFmGUXsiLaRmr+iGRqetl+dVbMtbQu1S
	 AsIApVkwkhzxQ==
From: Mark Brown <broonie@kernel.org>
To: ldewangan@nvidia.com, Zhang Shurong <zhang_shurong@foxmail.com>
In-Reply-To: <tencent_73FCC06A3D1C14EE5175253C6FB46A07B709@qq.com>
References: <tencent_73FCC06A3D1C14EE5175253C6FB46A07B709@qq.com>
Message-Id: <169451868918.2398433.15693451802537494964.b4-ty@kernel.org>
Date: Tue, 12 Sep 2023 12:38:09 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-099c9
X-Rspamd-Queue-Id: 89A6A3EF28
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,nvidia.com,pengutronix.de,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FREEMAIL_TO(0.00)[nvidia.com,foxmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Q5OCJ6NVZN2ODXW4FHQNWH6JHORI42UI
X-Message-ID-Hash: Q5OCJ6NVZN2ODXW4FHQNWH6JHORI42UI
X-MailFrom: broonie@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: thierry.reding@gmail.com, jonathanh@nvidia.com, p.zabel@pengutronix.de, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-spi@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] spi: tegra: Fix missing IRQ check in tegra_slink_probe()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Q5OCJ6NVZN2ODXW4FHQNWH6JHORI42UI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, 26 Aug 2023 18:02:54 +0800, Zhang Shurong wrote:
> This func misses checking for platform_get_irq()'s call and may passes the
> negative error codes to request_irq(), which takes unsigned IRQ #,
> causing it to fail with -EINVAL, overriding an original error code.
> 
> Fix this by stop calling request_irq() with invalid IRQ #s.
> 
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: tegra: Fix missing IRQ check in tegra_slink_probe()
      commit: eb9913b511f10968a02cfa5329a896855dd152a3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
