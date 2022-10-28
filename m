Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B9407611510
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 16:47:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 984543F5A4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 14:47:51 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by lists.linaro.org (Postfix) with ESMTPS id 04EF53EC30
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 14:47:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=lwn.net header.s=20201203 header.b=YPUMK7Nb;
	spf=pass (lists.linaro.org: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net;
	dmarc=none
Received: from localhost (unknown [IPv6:2601:281:8300:73::5f6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 0623260C;
	Fri, 28 Oct 2022 14:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 0623260C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1666968454; bh=UtbBjtOCDmxG1fiAjntsLrhrfFgg1H/OVy+mHU9Tdic=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=YPUMK7NbZEWiVJxDd81wBZav9MFex8t217mE4PTTWDl1Wycu8GM6Ea9a1vRzQ6K4s
	 LB7lTKlSS1ZmpG7NdF0hatynkN3t1WCNrag2zPTpYp8Msw6DjzzGxXOLTagWQfStM5
	 OpzNr69zoX0ZplnOKZjT7c3Gdpe26YiCH/GCuvVKjggGKnoYVlW8q52BozogUqaHaf
	 lqbfUUsSLqzTySycQ7oJUAd39iZ6MnYN5bJxYZfwTw6xy6OrG5GkA6RIbXH+7RLbyz
	 i9pvY3yXqHCvRhxsT6z+QxdZ90sNaW8G8ij9tPpOZYwQ1kmZ7kWl3ddSJDgLnmf13s
	 uYKklGhEZ+f3w==
From: Jonathan Corbet <corbet@lwn.net>
To: Mark-PK Tsai <mark-pk.tsai@mediatek.com>, bagasdotme@gmail.com
In-Reply-To: <20221028065907.23954-1-mark-pk.tsai@mediatek.com>
References: <Y1tSWo+eRvkVofbv@debian.me>
 <20221028065907.23954-1-mark-pk.tsai@mediatek.com>
Date: Fri, 28 Oct 2022 08:47:33 -0600
Message-ID: <87k04k6m4a.fsf@meer.lwn.net>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -------
X-Rspamd-Queue-Id: 04EF53EC30
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[45.79.88.28:from];
	R_DKIM_ALLOW(-0.20)[lwn.net:s=20201203];
	R_SPF_ALLOW(-0.20)[+a:mail.lwn.net];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_NA(0.00)[lwn.net];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:63949, ipnet:45.79.64.0/19, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,gmail.com];
	DKIM_TRACE(0.00)[lwn.net:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,collabora.com,amd.com,lists.freedesktop.org,google.com,redhat.com,lists.linaro.org,lists.infradead.org,vger.kernel.org,codeaurora.org,mediatek.com,gmail.com,linaro.org]
Message-ID-Hash: GYKV7RJOONMI72CIXUBFXRQ764WWTCZ4
X-Message-ID-Hash: GYKV7RJOONMI72CIXUBFXRQ764WWTCZ4
X-MailFrom: corbet@lwn.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, labbott@redhat.com, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, lmark@codeaurora.org, mark-pk.tsai@mediatek.com, matthias.bgg@gmail.com, sumit.semwal@linaro.org, yj.chiang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: cma_heap: Fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GYKV7RJOONMI72CIXUBFXRQ764WWTCZ4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Mark-PK Tsai <mark-pk.tsai@mediatek.com> writes:

>> [-- Attachment #1: Type: text/plain, Size: 349 bytes --]
>> 
>> On Fri, Oct 28, 2022 at 09:44:17AM +0800, Mark-PK Tsai wrote:
>> > Remove duplicated "by" from comment in cma_heap_allocate().
>> > 
>> 
>> This patch isn't typofix but duplicate word stripping, right? If so, the
>> patch subject should be "dma-buf: cma_heap: Remove duplicated 'by'".
>
> Okay, I've update the title in v3.
> Sorry for the horrible commit description.
> Thanks.

Your original commit description was just fine, you just had the bad
luck to draw the attention of somebody who likes telling other
contributors what to do.

Thanks,

jon
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
