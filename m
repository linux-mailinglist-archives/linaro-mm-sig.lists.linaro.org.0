Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BB084B2C725
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Aug 2025 16:36:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5FEE445DC5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Aug 2025 14:36:09 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 0AE164432A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Aug 2025 14:36:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TaO+KUqT;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6CEAC61428;
	Tue, 19 Aug 2025 14:36:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBAAFC4CEF1;
	Tue, 19 Aug 2025 14:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755614161;
	bh=BiHe/FguZmNKLQFvQErwkmhZShCmEsuov9mR9CCAK10=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=TaO+KUqTMSIodh39ZJ/nPQgGEHgwsyFzbEZITzVRRHFdJkJK4wIirxXwoU5f/8FQv
	 d8Y3m/ELPmUqtK4bLDl+zd56vViPX8vjh1VTrX5aJz4/G8pIZ3tVEU7eMS1PHiTBJG
	 exWybiL3Eh9a1r3RSw6SLJoOlFWlnT4AwvgYWibYapB0qPiaS3L1kJQb6/6NHjT2e0
	 nz5kWH0P8sLmQrwe8zFJASoFkeNpVKcr9BduukCOTNWYgKL49J1xuwIKHSd/OiNVGe
	 ntHEdK6OnQ4AvIbZF8fGt6SWosAGX4WIkxpQ64bc+7gRCD7ZplQ82Nd85ofT02gzPP
	 dRF1C0SzgUveA==
Date: Tue, 19 Aug 2025 07:35:58 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Meghana Malladi <m-malladi@ti.com>
Message-ID: <20250819073558.2c996b6d@kernel.org>
In-Reply-To: <20250818112424.3068643-6-m-malladi@ti.com>
References: <20250818112424.3068643-1-m-malladi@ti.com>
	<20250818112424.3068643-6-m-malladi@ti.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0AE164432A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.46 / 15.00];
	BAYES_HAM(-2.96)[99.84%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_RCPT(0.00)[netdev];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linutronix.de,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,kernel.org,iogearbox.net,redhat.com,google.com,davemloft.net,lunn.ch,lists.linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,ti.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: 6O7FFMWIRWGUCWSJYYKTZ4RRBY2GCHGP
X-Message-ID-Hash: 6O7FFMWIRWGUCWSJYYKTZ4RRBY2GCHGP
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: namcao@linutronix.de, jacob.e.keller@intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, sdf@fomichev.me, john.fastabend@gmail.com, hawk@kernel.org, daniel@iogearbox.net, ast@kernel.org, pabeni@redhat.com, edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 5/6] net: ti: icssg-prueth: Add AF_XDP zero copy for RX
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6O7FFMWIRWGUCWSJYYKTZ4RRBY2GCHGP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 18 Aug 2025 16:54:23 +0530 Meghana Malladi wrote:
> @@ -1332,6 +1350,13 @@ static int prueth_xsk_wakeup(struct net_device *ndev, u32 qid, u32 flags)
>  		}
>  	}
>  
> +	if (flags & XDP_WAKEUP_RX) {
> +		if (!napi_if_scheduled_mark_missed(&emac->napi_rx)) {
> +			if (likely(napi_schedule_prep(&emac->napi_rx)))
> +				__napi_schedule(&emac->napi_rx);
> +		}
> +	}
> +
>  	return 0;

I suspect this series is generated against old source or there's
another conflicting series in flight, because git ends up applying
this chunk to prueth_xsk_pool_disable() :S

Before you proceed with AF_XDP could you make this driver build under
COMPILE_TEST on x86? This is very easy to miss, luckily we got an off
list report but its pure luck. And obviously much more effort for the
maintainers to investigate than if it was caught by the CI.
-- 
pw-bot: cr
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
