Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLKiB1X94GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:16:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCDF4106F8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:16:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA39D4099C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:16:35 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id CC4233F6F4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Nov 2025 10:36:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=D34ygwUk;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of horms@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=horms@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1ADF06016F;
	Fri, 14 Nov 2025 10:36:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5859C16AAE;
	Fri, 14 Nov 2025 10:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763116600;
	bh=L2b6ovufuyOt5g32IaXTrP6gxb4p0lvhYk/QMzL7CJs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D34ygwUkaO6WppRI8fXcJ3A6BLaqCr0fNnDObMD8fJrTRPxTM7uWoU8ibS7b48U6h
	 QoMwQvDWY8pG7VgK1eTSn6R/AjU54XduoGsAnBLwX11YIroehRNgdl3jNE1jZu+gzr
	 fkm35KnnUiLtpAH2DYW3mt1t5EQg6f8EJkjQy+wZHrhwbXYEremTOlk/YdJJWy7tAq
	 RoQLFjUwt3P2iGp5QLOKVwNsAPliSgfqaE015PrF1GD8ye19//iE/3DP4qom4JLWir
	 sXB1McFrxuaPiaHkEtWoXPHDtF6v6s4QLPJuinyg1qXN3XdzLE2n106PGDu3TUgEaf
	 qQluzMKzcqB6Q==
Date: Fri, 14 Nov 2025 10:36:33 +0000
From: Simon Horman <horms@kernel.org>
To: Meghana Malladi <m-malladi@ti.com>
Message-ID: <aRcGMTRzDFwe23NV@horms.kernel.org>
References: <20251111101523.3160680-1-m-malladi@ti.com>
 <20251111101523.3160680-2-m-malladi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111101523.3160680-2-m-malladi@ti.com>
X-Spamd-Bar: --
X-MailFrom: horms@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U4OEYGLNH4JSMB5MCYVZILGKKYIXKPBZ
X-Message-ID-Hash: U4OEYGLNH4JSMB5MCYVZILGKKYIXKPBZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:57:00 +0000
CC: namcao@linutronix.de, vadim.fedorenko@linux.dev, jacob.e.keller@intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, sdf@fomichev.me, john.fastabend@gmail.com, hawk@kernel.org, daniel@iogearbox.net, ast@kernel.org, pabeni@redhat.com, kuba@kernel.org, edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v5 1/6] net: ti: icssg-prueth: Add functions to create and destroy Rx/Tx queues
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U4OEYGLNH4JSMB5MCYVZILGKKYIXKPBZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[3676];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_CC(0.00)[linutronix.de,linux.dev,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,kernel.org,iogearbox.net,redhat.com,google.com,davemloft.net,lunn.ch,lists.linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,ti.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.424];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: ACCDF4106F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Nov 11, 2025 at 03:45:18PM +0530, Meghana Malladi wrote:

...

