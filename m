Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 498D67CF747
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:45:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B97A40C42
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:45:05 +0000 (UTC)
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	by lists.linaro.org (Postfix) with ESMTPS id 192483EE98
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Sep 2023 19:09:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=embeddedor.com header.s=default header.b=R5stTqN9;
	spf=pass (lists.linaro.org: domain of gustavo@embeddedor.com designates 44.202.169.37 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com;
	dmarc=none
Received: from eig-obgw-6001a.ext.cloudfilter.net ([10.0.30.140])
	by cmsmtp with ESMTP
	id iE56qaczEWU1ciJcGqlIgx; Mon, 18 Sep 2023 19:09:04 +0000
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with ESMTPS
	id iJcFqRFKtcYETiJcFqiuGr; Mon, 18 Sep 2023 19:09:03 +0000
X-Authority-Analysis: v=2.4 cv=TuT1ORbh c=1 sm=1 tr=0 ts=6508a04f
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=P7XfKmiOJ4/qXqHZrN7ymg==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=VSjF23E3Ok2ZiNtq:21 a=IkcTkHD0fZMA:10 a=zNV7Rl7Rt7sA:10 a=wYkD_t78qR0A:10
 a=Z0r0GRSmFf-DnjB3DMoA:9 a=QEXdDO2ut3YA:10 a=m8lDLIEVUrKgScV2SIex:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=B5tMPsVfntUMhpYWlnMiaWsyGXw6mb8koJoFx0gfO7o=; b=R5stTqN9xsgrwySPbtSX0O9i5C
	QSXuTu1SYXfR2ATKJiqLloT737kEr+VHOUSROOe+SqonHTpduxrILJFZITReMz0V7AJKC8gPXobXh
	0Lm80V938IYFqLDoH4OOx5utnFMKK3wtZ2QU5N/V7kb8wk2MDkp8nAhBQ2y7yagexWD3d489w8jbh
	sukPkV8YB4hICJgIAdIy4h2WMrWtFa+DoKNeXa8xr2rszFNbYMUehImHzgvi3otIFdDlGM3mApiTW
	cC28tfr7BXK/TgMPFka4DdmtMKSQrBVlO03OWWt495psWkdTXQV39LiONiRc30iYzRJauvyYrQoAb
	93C5X22A==;
Received: from [94.239.20.48] (port=51062 helo=[192.168.1.98])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96)
	(envelope-from <gustavo@embeddedor.com>)
	id 1qiJcD-003BP8-0d;
	Mon, 18 Sep 2023 14:09:01 -0500
Message-ID: <7043f179-b670-db3c-3ab0-a1f3e991add9@embeddedor.com>
Date: Sun, 17 Sep 2023 21:10:05 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <3e37f05c7593f1016f0a46de188b3357cbbd0c0b.1695060389.git.christophe.jaillet@wanadoo.fr>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <3e37f05c7593f1016f0a46de188b3357cbbd0c0b.1695060389.git.christophe.jaillet@wanadoo.fr>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.linaro.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 94.239.20.48
X-Source-L: No
X-Exim-ID: 1qiJcD-003BP8-0d
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.98]) [94.239.20.48]:51062
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfIgTysrxOwdfEQvj4lZOOAs+GAIMyujZTaUUqgUwVMmcleAC5YRW0DHGvlEXkNMUFKexCXgAm23NwiIBse83tsOFz4M3rt2Kex/XcOBRGBv6jCjxHC4X
 6G116s8k5aZfqcbkTStjXSDaFFe3oHQcyh2z65rLd0m2J8Xq+eH2mtvs2v8tco9ojeTjY3hG3X/UNNgdxV0z+LqyGBxu4XQ+faT23ZyDrP3hm0DCSrsjmIwe
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+ip4:44.202.169.32/29];
	R_DKIM_ALLOW(-0.20)[embeddedor.com:s=default];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_NEUTRAL(0.00)[44.202.169.37:from];
	HAS_X_SOURCE(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[wanadoo.fr,redhat.com,linaro.org,amd.com,ffwll.ch];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[embeddedor.com];
	DKIM_TRACE(0.00)[embeddedor.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 192483EE98
X-MailFrom: gustavo@embeddedor.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UYVL3PU3MNVVSXF5PDHTEHWTJ56EAQYN
X-Message-ID-Hash: UYVL3PU3MNVVSXF5PDHTEHWTJ56EAQYN
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:44:56 +0000
CC: linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: Fix a potential (and unlikely) access to unallocated memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UYVL3PU3MNVVSXF5PDHTEHWTJ56EAQYN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit



On 9/18/23 12:46, Christophe JAILLET wrote:
> If 'list_limit' is set to a very high value, 'lsize' computation could
> overflow if 'head.count' is big enough.
> 
> In such a case, udmabuf_create() will access to memory beyond 'list'.
> 
> Use size_mul() to saturate the value, and have memdup_user() fail.
> 
> Fixes: fbb0de795078 ("Add udmabuf misc device")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>   drivers/dma-buf/udmabuf.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> index c40645999648..fb4c4b5b3332 100644
> --- a/drivers/dma-buf/udmabuf.c
> +++ b/drivers/dma-buf/udmabuf.c
> @@ -314,13 +314,13 @@ static long udmabuf_ioctl_create_list(struct file *filp, unsigned long arg)
>   	struct udmabuf_create_list head;
>   	struct udmabuf_create_item *list;
>   	int ret = -EINVAL;
> -	u32 lsize;
> +	size_t lsize;
>   
>   	if (copy_from_user(&head, (void __user *)arg, sizeof(head)))
>   		return -EFAULT;
>   	if (head.count > list_limit)
>   		return -EINVAL;
> -	lsize = sizeof(struct udmabuf_create_item) * head.count;
> +	lsize = size_mul(sizeof(struct udmabuf_create_item), head.count);
>   	list = memdup_user((void __user *)(arg + sizeof(head)), lsize);
>   	if (IS_ERR(list))
>   		return PTR_ERR(list);

How about this, and we get rid of `lsize`:

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index c40645999648..5cf9d849aaa8 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -314,14 +314,13 @@ static long udmabuf_ioctl_create_list(struct file *filp, unsigned long arg)
         struct udmabuf_create_list head;
         struct udmabuf_create_item *list;
         int ret = -EINVAL;
-       u32 lsize;

         if (copy_from_user(&head, (void __user *)arg, sizeof(head)))
                 return -EFAULT;
         if (head.count > list_limit)
                 return -EINVAL;
-       lsize = sizeof(struct udmabuf_create_item) * head.count;
-       list = memdup_user((void __user *)(arg + sizeof(head)), lsize);
+       list = memdup_user((void __user *)(arg + sizeof(head)),
+                          size_mul(sizeof(*list), head.count));
         if (IS_ERR(list))
                 return PTR_ERR(list);


--
Gustavo
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
