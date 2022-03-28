Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 724844EC499
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 14:41:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8BAC3EC62
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 12:41:23 +0000 (UTC)
Received: from ssl.serverraum.org (ssl.serverraum.org [176.9.125.105])
	by lists.linaro.org (Postfix) with ESMTPS id E71A73EA27
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 07:35:35 +0000 (UTC)
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ssl.serverraum.org (Postfix) with ESMTPSA id 996C322205;
	Mon, 28 Mar 2022 09:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
	t=1648452932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KxoefHxHBWO4b2r56J13guP4925DtgDpQm/mM3H3NHE=;
	b=tuCU6rLPvYS4HLC6WvfjKQhqUDH665lXMWAlcV1ZvVcUAxENEnflPFcNuuyc8aht4cF0vD
	529FsUN8ktrT/KN6OUFARNq6IWFO3IOSOrMfmo/KVQdtdMYJgCPuDK23RHAPYVTLxUtwJA
	nX3RJqpEHGTwMkah0v+hJrkIuvorQTU=
MIME-Version: 1.0
Date: Mon, 28 Mar 2022 09:35:30 +0200
From: Michael Walle <michael@walle.cc>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>, Nicolas Ferre
 <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Claudiu Beznea
 <claudiu.beznea@microchip.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220303161724.3324948-1-michael@walle.cc>
References: <20220303161724.3324948-1-michael@walle.cc>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <5673a4be5ac51d19529366c48afceb8c@walle.cc>
X-Sender: michael@walle.cc
X-MailFrom: michael@walle.cc
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NEULJGVZXPDH7LZ7NXPRE4KJNNVOSBMI
X-Message-ID-Hash: NEULJGVZXPDH7LZ7NXPRE4KJNNVOSBMI
X-Mailman-Approved-At: Wed, 30 Mar 2022 12:40:29 +0000
CC: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] i2c: at91: use dma safe buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NEULJGVZXPDH7LZ7NXPRE4KJNNVOSBMI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi all,

Am 2022-03-03 17:17, schrieb Michael Walle:
> The supplied buffer might be on the stack and we get the following 
> error
> message:
> [    3.312058] at91_i2c e0070600.i2c: rejecting DMA map of vmalloc 
> memory
> 
> Use i2c_{get,put}_dma_safe_msg_buf() to get a DMA-able memory region if
> necessary.
> 
> Cc: stable@vger.kernel.org
> Signed-off-by: Michael Walle <michael@walle.cc>

Any news here?

> ---
> 
> I'm not sure if or which Fixes: tag I should add to this patch. The 
> issue
> seems to be since a very long time, but nobody seem to have triggered 
> it.
> FWIW, I'm using the sff,sfp driver, which triggers this.

-michael
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
