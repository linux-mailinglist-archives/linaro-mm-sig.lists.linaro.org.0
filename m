Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAC8872492
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 17:43:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E21CB3F1B5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 16:43:41 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lists.linaro.org (Postfix) with ESMTPS id 2EABB3F1B5
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Mar 2024 16:43:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=lunn.ch header.s=20171124 header.b="mh UL2ny";
	spf=pass (lists.linaro.org: domain of andrew@lunn.ch designates 156.67.10.101 as permitted sender) smtp.mailfrom=andrew@lunn.ch;
	dmarc=pass (policy=none) header.from=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=PVFgwp/QdjijP88eb7vICgQD/i/Cph89zRHBxuPxLkQ=; b=mh
	UL2ny02+IbdPCp6v1dKZFbBjeeeQDV3sgFlQePTH9Xj1Qf5l727zlZQk/V3XqUZ9h3vfqXUS37Aq2
	kADHFM6R/J8U4GCObrUHbjmWU8PnlkVpr2vG9qt4EJbrkoFskDQSB9PQblK4sHK+FqBJ8+7mKNzmg
	ZHYTg3rHDi3vRR0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rhXtH-009RlL-BZ; Tue, 05 Mar 2024 17:43:43 +0100
Date: Tue, 5 Mar 2024 17:43:43 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Julien Panis <jpanis@baylibre.com>
Message-ID: <ff4ba8c9-8a34-41c3-92ed-910e46e1ca99@lunn.ch>
References: <20240223-am65-cpsw-xdp-basic-v2-0-01c6caacabb6@baylibre.com>
 <20240223-am65-cpsw-xdp-basic-v2-2-01c6caacabb6@baylibre.com>
 <356f4dd4-eb0e-49fa-a9eb-4dffbe5c7e7c@lunn.ch>
 <3a5f3950-e47f-409a-b881-0c8545778b91@baylibre.com>
 <be16d069-062e-489d-b8e9-19ef3ef90029@lunn.ch>
 <f0a9524a-08cd-4ec2-89f8-4dff9dd3e09e@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0a9524a-08cd-4ec2-89f8-4dff9dd3e09e@baylibre.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2EABB3F1B5
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.89 / 15.00];
	BAYES_HAM(-2.49)[97.69%];
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
Message-ID-Hash: ZTJT5YGOFS5B264HCZIYU4IDQY2TUPKY
X-Message-ID-Hash: ZTJT5YGOFS5B264HCZIYU4IDQY2TUPKY
X-MailFrom: andrew@lunn.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] net: ethernet: ti: am65-cpsw: Add minimal XDP support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZTJT5YGOFS5B264HCZIYU4IDQY2TUPKY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> 3) From 2), am65_cpsw_alloc_skb() function removed and replaced by
> netdev_alloc_skb_ip_align(), as used by the driver before -> res =3D 506
> Conclusion: Here is where the loss comes from.
> IOW, My am65_cpsw_alloc_skb() function is not good.
>=20
> Initially, I mainly created this 'custom' am65_cpsw_alloc_skb() function
> because I thought that none of XDP memory models could be used along
> with netdev_alloc_skb_ip_align() function. Was I wrong ?
> By=A0creating this custom am65_cpsw_alloc_skb(), I also wanted to handle
> the way headroom is reserved differently.

What is special about your device? Why would
netdev_alloc_skb_ip_align() not work?

	Andrew
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
