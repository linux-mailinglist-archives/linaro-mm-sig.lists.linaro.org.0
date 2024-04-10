Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB1389E6F0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 02:39:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02B8B40B7D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 00:39:55 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id E7A2B40B7D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Apr 2024 00:39:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lgDGr5W+;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 62B4A61B19;
	Wed, 10 Apr 2024 00:39:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05537C433F1;
	Wed, 10 Apr 2024 00:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712709591;
	bh=rPIGcmKkaKL77xy0kE1sS+HitVg+d/OiK8zkBdMTGF4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=lgDGr5W+S1Mo/vVh51AzT36WYsN43KOdv2HUfV5OeoOGAeleNf+qD1QCKnVmw0f0U
	 KO/r9TUZ8143nBmmM0Qm0kfLSuNPR+q603FcX4WKnZ9O2zPhGlRLyZk9ouI3oEE2u+
	 xS4V4CtN5844T1z0xi98+DiGzT+tVt6J9U0tn83SkLMJlJBqb8J70g1FlMh3BnZk1t
	 PFyuwjn9p18IQ3bR9TgpM4o/aAIY9pOiY2znYey78v9rqgcBeo9vq8WCC/pnMi2gxg
	 TMgOlogCc1vvBqYyXQZzoy3ij/wFam0X+B4vIoxFbJH+PSXVmgCcnY4V7cUgtU0Uy/
	 ZcEuE+smnLljw==
Date: Tue, 9 Apr 2024 17:39:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Julien Panis <jpanis@baylibre.com>
Message-ID: <20240409173948.66abe6fa@kernel.org>
In-Reply-To: <20240223-am65-cpsw-xdp-basic-v8-2-f3421b58da09@baylibre.com>
References: <20240223-am65-cpsw-xdp-basic-v8-0-f3421b58da09@baylibre.com>
	<20240223-am65-cpsw-xdp-basic-v8-2-f3421b58da09@baylibre.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: E7A2B40B7D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,redhat.com,armlinux.org.uk,kernel.org,iogearbox.net,gmail.com,linaro.org,amd.com,lunn.ch,marvell.com,ti.com,huawei.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KDOMLHQHTL373BNLEVDWBH4GVAJRN2NJ
X-Message-ID-Hash: KDOMLHQHTL373BNLEVDWBH4GVAJRN2NJ
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Ratheesh Kannoth <rkannoth@marvell.com>, Naveen Mamindlapalli <naveenm@marvell.com>, danishanwar@ti.com, yuehaibing@huawei.com, rogerq@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v8 2/3] net: ethernet: ti: Add desc_infos member to struct k3_cppi_desc_pool
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KDOMLHQHTL373BNLEVDWBH4GVAJRN2NJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 08 Apr 2024 11:38:03 +0200 Julien Panis wrote:
>  		goto gen_pool_create_fail;
>  	}
>  
> +	pool->desc_infos = kcalloc(pool->num_desc,
> +				   sizeof(*pool->desc_infos), GFP_KERNEL);
> +	if (!pool->desc_infos) {
> +		ret = -ENOMEM;
> +		dev_err(pool->dev,
> +			"pool descriptor infos alloc failed %d\n", ret);

Please don't add errors on mem alloc failures. They just bloat the
kernel, there will be a rather large OOM splat in the logs if GFP_KERNEL
allocation fails.

> +		kfree_const(pool_name);
> +		goto gen_pool_desc_infos_alloc_fail;
> +	}
> +
>  	pool->gen_pool->name = pool_name;

If you add the new allocation after this line, I think you wouldn't
have to free pool_name under the if () explicitly.
-- 
pw-bot: cr
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
