Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC3379A94C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 17:00:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EADB33F532
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 15:00:35 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 4E9BD3EFBF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Aug 2023 15:32:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of helen.koike@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=helen.koike@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1c:f269::1])
	by madras.collabora.co.uk (Postfix) with ESMTP id 332E2660716E;
	Mon, 28 Aug 2023 16:32:36 +0100 (BST)
From: "Helen Mae Koike Fornazier" <helen.koike@collabora.com>
In-Reply-To: <tencent_73FCC06A3D1C14EE5175253C6FB46A07B709@qq.com>
X-Forward: 127.0.0.1
Date: Mon, 28 Aug 2023 16:32:35 +0100
To: "Zhang Shurong" <zhang_shurong@foxmail.com>
MIME-Version: 1.0
Message-ID: <6fd4-64ecbe00-3-213b7840@157890307>
User-Agent: SOGoMail 5.8.4
X-Rspamd-Queue-Id: 4E9BD3EFBF
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_QP(1.20)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_CC(0.00)[nvidia.com,vger.kernel.org,lists.freedesktop.org,linaro.org,lists.linaro.org,kernel.org,gmail.com,amd.com];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_TO(0.00)[foxmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.631];
	RCPT_COUNT_TWELVE(0.00)[13];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: helen.koike@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4Z2YVA3ANXKTAPCMAEFHH4KYVFKNJ3V4
X-Message-ID-Hash: 4Z2YVA3ANXKTAPCMAEFHH4KYVFKNJ3V4
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:59:41 +0000
CC: ldewangan@nvidia.com, linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org, broonie@kernel.org, thierry.reding@gmail.com, linux-tegra@vger.kernel.org, jonathanh@nvidia.com, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] spi: tegra: Fix  missing IRQ check integra_slink_probe()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4Z2YVA3ANXKTAPCMAEFHH4KYVFKNJ3V4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Saturday, August 26, 2023 07:02 -03, Zhang Shurong <zhang_shurong@foxmail.com> wrote:

> This func misses checking for platform_get_irq()'s call and may passes the
> negative error codes to request_irq(), which takes unsigned IRQ #,
> causing it to fail with -EINVAL, overriding an original error code.
> 
> Fix this by stop calling request_irq() with invalid IRQ #s.
> 
> Fixes: dc4dc3605639 ("spi: tegra: add spi driver for SLINK controller")
> Signed-off-by: Zhang Shurong <zhang_shurong@foxmail.com>

Reviewed-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/spi/spi-tegra20-slink.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/spi/spi-tegra20-slink.c b/drivers/spi/spi-tegra20-slink.c
> index 4d6db6182c5e..f5cd365c913a 100644
> --- a/drivers/spi/spi-tegra20-slink.c
> +++ b/drivers/spi/spi-tegra20-slink.c
> @@ -1086,6 +1086,8 @@ static int tegra_slink_probe(struct platform_device *pdev)
>  	reset_control_deassert(tspi->rst);
>  
>  	spi_irq = platform_get_irq(pdev, 0);
> +	if (spi_irq < 0)
> +		return spi_irq;
>  	tspi->irq = spi_irq;
>  	ret = request_threaded_irq(tspi->irq, tegra_slink_isr,
>  				   tegra_slink_isr_thread, IRQF_ONESHOT,
> -- 
> 2.30.2
>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
