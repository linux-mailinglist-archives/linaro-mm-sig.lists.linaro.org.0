Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5369379A8D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:45:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 570D23F003
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:45:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 7AED73EBCF
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Jul 2023 23:57:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TBFRNmSh;
	spf=pass (lists.linaro.org: domain of luto@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=luto@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D96C260EE2;
	Sun, 16 Jul 2023 23:57:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78F19C433C7;
	Sun, 16 Jul 2023 23:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689551833;
	bh=+2BhqY9zrhKuYyQ9etJS5H8r5edL7fVLVmdomTcsJy0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TBFRNmShB+QtUymfhfsuzlj3mrAUiU+5Hg+ldphDuktGwVKO+KxXQagpUkGBQJbWl
	 hXyeF+Rfg6ewUcNhDMsuBvqcdWqvqawpVMD6yWImZiyxQtdvTYWzL+kMpw5xzqpRhG
	 zeXaT0cOS+lRpVDZ6s045vluNNr6NG8cNDQ0AcffxOFmBiEOaCwDgVYYnRJ3T4sqWQ
	 wzLuT7zwBFRFCBLF6Pt82BWVaS82xTXICHEGNuTljfml0iqwe6rpTBHVuINaJ0uP2a
	 1u6ABa3DonIrUNt5odDi+lmA05AzQN6US36BEfW0zBjuLP3/0xlzgySFmJCGVXiatb
	 uc5uAgsCg/N8w==
Message-ID: <73971895-6fa7-a5e1-542d-3faccbc4a830@kernel.org>
Date: Sun, 16 Jul 2023 16:57:07 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Mina Almasry <almasrymina@google.com>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org
References: <20230710223304.1174642-1-almasrymina@google.com>
 <20230710223304.1174642-7-almasrymina@google.com>
From: Andy Lutomirski <luto@kernel.org>
In-Reply-To: <20230710223304.1174642-7-almasrymina@google.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7AED73EBCF
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,davemloft.net,google.com,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: luto@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TOAGI7QIF2J4TRN3LMRPZSEZPDE2SFWX
X-Message-ID-Hash: TOAGI7QIF2J4TRN3LMRPZSEZPDE2SFWX
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:41 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 06/10] net: add SO_DEVMEM_DONTNEED setsockopt to release RX pages
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TOAGI7QIF2J4TRN3LMRPZSEZPDE2SFWX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 7/10/23 15:32, Mina Almasry wrote:
> Add an interface for the user to notify the kernel that it is done reading
> the NET_RX dmabuf pages returned as cmsg. The kernel will drop the
> reference on the NET_RX pages to make them available for re-use.
> 
> Signed-off-by: Mina Almasry <almasrymina@google.com>
> ---

> +		for (i = 0; i < num_tokens; i++) {
> +			for (j = 0; j < tokens[i].token_count; j++) {
> +				struct page *pg = xa_erase(&sk->sk_pagepool,
> +							   tokens[i].token_start + j);
> +
> +				if (pg)
> +					put_page(pg);
> +				else
> +					/* -EINTR here notifies the userspace
> +					 * that not all tokens passed to it have
> +					 * been freed.
> +					 */
> +					ret = -EINTR;

Unless I'm missing something, this type of error reporting is 
unrecoverable -- userspace doesn't know how many tokens have been freed.

I think you should either make it explicitly unrecoverable (somehow shut 
down dmabuf handling entirely) or tell userspace how many tokens were 
successfully freed.

--Andy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
