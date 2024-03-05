Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8F287201E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 14:28:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E509A446C1
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 13:28:50 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lists.linaro.org (Postfix) with ESMTPS id CC54A3F37E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Mar 2024 13:28:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=lunn.ch header.s=20171124 header.b=fcCvJcgA;
	spf=pass (lists.linaro.org: domain of andrew@lunn.ch designates 156.67.10.101 as permitted sender) smtp.mailfrom=andrew@lunn.ch;
	dmarc=pass (policy=none) header.from=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=2o5mFGZCvQCk7WKP/xRNSu+/KpBgcWlkfRQoWTuInbY=; b=fcCvJcgAkcMcQFOc4nYDR/Yzhv
	Y8IiVBCtwKjUMpOh02072azemJ8Sb6tC/SVw+f74ahwPgdczkKF8WJ9UMCYkcOVxYnaoVgZ6Z3Jwt
	iiS6/PoKPPutlUHIT5TpgkIpdugZ8H0BsYpd3BejSVa4AjBYvnRK+kDjUeDZosHHJi3Q=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rhUqi-009Qae-FR; Tue, 05 Mar 2024 14:28:52 +0100
Date: Tue, 5 Mar 2024 14:28:52 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Julien Panis <jpanis@baylibre.com>
Message-ID: <be16d069-062e-489d-b8e9-19ef3ef90029@lunn.ch>
References: <20240223-am65-cpsw-xdp-basic-v2-0-01c6caacabb6@baylibre.com>
 <20240223-am65-cpsw-xdp-basic-v2-2-01c6caacabb6@baylibre.com>
 <356f4dd4-eb0e-49fa-a9eb-4dffbe5c7e7c@lunn.ch>
 <3a5f3950-e47f-409a-b881-0c8545778b91@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a5f3950-e47f-409a-b881-0c8545778b91@baylibre.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CC54A3F37E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+mx];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[19];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:58222, ipnet:156.67.8.0/22, country:CH];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,armlinux.org.uk,iogearbox.net,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lunn.ch:+]
Message-ID-Hash: 5PHPXHFQWHHDL5HYVJNMQDJKBEVPCJAE
X-Message-ID-Hash: 5PHPXHFQWHHDL5HYVJNMQDJKBEVPCJAE
X-MailFrom: andrew@lunn.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] net: ethernet: ti: am65-cpsw: Add minimal XDP support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5PHPXHFQWHHDL5HYVJNMQDJKBEVPCJAE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 05, 2024 at 11:46:00AM +0100, Julien Panis wrote:
> On 3/1/24 17:38, Andrew Lunn wrote:
> > On Fri, Mar 01, 2024 at 04:02:53PM +0100, Julien Panis wrote:
> > > This patch adds XDP (eXpress Data Path) support to TI AM65 CPSW
> > > Ethernet driver. The following features are implemented:
> > > - NETDEV_XDP_ACT_BASIC (XDP_PASS, XDP_TX, XDP_DROP, XDP_ABORTED)
> > > - NETDEV_XDP_ACT_REDIRECT (XDP_REDIRECT)
> > > - NETDEV_XDP_ACT_NDO_XMIT (ndo_xdp_xmit callback)
> > > 
> > > The page pool memory model is used to get better performance.
> > Do you have any benchmark numbers? It should help with none XDP
> > traffic as well. So maybe iperf numbers before and after?
> > 
> > 	Andrew
> 
> Argh...Houston, we have a problem. I checked my v3, which is ready for
> submission, with iperf3:
> 1) Before = without page pool -> 500 MBits/sec
> 2) After = with page pool -> 442 MBits/sec
> -> ~ 10% worse with page pool here.
> 
> Unless the difference is not due to page pool. Maybe there's something else
> which is not good in my patch. I'm going to send the v3 which uses page pool,
> hopefully someone will find out something suspicious. Meanwhile, I'll carry on
> investigating: I'll check the results with my patch, by removing only the using of
> page pool.

You can also go the other way. First add page pool support. For the
FEC, that improved its performance. Then add XDP, which i think
decreased the performance a little. It is extra processing in the hot
path, so a little loss is not unsurprising.

What tends to be expensive with ARM is cache invalidation and
flush. So make sure you have the lengths correct. You don't want to
operate on more memory than necessary. No point flushing the full MTU
for a 64 byte TCP ACK, etc.

      Andrew
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