> diff --git a/drivers/net/ethernet/ti/icssg/icssg_prueth.c b/drivers/net/ethernet/ti/icssg/icssg_prueth.c
> index 57a7d1ceab08..b66ffbfb499c 100644
> --- a/drivers/net/ethernet/ti/icssg/icssg_prueth.c
> +++ b/drivers/net/ethernet/ti/icssg/icssg_prueth.c
> @@ -735,6 +735,114 @@ static int icssg_update_vlan_mcast(struct net_device *vdev, int vid,
>  	return 0;
>  }
>  
> +static void prueth_destroy_txq(struct prueth_emac *emac)
> +{
> +	int ret, i;
> +
> +	atomic_set(&emac->tdown_cnt, emac->tx_ch_num);
> +	/* ensure new tdown_cnt value is visible */
> +	smp_mb__after_atomic();
> +	/* tear down and disable UDMA channels */
> +	reinit_completion(&emac->tdown_complete);
> +	for (i = 0; i < emac->tx_ch_num; i++)
> +		k3_udma_glue_tdown_tx_chn(emac->tx_chns[i].tx_chn, false);
> +
> +	ret = wait_for_completion_timeout(&emac->tdown_complete,
> +					  msecs_to_jiffies(1000));
> +	if (!ret)
> +		netdev_err(emac->ndev, "tx teardown timeout\n");
> +
> +	for (i = 0; i < emac->tx_ch_num; i++) {
> +		napi_disable(&emac->tx_chns[i].napi_tx);
> +		hrtimer_cancel(&emac->tx_chns[i].tx_hrtimer);
> +		k3_udma_glue_reset_tx_chn(emac->tx_chns[i].tx_chn,
> +					  &emac->tx_chns[i],
> +					  prueth_tx_cleanup);
> +		k3_udma_glue_disable_tx_chn(emac->tx_chns[i].tx_chn);
> +	}
> +}
> +
> +static void prueth_destroy_rxq(struct prueth_emac *emac)
> +{
> +	int i, ret;
> +
> +	/* tear down and disable UDMA channels */
> +	reinit_completion(&emac->tdown_complete);
> +	k3_udma_glue_tdown_rx_chn(emac->rx_chns.rx_chn, true);
> +
> +	/* When RX DMA Channel Teardown is initiated, it will result in an
> +	 * interrupt and a Teardown Completion Marker (TDCM) is queued into
> +	 * the RX Completion queue. Acknowledging the interrupt involves
> +	 * popping the TDCM descriptor from the RX Completion queue via the
> +	 * RX NAPI Handler. To avoid timing out when waiting for the TDCM to
> +	 * be popped, schedule the RX NAPI handler to run immediately.
> +	 */
> +	if (!napi_if_scheduled_mark_missed(&emac->napi_rx)) {
> +		if (napi_schedule_prep(&emac->napi_rx))
> +			__napi_schedule(&emac->napi_rx);
> +	}
> +
> +	ret = wait_for_completion_timeout(&emac->tdown_complete,
> +					  msecs_to_jiffies(1000));
> +	if (!ret)
> +		netdev_err(emac->ndev, "rx teardown timeout\n");
> +
> +	for (i = 0; i < PRUETH_MAX_RX_FLOWS; i++) {
> +		napi_disable(&emac->napi_rx);
> +		hrtimer_cancel(&emac->rx_hrtimer);

Hi Meghana,

Is it intentional that the napi_disable() and hrtimer_cancel()
are made once for each (possible) flow, rather than just once
as was the case before this patch?

Maybe the tx code, which does the same, was used as a template here
in error?

Flagged by Claude Code with https://github.com/masoncl/review-prompts/

> +		k3_udma_glue_reset_rx_chn(emac->rx_chns.rx_chn, i,
> +					  &emac->rx_chns,
> +					  prueth_rx_cleanup);
> +	}
> +
> +	prueth_destroy_xdp_rxqs(emac);
> +	k3_udma_glue_disable_rx_chn(emac->rx_chns.rx_chn);
> +}

...

> @@ -905,32 +988,8 @@ static int emac_ndo_stop(struct net_device *ndev)
>  	else
>  		__dev_mc_unsync(ndev, icssg_prueth_del_mcast);
>  
> -	atomic_set(&emac->tdown_cnt, emac->tx_ch_num);
> -	/* ensure new tdown_cnt value is visible */
> -	smp_mb__after_atomic();
> -	/* tear down and disable UDMA channels */
> -	reinit_completion(&emac->tdown_complete);
> -	for (i = 0; i < emac->tx_ch_num; i++)
> -		k3_udma_glue_tdown_tx_chn(emac->tx_chns[i].tx_chn, false);
> -
> -	ret = wait_for_completion_timeout(&emac->tdown_complete,
> -					  msecs_to_jiffies(1000));
> -	if (!ret)
> -		netdev_err(ndev, "tx teardown timeout\n");
> -
> -	prueth_reset_tx_chan(emac, emac->tx_ch_num, true);
> -	for (i = 0; i < emac->tx_ch_num; i++) {
> -		napi_disable(&emac->tx_chns[i].napi_tx);
> -		hrtimer_cancel(&emac->tx_chns[i].tx_hrtimer);
> -	}
> -
> -	max_rx_flows = PRUETH_MAX_RX_FLOWS;
> -	k3_udma_glue_tdown_rx_chn(emac->rx_chns.rx_chn, true);
> -
> -	prueth_reset_rx_chan(&emac->rx_chns, max_rx_flows, true);
> -	prueth_destroy_xdp_rxqs(emac);
> -	napi_disable(&emac->napi_rx);
> -	hrtimer_cancel(&emac->rx_hrtimer);
> +	prueth_destroy_txq(emac);
> +	prueth_destroy_rxq(emac);
>  
>  	cancel_work_sync(&emac->rx_mode_work);
>  
> @@ -943,10 +1002,10 @@ static int emac_ndo_stop(struct net_device *ndev)
>  
>  	free_irq(emac->tx_ts_irq, emac);
>  
> -	free_irq(emac->rx_chns.irq[rx_flow], emac);
> +	free_irq(emac->rx_chns.irq[PRUETH_RX_FLOW_DATA], emac);
>  	prueth_ndev_del_tx_napi(emac, emac->tx_ch_num);
>  
> -	prueth_cleanup_rx_chns(emac, &emac->rx_chns, max_rx_flows);
> +	prueth_cleanup_rx_chns(emac, &emac->rx_chns, PRUETH_MAX_RX_FLOWS);
>  	prueth_cleanup_tx_chns(emac);
>  
>  	prueth->emacs_initialized--;

...
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
