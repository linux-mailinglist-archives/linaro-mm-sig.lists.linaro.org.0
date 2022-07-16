Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FBB58E7EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 09:37:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E12E047955
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 07:37:27 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
	by lists.linaro.org (Postfix) with ESMTPS id 93A123EA16
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 Jul 2022 04:36:36 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oCZXI-00019a-Ue; Sat, 16 Jul 2022 06:36:12 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oCZXF-0002ra-LA; Sat, 16 Jul 2022 06:36:09 +0200
Date: Sat, 16 Jul 2022 06:36:09 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Flavio Suligoi <f.suligoi@asem.it>
Message-ID: <20220716043609.GI24373@pengutronix.de>
References: <20220715134218.595269-1-f.suligoi@asem.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220715134218.595269-1-f.suligoi@asem.it>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-MailFrom: ore@pengutronix.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RPUEQWGCTP3VB2UJSZRLHK4P3SQVFEIH
X-Message-ID-Hash: RPUEQWGCTP3VB2UJSZRLHK4P3SQVFEIH
X-Mailman-Approved-At: Wed, 10 Aug 2022 07:37:25 +0000
CC: Oleksij Rempel <linux@rempel-privat.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] i2c: imx: fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RPUEQWGCTP3VB2UJSZRLHK4P3SQVFEIH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jul 15, 2022 at 03:42:18PM +0200, Flavio Suligoi wrote:
> to provid --> to provide
> 
> Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>

Acked-by: Oleksij Rempel <o.rempel@pengutronix.de>

Thank you.

> ---
> v2:
>  - fix typo in subject
> 
>  drivers/i2c/busses/i2c-imx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index e9e2db68b9fb..78fb1a4274a6 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -66,7 +66,7 @@
>  
>  /* IMX I2C registers:
>   * the I2C register offset is different between SoCs,
> - * to provid support for all these chips, split the
> + * to provide support for all these chips, split the
>   * register offset into a fixed base address and a
>   * variable shift value, then the full register offset
>   * will be calculated by
> -- 
> 2.25.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
