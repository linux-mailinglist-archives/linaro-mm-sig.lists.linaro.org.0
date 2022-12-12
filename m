Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C86649A38
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Dec 2022 09:42:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D8D943EEA3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Dec 2022 08:42:11 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1CFF73EA4D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Dec 2022 08:42:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=iQcLCJ7a;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 96BD860F24;
	Mon, 12 Dec 2022 08:41:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38D89C433EF;
	Mon, 12 Dec 2022 08:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670834519;
	bh=bp9hj0RVByKQktcC0dW/qzUFrg5xq9JprWMyU7tTG14=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iQcLCJ7aZQwe9+6zjZl79n61zWOtEzrvlyRFS1IxQ0qOhRvjjHH4mhH5YEbUQqiPB
	 WT4Y1hJABUHLJW2mUZ7fSej1hdbKx4jtK++PEaBOUoMIvedc/WJ/FavPwfaInmpgDa
	 lKwGagt0HpwSXYINnsdB7CP4dhu48s8V0BaS8KKTLckjse2E1WCS28BTsVZ6f2MH6g
	 xU7+bfVfkWm57KxjxqX94YqiU2GmN8zJGy8rkV9b17a7baqd8Ob1ON5Adh/zsweIno
	 k78qYH/dihM4JAKwwh+aWTPbNKd3HbE043YdYhVoK3PPR9Q5LC4JmXIqnk48/vkSmU
	 R57tb+YXlX7lg==
Date: Mon, 12 Dec 2022 10:41:54 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Message-ID: <Y5bpUnqOij8HduWh@unreal>
References: <20221212035309.33507-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221212035309.33507-1-jiapeng.chong@linux.alibaba.com>
X-Rspamd-Queue-Id: 1CFF73EA4D
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 74F7MHWBXMUYNNBCUBUC2ZFQZBTGMTSE
X-Message-ID-Hash: 74F7MHWBXMUYNNBCUBUC2ZFQZBTGMTSE
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com, sumit.semwal@linaro.org, christian.koenig@amd.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] net: ksz884x: Remove the unused function port_cfg_force_flow_ctrl()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/74F7MHWBXMUYNNBCUBUC2ZFQZBTGMTSE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Dec 12, 2022 at 11:53:09AM +0800, Jiapeng Chong wrote:
> The function port_cfg_force_flow_ctrl() is defined in the ksz884x.c file,
> but not called elsewhere, so remove this unused function.
> 
> drivers/net/ethernet/micrel/ksz884x.c:2212:20: warning: unused function 'port_cfg_force_flow_ctrl'.
> 
> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3418
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>  drivers/net/ethernet/micrel/ksz884x.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/micrel/ksz884x.c b/drivers/net/ethernet/micrel/ksz884x.c
> index e6acd1e7b263..46f1fbf58b5a 100644
> --- a/drivers/net/ethernet/micrel/ksz884x.c
> +++ b/drivers/net/ethernet/micrel/ksz884x.c
> @@ -2209,12 +2209,6 @@ static inline void port_cfg_back_pressure(struct ksz_hw *hw, int p, int set)
>  		KS8842_PORT_CTRL_2_OFFSET, PORT_BACK_PRESSURE, set);
>  }
>  
> -static inline void port_cfg_force_flow_ctrl(struct ksz_hw *hw, int p, int set)
> -{
> -	port_cfg(hw, p,
> -		KS8842_PORT_CTRL_2_OFFSET, PORT_FORCE_FLOW_CTRL, set);
> -}
> -
>  static inline int port_chk_back_pressure(struct ksz_hw *hw, int p)

This function is not called too. Many functions in that file can be
removed. Please do it in one patch.

Thanks

>  {
>  	return port_chk(hw, p,
> -- 
> 2.20.1.7.g153144c
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
