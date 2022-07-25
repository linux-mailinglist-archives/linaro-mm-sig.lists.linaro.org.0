Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 944B457FF46
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 14:48:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9D5947F2B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 12:48:25 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id B10F93F1CB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jul 2022 12:48:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CFDABB80DCD;
	Mon, 25 Jul 2022 12:48:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C19D0C341C8;
	Mon, 25 Jul 2022 12:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658753299;
	bh=qAnVSX5x86qMP5IdsAOZd+epe/BYqA3hZHfOWKWVjGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hUDe4HDOY+CFXvceyY8SSSnKqJV1vBz7byKDOeHSySHrhz4N4E2MrZRLXPh5G/Fdt
	 tRgFYl4Os306khdCifK9zq/ZHJRlmp2odPzPgyBDFP/DCfA2XTezYjh7fEwgzhPpfF
	 d49s/awbT9tghBDe3t8SRnTu/jIZnNAJoAZXs8Bk=
Date: Mon, 25 Jul 2022 14:48:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Message-ID: <Yt6RD2atLwkDrrsu@kroah.com>
References: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
 <20220722082858.17880-4-yuji2.ishikawa@toshiba.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220722082858.17880-4-yuji2.ishikawa@toshiba.co.jp>
Message-ID-Hash: 3X5DCRT2Z3TYDXBJ4NXPQVJJUZUW52B5
X-Message-ID-Hash: 3X5DCRT2Z3TYDXBJ4NXPQVJJUZUW52B5
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/5] soc: visconti: Add Toshiba Visconti DNN image processing accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3X5DCRT2Z3TYDXBJ4NXPQVJJUZUW52B5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jul 22, 2022 at 05:28:56PM +0900, Yuji Ishikawa wrote:
> Add support to DNN image processing accelerator on Toshiba Visconti ARM SoCs.
> The accelerator is applicable to DNN inference tasks.
> 
> Signed-off-by: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
> Reviewed-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
> ---
> v1 -> v2:
>   - applied checkpatch.pl --strict
>   - removed unused code
> ---
>  drivers/soc/visconti/Kconfig           |   6 +
>  drivers/soc/visconti/Makefile          |   2 +
>  drivers/soc/visconti/dnn/Makefile      |   6 +
>  drivers/soc/visconti/dnn/dnn.c         | 523 +++++++++++++++++++++++++
>  drivers/soc/visconti/dnn/hwd_dnn.c     | 183 +++++++++
>  drivers/soc/visconti/dnn/hwd_dnn.h     |  68 ++++
>  drivers/soc/visconti/dnn/hwd_dnn_reg.h | 228 +++++++++++
>  drivers/soc/visconti/uapi/dnn.h        |  77 ++++
>  8 files changed, 1093 insertions(+)
>  create mode 100644 drivers/soc/visconti/dnn/Makefile
>  create mode 100644 drivers/soc/visconti/dnn/dnn.c
>  create mode 100644 drivers/soc/visconti/dnn/hwd_dnn.c
>  create mode 100644 drivers/soc/visconti/dnn/hwd_dnn.h
>  create mode 100644 drivers/soc/visconti/dnn/hwd_dnn_reg.h
>  create mode 100644 drivers/soc/visconti/uapi/dnn.h
> 
> diff --git a/drivers/soc/visconti/Kconfig b/drivers/soc/visconti/Kconfig
> index 8b1378917..a25287d0c 100644
> --- a/drivers/soc/visconti/Kconfig
> +++ b/drivers/soc/visconti/Kconfig
> @@ -1 +1,7 @@
> +if ARCH_VISCONTI
> +
> +config VISCONTI_DNN
> +    bool "Visconti DNN driver"
> +

We can't take Kconfig options with no help text at all, please provide
the needed information here.

And why can't this be a module?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
