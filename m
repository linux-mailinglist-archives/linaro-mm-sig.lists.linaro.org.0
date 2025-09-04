Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F91B42E63
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Sep 2025 02:48:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 21C334480A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Sep 2025 00:48:58 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 53972440E5
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Sep 2025 00:48:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=f4a+Hk3X;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9AA3944A9D;
	Thu,  4 Sep 2025 00:48:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9F46C4CEE7;
	Thu,  4 Sep 2025 00:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756946929;
	bh=/eZokcjTYsgn7x3TN1nV0vQhMpWaAhi7YQj4lS/oW5w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=f4a+Hk3XTjiN/mfxv9pyjGmIzHB8EyWE1g9mMRhBYpyErEFM2eLS2RLCNLZ9m+flb
	 usBL3tioZb1jmbnGl2cnprJzZgY+7pXdM1pTdJM/l7LSADXMr8lVMlXEjMiGbORW+l
	 ylL1uOUITFWfR5Vf2cQlWFj287PPpY3SnuOoIUMARaFXEEbDEiJfG2mlCm55uL15H7
	 EeIpGd0/dS2PeLYfhNQl8FVow1ttEyNVHftFywOVWIkdDwukIuF755hy2naOdqX4iN
	 mT+GB2IWk5KvmNBlsutFJjAZgnVXN8wIkBAU7y8uonErOB31WtsIKKO8H9zXSHUUsF
	 U/aLizS4FgT5Q==
Date: Wed, 3 Sep 2025 17:48:47 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Meghana Malladi <m-malladi@ti.com>
Message-ID: <20250903174847.5d8d1c9f@kernel.org>
In-Reply-To: <20250901100227.1150567-2-m-malladi@ti.com>
References: <20250901100227.1150567-1-m-malladi@ti.com>
	<20250901100227.1150567-2-m-malladi@ti.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 53972440E5
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[netdev];
	RCPT_COUNT_TWELVE(0.00)[25];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linutronix.de,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,kernel.org,iogearbox.net,redhat.com,google.com,davemloft.net,lunn.ch,lists.linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,ti.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: POWMDTPVFWG6VRZFP5TC4GXCRSYNHYRI
X-Message-ID-Hash: POWMDTPVFWG6VRZFP5TC4GXCRSYNHYRI
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: namcao@linutronix.de, jacob.e.keller@intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, sdf@fomichev.me, john.fastabend@gmail.com, hawk@kernel.org, daniel@iogearbox.net, ast@kernel.org, pabeni@redhat.com, edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v2 1/6] net: ti: icssg-prueth: Add functions to create and destroy Rx/Tx queues
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/POWMDTPVFWG6VRZFP5TC4GXCRSYNHYRI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 1 Sep 2025 15:32:22 +0530 Meghana Malladi wrote:
>  	if (!emac->xdpi.prog && !prog)
>  		return 0;
>  
> -	WRITE_ONCE(emac->xdp_prog, prog);
> +	if (netif_running(emac->ndev)) {
> +		prueth_destroy_txq(emac);
> +		prueth_destroy_rxq(emac);
> +	}
> +
> +	old_prog = xchg(&emac->xdp_prog, prog);
> +	if (old_prog)
> +		bpf_prog_put(old_prog);
> +
> +	if (netif_running(emac->ndev)) {
> +		ret = prueth_create_rxq(emac);

shutting the device down and freeing all rx memory for reconfig is not
okay. If the system is low on memory the Rx buffer allocations may fail
and system may drop off the network. You must either pre-allocate or
avoid freeing the memory, and just restart the queues.

> +		if (ret) {
> +			netdev_err(emac->ndev, "Failed to create RX queue: %d\n", ret);
> +			return ret;
> +		}
> +
> +		ret = prueth_create_txq(emac);
> +		if (ret) {
> +			netdev_err(emac->ndev, "Failed to create TX queue: %d\n", ret);
> +			prueth_destroy_rxq(emac);
> +			emac->xdp_prog = NULL;
> +			return ret;
> +		}
> +	}
>  
>  	xdp_attachment_setup(&emac->xdpi, bpf);
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
