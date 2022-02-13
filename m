Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D41074B87E1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:42:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 172463EEC2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:42:46 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 045653ED25
	for <linaro-mm-sig@lists.linaro.org>; Sun, 13 Feb 2022 18:51:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 911B661259;
	Sun, 13 Feb 2022 18:51:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49B95C004E1;
	Sun, 13 Feb 2022 18:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1644778262;
	bh=ajZGYvyhJa3wD0M5n+Jzb3hdgWrFy+cw5hwyaeUdVcg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Mo5Qq7v0KbYG7JASp6Ui4ZOYm01H43aZtdgy/gGmYOwP76CbNOGbVRD36yY5i8NOt
	 QbKyBBg0o9XSsC6foLRZHnM9LSn+99rqQqJg5GiQIT+Ynu+LkwtNTmNJt/emVj3YxK
	 6wo7hm0s+6N8m9up9Q/WrUoc8mHS93FTMuRELe5jzpifEalrZ7aHt416jWu0LCsmkD
	 A+6FwVo2l3GxbEXD1JmRpzJy1nNymNMx74DnXnDcbaJgZggVN8Wf6y8dK8e9iiysbU
	 nfG/YcNdFAxshgCK0BMSpgP54ju2d0Pvog9IcAgeANrsb2KEa1Rc3VdfnqXrhmkj3q
	 eAGba/MMB+s/g==
Date: Sun, 13 Feb 2022 18:57:40 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <20220213185740.0322a83d@jic23-huawei>
In-Reply-To: <20220207125933.81634-2-paul@crapouillou.net>
References: <20220207125933.81634-1-paul@crapouillou.net>
	<20220207125933.81634-2-paul@crapouillou.net>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-MailFrom: jic23@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QYRBLQ7J5AGSMXQCJXR2YOVR4VRCEQPB
X-Message-ID-Hash: QYRBLQ7J5AGSMXQCJXR2YOVR4VRCEQPB
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:32 +0000
CC: Michael Hennerich <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, Alexandru Ardelean <ardeleanalex@gmail.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/12] iio: buffer-dma: Get rid of outgoing queue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QYRBLQ7J5AGSMXQCJXR2YOVR4VRCEQPB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon,  7 Feb 2022 12:59:22 +0000
Paul Cercueil <paul@crapouillou.net> wrote:

> The buffer-dma code was using two queues, incoming and outgoing, to
> manage the state of the blocks in use.
> 
> While this totally works, it adds some complexity to the code,
> especially since the code only manages 2 blocks. It is much easier to
> just check each block's state manually, and keep a counter for the next
> block to dequeue.
> 
> Since the new DMABUF based API wouldn't use the outgoing queue anyway,
> getting rid of it now makes the upcoming changes simpler.
> 
> With this change, the IIO_BLOCK_STATE_DEQUEUED is now useless, and can
> be removed.
> 
> v2: - Only remove the outgoing queue, and keep the incoming queue, as we
>       want the buffer to start streaming data as soon as it is enabled.
>     - Remove IIO_BLOCK_STATE_DEQUEUED, since it is now functionally the
>       same as IIO_BLOCK_STATE_DONE.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---

Trivial process thing but change log should be here, not above as we don't
want it to end up in the main git log.


>  drivers/iio/buffer/industrialio-buffer-dma.c | 44 ++++++++++----------
>  include/linux/iio/buffer-dma.h               |  7 ++--
>  2 files changed, 26 insertions(+), 25 deletions(-)
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
