Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE9DBF42AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Oct 2025 02:43:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D3D73F77A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Oct 2025 00:43:22 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 797483F776
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Oct 2025 00:43:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=cEtkjrjS;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E6CCD43E40;
	Tue, 21 Oct 2025 00:43:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65B00C4CEFB;
	Tue, 21 Oct 2025 00:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761007390;
	bh=4RCzmBSn1YK3dNU1eu6WlsS+oiC3sOWT4kMWZcs60Is=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=cEtkjrjSI92wIHZJsTGhCickdT6aybd2B/sEoCNPQBq/fTzMFYu6KnoutQup+d3Ro
	 lM5gStw8JWQUxulUM1ObqQoPovLRzmAZd6pDkxLZNOvipZeJs8WuC5drCdqW3pVzlM
	 h/BndLLXV6OHUq6iIpQRcM7bJYk9icyWPTB5HiUu6//tb+H7Qb/DdZ+aG3zjCUS/Ty
	 PRoWZxS854wCjMVNWDg3mNdhBMvr5w0gjQF3eaI2lbwC9unraJMT4P1SItRyPIjrWH
	 8Pxo7LIrp/88tlKL+LQ5d1imWkZr7hsHbzmQNAOzfATefCser5tkqQeUtnFxqAIwLz
	 OaSBPwcvab96Q==
Date: Mon, 20 Oct 2025 17:43:08 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Meghana Malladi <m-malladi@ti.com>
Message-ID: <20251020174308.59b87130@kernel.org>
In-Reply-To: <20251014105613.2808674-1-m-malladi@ti.com>
References: <20251014105613.2808674-1-m-malladi@ti.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 797483F776
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.45 / 15.00];
	BAYES_HAM(-2.95)[99.78%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[netdev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linutronix.de,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,iogearbox.net,redhat.com,google.com,davemloft.net,lunn.ch,lists.linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,ti.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 37XKW547C4HVJRLUDDLQ5DPIMPG456RC
X-Message-ID-Hash: 37XKW547C4HVJRLUDDLQ5DPIMPG456RC
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: horms@kernel.org, namcao@linutronix.de, jacob.e.keller@intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, sdf@fomichev.me, john.fastabend@gmail.com, hawk@kernel.org, daniel@iogearbox.net, ast@kernel.org, pabeni@redhat.com, edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/6] Add AF_XDP zero copy support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/37XKW547C4HVJRLUDDLQ5DPIMPG456RC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 14 Oct 2025 16:26:06 +0530 Meghana Malladi wrote:
> This series adds AF_XDP zero coppy support to icssg driver.
> 
> Tests were performed on AM64x-EVM with xdpsock application [1].
> 
> A clear improvement is seen Transmit (txonly) and receive (rxdrop)
> for 64 byte packets. 1500 byte test seems to be limited by line
> rate (1G link) so no improvement seen there in packet rate
> 
> Having some issue with l2fwd as the benchmarking numbers show 0
> for 64 byte packets after forwading first batch packets and I am
> currently looking into it.

This series stopped applying, could you please respin?
-- 
pw-bot: cr
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
