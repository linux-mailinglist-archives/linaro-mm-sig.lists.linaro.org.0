Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EE64B6FEB56
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 May 2023 07:43:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08AD144234
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 May 2023 05:43:38 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 40C1844354
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 May 2023 05:43:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b=WFSwWicA;
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=UQgMCGljUJ7oMQ6mf0JD66p8AV+Pricx3j0/87/rFdI=; b=WFSwWicA7I6QjunjDTmUY/mBBw
	+OdqCiSVAaq7AwaAq4xZwY4gnB6pwGU8tQc4ONz5S15zuLHUMQbn7bCAh3yX9KB2tW33Fi5qb/eNS
	Ibs3/aYjdR4ROBC4C6Rcpqz7tTp98buzqxNITntt/3+CYEKoWUPKu1fqkOB1mC8XuReJAS68gGjkX
	SnsCLss8J9Y/ITZE3AKEDHYnQq5uWprxBpTvPQ/Uqqza8xGPleWXp7iK7hqmV9R01T8UVSQ5XW2JU
	69Cz2ghJ3IVIrfmd8Mmi5c3t55/GrzzZ2POKZ4HVXMJUOrderW05675mtR+tt6C9dnZIJSO7lzZG2
	/az9cJXQ==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1pwz5E-001cjL-19;
	Thu, 11 May 2023 05:43:20 +0000
Date: Thu, 11 May 2023 06:43:20 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: ye.xingchen@zte.com.cn
Message-ID: <20230511054320.GL3390869@ZenIV>
References: <202305051103396748797@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202305051103396748797@zte.com.cn>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Spamd-Result: default: False [-2.67 / 15.00];
	BAYES_HAM(-2.77)[99.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[zeniv.linux.org.uk,none];
	FORGED_SENDER(0.30)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_DKIM_ALLOW(-0.20)[linux.org.uk:s=zeniv-20220401];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8419, ipnet:62.89.128.0/19, country:GB];
	FROM_NEQ_ENVFROM(0.00)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[linux.org.uk:+];
	TO_DN_NONE(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.831];
	RCPT_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 40C1844354
X-Spamd-Bar: --
Message-ID-Hash: 2EPKN4ICOC7OBZEMFX5PNFKEIDPNH2YM
X-Message-ID-Hash: 2EPKN4ICOC7OBZEMFX5PNFKEIDPNH2YM
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sync_file: Use fdget()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2EPKN4ICOC7OBZEMFX5PNFKEIDPNH2YM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, May 05, 2023 at 11:03:39AM +0800, ye.xingchen@zte.com.cn wrote:
> From: Ye Xingchen <ye.xingchen@zte.com.cn>
> 
> convert the fget() use to fdget().

NAK.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
