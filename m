Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1314EC74909
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 15:31:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 276D03F966
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 14:31:07 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 4F4FD3F909
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 14:30:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BY9YcLo9;
	spf=pass (lists.linaro.org: domain of patchwork-bot+netdevbpf@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BE20D60131;
	Thu, 20 Nov 2025 14:30:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D225C4CEF1;
	Thu, 20 Nov 2025 14:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763649050;
	bh=G0UVsRqQ7j8J9S16cmfX+j6Xm8Cx7ey9TFc+hgOvBdc=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=BY9YcLo9PfgLCtt2rd0kgNyiwsySVweY8KcCyA6BZwyH6QSGzWolRG59qQBleVOdV
	 2YPw73f5oaRWHYMp8PsWt758sIPRvImjds+2QvxjNT3pk8FpD2uAENbsyJmyTcmAko
	 K4Wc5H8igZzgX7q8zgD+GXWCcXiKU69+OnaDj0cUCcVtMqR6Ln8u+cpMdxpjs1DkLs
	 Vz0b8JopsN8zGBq7Ln7dQ2vhkJy4GWNtl0fKvy+i5uXY5FB8T7eu3rMobUPWuwSwx0
	 kSia1/X5hInvUYSppwsSJLpqago3Xi67ZiQLZarj/c/x/AGqDoRprp63jB4vlrxvEJ
	 7Rim3ehM+vlsg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EAF1739FEB77;
	Thu, 20 Nov 2025 14:30:16 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <176364901575.1647241.5550367394642830810.git-patchwork-notify@kernel.org>
Date: Thu, 20 Nov 2025 14:30:15 +0000
References: <20251118135542.380574-1-m-malladi@ti.com>
In-Reply-To: <20251118135542.380574-1-m-malladi@ti.com>
To: Meghana Malladi <m-malladi@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FROM_NO_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linutronix.de,linux.dev,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,iogearbox.net,redhat.com,google.com,davemloft.net,lunn.ch,lists.linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,ti.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4F4FD3F909
X-Spamd-Bar: ---
Message-ID-Hash: YGYGHMAYWC4II3U4FUBBG5KYCZBW6PMX
X-Message-ID-Hash: YGYGHMAYWC4II3U4FUBBG5KYCZBW6PMX
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: horms@kernel.org, namcao@linutronix.de, vadim.fedorenko@linux.dev, jacob.e.keller@intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, sdf@fomichev.me, john.fastabend@gmail.com, hawk@kernel.org, daniel@iogearbox.net, ast@kernel.org, pabeni@redhat.com, kuba@kernel.org, edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, vigneshr@ti.com, rogerq@kernel.org, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v6 0/6] Add AF_XDP zero copy support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/23URKG5ZXIGVHCZJPJVD72KERZHGFK5T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello:

This series was applied to netdev/net-next.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Tue, 18 Nov 2025 19:25:36 +0530 you wrote:
> This series adds AF_XDP zero coppy support to icssg driver.
> 
> Tests were performed on AM64x-EVM with xdpsock application [1].
> 
> A clear improvement is seen Transmit (txonly) and receive (rxdrop)
> for 64 byte packets. 1500 byte test seems to be limited by line
> rate (1G link) so no improvement seen there in packet rate
> 
> [...]

Here is the summary with links:
  - [net-next,v6,1/6] net: ti: icssg-prueth: Add functions to create and destroy Rx/Tx queues
    https://git.kernel.org/netdev/net-next/c/41dde7f1d013
  - [net-next,v6,2/6] net: ti: icssg-prueth: Add XSK pool helpers
    https://git.kernel.org/netdev/net-next/c/7dfd7597911f
  - [net-next,v6,3/6] net: ti: icssg-prueth: Add AF_XDP zero copy for TX
    https://git.kernel.org/netdev/net-next/c/8756ef2eb078
  - [net-next,v6,4/6] net: ti: icssg-prueth: Make emac_run_xdp function independent of page
    https://git.kernel.org/netdev/net-next/c/121133163c9f
  - [net-next,v6,5/6] net: ti: icssg-prueth: Add AF_XDP zero copy for RX
    https://git.kernel.org/netdev/net-next/c/7a64bb388df3
  - [net-next,v6,6/6] net: ti: icssg-prueth: Enable zero copy in XDP features
    https://git.kernel.org/netdev/net-next/c/c6a1ec1870e6

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
