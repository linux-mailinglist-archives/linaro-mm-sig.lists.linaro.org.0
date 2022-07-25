Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 409D657FF40
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 14:47:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F4C13F496
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jul 2022 12:47:32 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1317E3F1CB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jul 2022 12:47:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8C8F361092;
	Mon, 25 Jul 2022 12:47:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 045EAC341C8;
	Mon, 25 Jul 2022 12:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1658753249;
	bh=qsudKb7qDhD5skgxgIjGHUvCaHzlsnnqamDhI8iMgLQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uLLaqHpk431RFpbdi2equ6oX5N9rzgMYLczJ60x10wVMBXjfEazXE0iE7vhBtIeEf
	 xl2IACj+lOIj1mSFoZC37a507NYdF8TVZeum7yXp6Lo4CeeHu1g2wfdTHBMpqyENjC
	 W89hg4h6sn8Q+we77W/7/QgT08xUCRvVuHdtUT6Q=
Date: Mon, 25 Jul 2022 14:47:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Message-ID: <Yt6Q3A4tkmu797eX@kroah.com>
References: <20220722082858.17880-1-yuji2.ishikawa@toshiba.co.jp>
 <20220722082858.17880-5-yuji2.ishikawa@toshiba.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220722082858.17880-5-yuji2.ishikawa@toshiba.co.jp>
Message-ID-Hash: Z3T6K6XAUDZYQISFVAR6LIC3JBVJTF22
X-Message-ID-Hash: Z3T6K6XAUDZYQISFVAR6LIC3JBVJTF22
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/5] MAINTAINERS: Add entries for Toshiba Visconti DNN image processing accelerator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z3T6K6XAUDZYQISFVAR6LIC3JBVJTF22/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jul 22, 2022 at 05:28:57PM +0900, Yuji Ishikawa wrote:
> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)

No changelog text?

No signed-off-by?

Are you sure that checkpatch passed this patch?

greg k-h
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
