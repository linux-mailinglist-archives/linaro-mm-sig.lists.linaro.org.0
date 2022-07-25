Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B7457FF4D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 14:51:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 875133F47B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 12:51:04 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 5BF4A3F1E4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jul 2022 12:51:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7D1A6B80DCD;
	Mon, 25 Jul 2022 12:51:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACBF9C341C6;
	Mon, 25 Jul 2022 12:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658753459;
	bh=rq5R6ViRqezzEg2QCXeGAAFf0M/MhLMEh9Y9kPhCsUk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dhB+MLIaybwyHgnuLVDeuvhX3rnJNJld+K2syPmBtOn0/iGZXhpVXeMURkfGHraiI
	 3o/0BS9KjGoUvRCcubBZFyDGTScQiwKfC9cxB4cDsqUHtv0xhEDr3s9gbk2YjMWg21
	 7use+ezgMFrLWyPHjfBulZ2WOGGjq99E12rwQphA=
Date: Mon, 25 Jul 2022 14:50:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Message-ID: <Yt6Rryi4SHVc4DR4@kroah.com>
References: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
 <20220722082858.17880-4-yuji2.ishikawa@toshiba.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220722082858.17880-4-yuji2.ishikawa@toshiba.co.jp>
Message-ID-Hash: IZRLDLQ3LHGOPCA7V6PGDCPSYINSVXE2
X-Message-ID-Hash: IZRLDLQ3LHGOPCA7V6PGDCPSYINSVXE2
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/5] soc: visconti: Add Toshiba Visconti DNN image processing accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IZRLDLQ3LHGOPCA7V6PGDCPSYINSVXE2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jul 22, 2022 at 05:28:56PM +0900, Yuji Ishikawa wrote:
> --- /dev/null
> +++ b/drivers/soc/visconti/uapi/dnn.h
> @@ -0,0 +1,77 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/* Toshiba Visconti DNN Accelerator Support
> + *
> + * (C) Copyright 2022 TOSHIBA CORPORATION
> + * (C) Copyright 2022 Toshiba Electronic Devices & Storage Corporation
> + */
> +
> +#ifndef _UAPI_LINUX_DNN_H
> +#define _UAPI_LINUX_DNN_H
> +
> +#include <linux/ioctl.h>
> +#include <linux/types.h>
> +#include "ipa.h"
> +
> +#define DRV_DNN_BIT_CONFIG_DESC_FINAL (0x8000U)
> +#define DRV_DNN_BUFFER_INDEX_MAX      (15)
> +
> +#define DRV_DNN_BASE_ADDR_NUM (8U) /* DNN number of base address */
> +
> +#define DRV_DNN_BASE_ADDR_PURPOSE_INPUT	    (1U)
> +#define DRV_DNN_BASE_ADDR_PURPOSE_OUTPUT    (2U)
> +#define DRV_DNN_BASE_ADDR_PURPOSE_AWB	    (3U)
> +#define DRV_DNN_BASE_ADDR_PURPOSE_TEMPORARY (4U)
> +
> +/**
> + * struct drv_dnn_status - DNN IPA status for IOC_IPA_GET_STATUS
> + *
> + * @state:     State of driver
> + * @eer_cmd:   Execution error command
> + * @eer:       Execution error
> + * @reserved:  Padding
> + * @eer_flags: Execution error flags
> + */
> +struct drv_dnn_status {
> +	enum drv_ipa_state state;
> +	__u32 eer_cmd;
> +	__u32 eer : 1;
> +	__u32 reserved : 31;

bitfields will not work like this for uapi files, sorry.

> +	__u32 eer_flags[32];

What endian is all of these?  Big?  Little?  Unknown?

> +};
> +
> +struct drv_dnn_base_addr {
> +	__u32 purpose;
> +	union {
> +		struct drv_ipa_addr ipa_addr;
> +		uintptr_t list_addr;

You really do not ever want a uintptr_t in a uapi file, that's not going
to be portable at all.  It's also not a valid kernel type :(

No documentation on what "purpose" is for?

> +	} addr;
> +};
> +
> +/**
> + * struct drv_dnn_descriptor - DNN IPA Descriptor for IOC_IPA_START
> + *
> + * @configuration:        Address of configuration data
> + * @configuration_offset: Configuration offset
> + * @configuration_size:   Configuration data size
> + * @list_num:             Number of input/output list
> + * @base_addr:            Base addresses
> + * @base_addr_flag:       Bit-fields of base_addr list config;
> + *                        0 for fixed address,
> + *                        1 for address list.

Where are the bitfield definitions?

What about unused bits, what happens with them?  You are checking them,
right?

> + * @config_done:          Flags of called configuration
> + * @buffer_info:          Table of buffer information
> + * @buffer_info_num:      Number of buffer_info
> + */
> +struct drv_dnn_descriptor {
> +	struct drv_ipa_addr configuration;
> +	__u32 configuration_offset;

What endian are any of these?

thanks,

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
