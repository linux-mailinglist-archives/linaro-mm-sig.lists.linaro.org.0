Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3893F4584B0
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Nov 2021 17:24:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D57D6206D
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 21 Nov 2021 16:23:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 46A6F62164; Sun, 21 Nov 2021 16:23:57 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF22260BAA;
	Sun, 21 Nov 2021 16:23:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EC51960591
 for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Nov 2021 16:23:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E8AC76079C; Sun, 21 Nov 2021 16:23:46 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
 by lists.linaro.org (Postfix) with ESMTPS id D119960591
 for <linaro-mm-sig@lists.linaro.org>; Sun, 21 Nov 2021 16:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de; 
 s=default2002;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID;
 bh=oZVCnlPC3T6cEUOtCE9ILr/4ExEi3Cvw3mp4gMnNg/4=; b=Q+8ikT8LHTflCRifKN7/GdmmFu
 AjbGDFjvXhBwuj7G0SN3oOEl7CzyOJaxw3/NcsU4DV4aboW68kayZEtYcOFXbwvYwaD2HP+HkJjpp
 VznB5LMl2SuskGBaIUi8Qo55mJaihRRvyxAveX1yMWcyNSXmoLpX/HaZi7Q/vnaxtEGOC/FCv1OT0
 73052P+KU+aN/RkhrXeJYArqT4Z8/Fpwpx4fOTrMeF27eSJ9JV/0lY992WBqPpBdxhE1ZjdS4FgtI
 pHr/ZD0kIwY7YC02lhb1vi4+hk0hyVzvoFPV96E+gtn2DvysrOt5Vr3KrXgyXxwHvNlqk3qkqtXEx
 ln/6SXTg==;
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www381.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <lars@metafoo.de>)
 id 1mopcu-0008HE-57; Sun, 21 Nov 2021 17:23:36 +0100
Received: from [82.135.83.112] (helo=[192.168.178.20])
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <lars@metafoo.de>)
 id 1mopct-000Qqa-T4; Sun, 21 Nov 2021 17:23:35 +0100
To: Paul Cercueil <paul@crapouillou.net>, Jonathan Cameron <jic23@kernel.org>
References: <20211115141925.60164-1-paul@crapouillou.net>
 <20211115141925.60164-2-paul@crapouillou.net>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <e2689f0d-dc16-2519-57df-d98caadb07b0@metafoo.de>
Date: Sun, 21 Nov 2021 17:23:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211115141925.60164-2-paul@crapouillou.net>
Content-Language: en-US
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.3/26360/Sun Nov 21 10:19:26 2021)
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/15] iio: buffer-dma: Get rid of
 incoming/outgoing queues
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Alexandru Ardelean <ardeleanalex@gmail.com>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On 11/15/21 3:19 PM, Paul Cercueil wrote:
> The buffer-dma code was using two queues, incoming and outgoing, to
> manage the state of the blocks in use.
>
> While this totally works, it adds some complexity to the code,
> especially since the code only manages 2 blocks. It is much easier to
> just check each block's state manually, and keep a counter for the next
> block to dequeue.
>
> Since the new DMABUF based API wouldn't use these incoming and outgoing
> queues anyway, getting rid of them now makes the upcoming changes
> simpler.
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
The outgoing queue is going to be replaced by fences, but I think we 
need to keep the incoming queue.
> [...]
> @@ -442,28 +435,33 @@ EXPORT_SYMBOL_GPL(iio_dma_buffer_disable);
>   static void iio_dma_buffer_enqueue(struct iio_dma_buffer_queue *queue,
>   	struct iio_dma_buffer_block *block)
>   {
> -	if (block->state == IIO_BLOCK_STATE_DEAD) {
> +	if (block->state == IIO_BLOCK_STATE_DEAD)
>   		iio_buffer_block_put(block);
> -	} else if (queue->active) {
> +	else if (queue->active)
>   		iio_dma_buffer_submit_block(queue, block);
> -	} else {
> +	else
>   		block->state = IIO_BLOCK_STATE_QUEUED;
> -		list_add_tail(&block->head, &queue->incoming);
If iio_dma_buffer_enqueue() is called with a dmabuf and the buffer is 
not active, it will be marked as queued, but we don't actually keep a 
reference to it anywhere. It will never be submitted to the DMA, and it 
will never be signaled as completed.

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
