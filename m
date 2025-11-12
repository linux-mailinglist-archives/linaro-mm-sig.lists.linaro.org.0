Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A2146C5031D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Nov 2025 02:22:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32C1F3F862
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Nov 2025 01:22:41 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 6DE413F74B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Nov 2025 01:22:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=V+z+PaYF;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C448143B2C;
	Wed, 12 Nov 2025 01:22:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0AA7C116D0;
	Wed, 12 Nov 2025 01:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762910545;
	bh=8/VZ+Pk/P0ERSzhincVBgh2q/b+XJHdh5AweNfrSb6U=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=V+z+PaYFSEegQbz2sIv90WFvfwnTwzaKfAEoJxj4Iud8QJbhPr3scWC5OBttLucJ3
	 U/IY6GAVE9/wz90Rbi4M6sN/B0B0ryuqF6r6WOGO/lQWVTbMSU5IaieOh7NsvgzJFV
	 X6fwRXWFIboRJvLjM8EfccXuIkYs1Ch2SHXYHQWlt19BSODk32Kh1Qdkwl297yZSoz
	 ONFZ9dihyNO09wQzcSqr5QrqYsc0R/f8wvXUlG4spynFr8cvOCykT15iwdjNQ0WJqG
	 PAkeJAg0U+TCt6BKu6KJFzEFONFKqJh7Pqo1AtSDXwYyELJT2srDydnHAO438kV92S
	 B+KrhG7K7YAQA==
Date: Tue, 11 Nov 2025 17:22:23 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Roger Quadros <rogerq@kernel.org>
Message-ID: <20251111172223.6c3b24a4@kernel.org>
In-Reply-To: <20251109-am65-cpsw-xdp-zc-v2-7-858f60a09d12@kernel.org>
References: <20251109-am65-cpsw-xdp-zc-v2-0-858f60a09d12@kernel.org>
	<20251109-am65-cpsw-xdp-zc-v2-7-858f60a09d12@kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6DE413F74B
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[netdev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ti.com,lunn.ch,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,gmail.com,linaro.org,amd.com,fomichev.me,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 4G3PYVBR5IV33NFQQYYGN2NJOAXNQG5U
X-Message-ID-Hash: 4G3PYVBR5IV33NFQQYYGN2NJOAXNQG5U
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Siddharth Vadapalli <s-vadapalli@ti.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Stanislav Fomichev <sdf@fomichev.me>, Simon Horman <horms@kernel.org>, srk@ti.com, Meghana Malladi <m-malladi@ti.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v2 7/7] net: ethernet: ti: am65-cpsw: Fix clearing of irq_disabled flag in rx_poll
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4G3PYVBR5IV33NFQQYYGN2NJOAXNQG5U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 09 Nov 2025 23:37:57 +0200 Roger Quadros wrote:
> In am65_cpsw_nuss_rx_poll() there is a possibility that irq_disabled flag
> is cleared but the IRQ is not enabled.
> 
> This patch fixes by that by clearing irq_disabled flag right when enabling
> the irq.
> 
> Fixes: da70d184a8c3 ("net: ethernet: ti: am65-cpsw: Introduce multi queue Rx")
> Signed-off-by: Roger Quadros <rogerq@kernel.org>

This looks independent from the series, it needs to go to net.
-- 
pw-bot: cr
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
