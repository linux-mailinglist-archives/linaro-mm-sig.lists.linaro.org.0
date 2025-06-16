Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F58ADB675
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Jun 2025 18:17:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC88E44982
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Jun 2025 16:17:30 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id EE1BD4445B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Jun 2025 16:17:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=tPdjG3SN;
	spf=none (lists.linaro.org: domain of rdunlap@infradead.org has no SPF policy when checking 90.155.50.34) smtp.mailfrom=rdunlap@infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=qMUs8krXpT3RxJC3nLENkT9+r0tAUvQgrF/aF9nQOVc=; b=tPdjG3SNgqONBCjSzAb74LT7R6
	qgqINN8bEw7vV0HB3o6Jet97v9TucGDYw4M5+jcPd1IwakNDPixlUiAnPoU23A/uz8Mh+2LP6qyxp
	h4ll3CEZ5wpKRuNRkY3EPpXesyy1MpLNyGvJ8XsuCwC/2tb3x2FLJmxc29eWFx6TmlXR/LEkQCRtI
	4VYWZqG3OLBQaTKAUf/Q1a4sCs2imZu45cTWmHQVflixi51tc3ahDMB4W0JOiwftZiMr9t3/zbiGj
	B1aNMupR4IAKzHztNzB17gLigAKOprfax/2qIjRr50XIcAsKeUfVrOg5IDV2i4A7kSW9GKLWu8RzD
	zxVvVvfw==;
Received: from [50.53.25.54] (helo=[192.168.254.17])
	by casper.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRCWB-0000000G8qT-1kZM;
	Mon, 16 Jun 2025 16:17:07 +0000
Message-ID: <2bc21d27-c7e9-4b74-bae5-d10ad0963e70@infradead.org>
Date: Mon, 16 Jun 2025 09:17:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maxime Ripard <mripard@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>
References: <20250616-dma-buf-heap-names-doc-v2-1-8ae43174cdbf@kernel.org>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20250616-dma-buf-heap-names-doc-v2-1-8ae43174cdbf@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-7.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=casper.20170209];
	RCVD_IN_DNSWL_MED(-0.20)[90.155.50.34:from];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN_FAIL(0.00)[34.50.155.90.asn.rspamd.com:server fail];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,redhat.com,kernel.org,gmail.com];
	DMARC_NA(0.00)[infradead.org];
	FROM_EQ_ENVFROM(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Queue-Id: EE1BD4445B
X-Spamd-Bar: -------
Message-ID-Hash: 55FGYN445MFI436NQPJAOX4JNWSM3NGV
X-Message-ID-Hash: 55FGYN445MFI436NQPJAOX4JNWSM3NGV
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] Documentation: dma-buf: heaps: Add naming guidelines
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/55FGYN445MFI436NQPJAOX4JNWSM3NGV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 6/16/25 8:21 AM, Maxime Ripard wrote:
> We've discussed a number of times of how some heap names are bad, but
> not really what makes a good heap name.
> 
> Let's document what we expect the heap names to look like.
> 
> Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
> Changes in v2:
> - Added justifications for each requirement / suggestions
> - Added a mention and example of buffer attributes
> - Link to v1: https://lore.kernel.org/r/20250520-dma-buf-heap-names-doc-v1-1-ab31f74809ee@kernel.org
> ---
>  Documentation/userspace-api/dma-buf-heaps.rst | 38 +++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
> index 535f49047ce6450796bf4380c989e109355efc05..835ad1c3a65bc07b6f41d387d85c57162909e859 100644
> --- a/Documentation/userspace-api/dma-buf-heaps.rst
> +++ b/Documentation/userspace-api/dma-buf-heaps.rst
> @@ -21,5 +21,43 @@ following heaps:
>     usually created either through the kernel commandline through the
>     `cma` parameter, a memory region Device-Tree node with the
>     `linux,cma-default` property set, or through the `CMA_SIZE_MBYTES` or
>     `CMA_SIZE_PERCENTAGE` Kconfig options. Depending on the platform, it
>     might be called ``reserved``, ``linux,cma``, or ``default-pool``.
> +
> +Naming Convention
> +=================
> +
> +``dma-buf`` heaps name should meet a number of constraints:
> +

For these points below, I would s/That name/The name/ (3 places).

> +- That name must be stable, and must not change from one version to the
> +  other. Userspace identifies heaps by their name, so if the names ever
> +  changes, we would be likely to introduce regressions.

     change,

> +
> +- That name must describe the memory region the heap will allocate from,
> +  and must uniquely identify it in a given platform. Since userspace
> +  applications use the heap name as the discriminant, it must be able to
> +  tell which heap it wants to use reliably if there's multiple heaps.

                                              if there are

> +
> +- That name must not mention implementation details, such as the
> +  allocator. The heap driver will change over time, and implementation
> +  details when it was introduced might not be relevant in the future.
> +
> +- The name should describe properties of the buffers that would be
> +  allocated. Doing so will make heap identification easier for
> +  userspace. Such properties are:
> +
> +  - ``cacheable`` / ``uncacheable`` for buffers with CPU caches enabled
> +    or disabled;
> +
> +  - ``contiguous`` for physically contiguous buffers;
> +
> +  - ``protected`` for encrypted buffers not accessible the OS;
> +
> +- The name may describe intended usage. Doing so will make heap
> +  identification easier for userspace applications and users.
> +
> +For example, assuming a platform with a reserved memory region located
> +at the RAM address 0x42000000, intended to allocate video framebuffers,
> +physically contiguous, and backed by the CMA kernel allocator. Good

   ^^^ Not a complete sentence. Change '.' to ',':     allocator, good

> +names would be ``memory@42000000-cacheable-contiguous`` or
> +``video@42000000``, but ``cma-video`` wouldn't.
> 
> ---
> base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
> change-id: 20250520-dma-buf-heap-names-doc-31261aa0cfe6
> 
> Best regards,

-- 
~Randy

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
