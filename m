Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1E957FF3C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 14:47:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE97B47F27
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 12:47:07 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id DA6613F1CB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jul 2022 12:47:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0446FB80E7E;
	Mon, 25 Jul 2022 12:47:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D26BAC341C8;
	Mon, 25 Jul 2022 12:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658753223;
	bh=gG70nkexN6R7rwhZbK7zPzM/h4w2zfhGvxObm6YIeIc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2MmEMBkhDaPYKBOsckNO7rs8nAwmvC4NddHh3ez0D31mowqKbqiVtOedbV6raS4bL
	 /Yme7QUrqrEZmhRWYIwNKKw0gwXO1LHWEcoj5MxB8dblyHt4VG25F5zT3LyZrPGw75
	 SbhrKqEeA2kZFURSoLHCEx8+S4QE1ZsC0OH6QsQk=
Date: Mon, 25 Jul 2022 14:46:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Message-ID: <Yt6Qw/r0FQ0ElYdn@kroah.com>
References: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
Message-ID-Hash: 7CI3RVB4FEP5QIV6WLAADTPZBDT3II64
X-Message-ID-Hash: 7CI3RVB4FEP5QIV6WLAADTPZBDT3II64
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/5] Add Toshiba Visconti DNN image processing accelerator driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7CI3RVB4FEP5QIV6WLAADTPZBDT3II64/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jul 22, 2022 at 05:28:53PM +0900, Yuji Ishikawa wrote:
> This series is the DNN image processing accelerator driver for Toshiba's ARM SoC, Visconti[0].
> This provides DT binding documentation, device driver, MAINTAINER files and documents.
> 
> Best regards,
> Yuji
> 
> [0]: https://toshiba.semicon-storage.com/ap-en/semiconductor/product/image-recognition-processors-visconti.html
> 
> dt-bindings: soc: visconti: Add Toshiba Visconti DNN image processing accelerator bindings
>   v1 -> v2:
>     - No update
> 
> soc: visconti: Add Toshiba Visconti image processing accelerator common source
>   v1 -> v2:
>     - checked with checkpatch.pl --strict
> 
> soc: visconti: Add Toshiba Visconti DNN image processing accelerator
>   v1 -> v2:
>     - checked with checkpatch.pl --strict
>     - removed unused code
> 
> MAINTAINERS: Add entries for Toshiba Visconti DNN image processing
>   v1 -> v2:
>     - No update
> 
> Documentation: driver-api: visconti: add a description of DNN driver.
>   v1 -> v2:
>     - newly added documents
> 
> Yuji Ishikawa (5):
>   dt-bindings: soc: visconti: Add Toshiba Visconti DNN image processing
>     accelerator bindings
>   soc: visconti: Add Toshiba Visconti image processing accelerator
>     common source
>   soc: visconti: Add Toshiba Visconti DNN image processing accelerator
>   MAINTAINERS: Add entries for Toshiba Visconti DNN image processing
>     accelerator
>   Documentation: driver-api: visconti: add a description of DNN driver.
> 
>  .../soc/visconti/toshiba,visconti-dnn.yaml    |  54 ++
>  Documentation/driver-api/visconti/common.rst  | 115 ++++
>  Documentation/driver-api/visconti/dnn.rst     | 394 +++++++++++++
>  MAINTAINERS                                   |   2 +
>  drivers/soc/Kconfig                           |   1 +
>  drivers/soc/Makefile                          |   1 +
>  drivers/soc/visconti/Kconfig                  |   7 +
>  drivers/soc/visconti/Makefile                 |   8 +
>  drivers/soc/visconti/dnn/Makefile             |   6 +
>  drivers/soc/visconti/dnn/dnn.c                | 523 ++++++++++++++++++
>  drivers/soc/visconti/dnn/hwd_dnn.c            | 183 ++++++
>  drivers/soc/visconti/dnn/hwd_dnn.h            |  68 +++
>  drivers/soc/visconti/dnn/hwd_dnn_reg.h        | 228 ++++++++
>  drivers/soc/visconti/ipa_common.c             |  55 ++
>  drivers/soc/visconti/ipa_common.h             |  18 +
>  drivers/soc/visconti/uapi/dnn.h               |  77 +++
>  drivers/soc/visconti/uapi/ipa.h               |  90 +++

Why is this in drivers/soc/?

And uapi files belong in the correct include path, not burried in a
driver subdirectory where they will never be picked up correctly by the
build system.  How did you test these?

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
