Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLHTAuMA4Wl7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:31:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 98606410DA9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:31:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94F124095E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:31:45 +0000 (UTC)
Received: from fout-a2-smtp.messagingengine.com (fout-a2-smtp.messagingengine.com [103.168.172.145])
	by lists.linaro.org (Postfix) with ESMTPS id 1E1493F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Nov 2025 18:55:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm3 header.b=yg+RF1cb;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="Z 38yM0T";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 103.168.172.145 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
	by mailfout.phl.internal (Postfix) with ESMTP id EC493EC01A5;
	Wed, 26 Nov 2025 13:55:12 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-11.internal (MEProxy); Wed, 26 Nov 2025 13:55:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1764183312;
	 x=1764269712; bh=37p6Cw1ME0a5Obcfe11/W4zuJ0UdrkK9wi8CHO9UaCk=; b=
	yg+RF1cb+tDquSnVORpKSHeayI14y8YIFZvCLIBFA2zR13jRjziwlQ7+Ehy8DcX4
	f+5Ugd6JEPl3g1+nPMIwz/ci9HyMTiTh7BclOEO8meyP52q4fxO7llaSscEw3a4V
	lpbdHyVj75xlqdX9NtPYZOEmsovmVyXjFWG26E8TcQFlsvdtgvzJlvJkFFo013+m
	BHqWGZlpJihrh2kObiw+J5JO5TzoYQmDEk9bv/UCOKrMYD6l6S7LPXbAiLafZNTZ
	F/io2eojXUW97Em3mN56HNO/iBjfXHAwRq5qiKhMlLeboTYVms/Urt19qsw8O8He
	R4sgC6VGcJA5AWC55cMdhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1764183312; x=
	1764269712; bh=37p6Cw1ME0a5Obcfe11/W4zuJ0UdrkK9wi8CHO9UaCk=; b=Z
	38yM0Tx7mcpziDex2GDBB9S5N07P4lUXsgG5xBqAvl59RHOpBnc7TnBPbkkIZStB
	9B8C2OZItsvVEadioU5oCe8Tl8AZR9a3HuZCMnK47lomn7ad7f4L2pk1mEGJWfDo
	buyX0S9o7NXecKcTQtemu0PoSNb0c9uExLZzr9fcZRJrjnEceoQV3hqW6VwnKI78
	7pUm3moWxCOxQZycrDd7C80WoUNGdpomT0kfvVMI905GHWvPA9/jg2RKeXpQmUPc
	kxLcMEPX0VnM77/3sRn4beXV93iqveNCzvUsbl/fmku7JFSaAQ0DXn1vgED1Xtmh
	yBJFI9GYAUE3CAOXeDe0w==
X-ME-Sender: <xms:EE0naYrSSLubLhWF4T-5LCE5cKJ_mv2GtTnwXZPw8wMGhIRWIzVeIQ>
    <xme:EE0naT3o4R5vQEtg_LYYTE83c-j1imKsVzW3Ai8Bn5i5a_tZ_OZlYzsIhwo6TC-eN
    hnL9fEDWmxlZRBQ_j-x9FOMNMT_mkZ3kXGbQIsdTHA2UAosO7R3-g>
X-ME-Received: <xmr:EE0naQk4fTqdSi8aTmeir_7YHS1qmin4DVAVDxdlu-SiFp08YiKEiMAb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvgeehuddvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfgggtgfesthejredttddtvdenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhephedvtdeuveejudffjeefudfhueefjedvtefgffdtieeiudfhjeejhffhfeeu
    vedunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhgvgiesshhhrgiisghothdrohhrghdp
    nhgspghrtghpthhtohepudefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehjgh
    hgseiiihgvphgvrdgtrgdprhgtphhtthhopegrmhgrshhtrhhosehfsgdrtghomhdprhgt
    phhtthhopehsuhhmihhtrdhsvghmfigrlheslhhinhgrrhhordhorhhgpdhrtghpthhtoh
    eptghhrhhishhtihgrnhdrkhhovghnihhgsegrmhgurdgtohhmpdhrtghpthhtoheplhgv
    ohhnsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkvghvihhnrdhtihgrnhesihhnth
    gvlhdrtghomhdprhgtphhtthhopehnihgtohhlihhntgesnhhvihguihgrrdgtohhmpdhr
    tghpthhtoheplhhinhhugidqmhgvughirgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprh
    gtphhtthhopegurhhiqdguvghvvghlsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdho
    rhhg
X-ME-Proxy: <xmx:EE0nafYwE3xFP7tGn73DufAb7RECzQlE9Fx9Qv8CwW9W7qr-WU8IHg>
    <xmx:EE0naS9wbGv9EY6uAHomgcs5XjV3NKSgAkYpJxo3aIk-Amjbs6iEzw>
    <xmx:EE0nafF9KpicE9Ap5Ul5bc9GmxfJH2Omyq6qAJ8ZMgvgqVRGgUxzlQ>
    <xmx:EE0nace2JVKwB_3pWdm7Dg45R1vVpko-oH4NswTUHLzqFZY3f9CjTQ>
    <xmx:EE0naUiqSj_3_m66PN5NLnjYSdBZGJzANiKx6DNIan4S51It8qgW_NvK>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 26 Nov 2025 13:55:11 -0500 (EST)
Date: Wed, 26 Nov 2025 11:55:09 -0700
From: Alex Williamson <alex@shazbot.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20251126115509.27d420b9.alex@shazbot.org>
In-Reply-To: <20251126180107.GA542915@ziepe.ca>
References: <20251125-dma-buf-overflow-v1-1-b70ea1e6c4ba@fb.com>
	<20251126180107.GA542915@ziepe.ca>
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FEUBYBOHYZHB47LCL5SYQ7HACE2EKDRP
X-Message-ID-Hash: FEUBYBOHYZHB47LCL5SYQ7HACE2EKDRP
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:09 +0000
CC: Alex Mastro <amastro@fb.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Nicolin Chen <nicolinc@nvidia.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kvm@vger.kernel.org, Ankit Agrawal <ankita@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix integer overflow in fill_sg_entry() for buffers >= 8GiB
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FEUBYBOHYZHB47LCL5SYQ7HACE2EKDRP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[3380];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.658];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[shazbot.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,fb.com:email,nvidia.com:email]
X-Rspamd-Queue-Id: 98606410DA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 26 Nov 2025 14:01:07 -0400
Jason Gunthorpe <jgg@ziepe.ca> wrote:

> On Tue, Nov 25, 2025 at 05:11:18PM -0800, Alex Mastro wrote:
> > fill_sg_entry() splits large DMA buffers into multiple scatter-gather
> > entries, each holding up to UINT_MAX bytes. When calculating the DMA
> > address for entries beyond the second one, the expression (i * UINT_MAX)
> > causes integer overflow due to 32-bit arithmetic.
> > 
> > This manifests when the input arg length >= 8 GiB results in looping for
> > i >= 2.
> > 
> > Fix by casting i to dma_addr_t before multiplication.
> > 
> > Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
> > Signed-off-by: Alex Mastro <amastro@fb.com>
> > ---
> > More color about how I discovered this in [1] for the commit at [2]:
> > 
> > [1] https://lore.kernel.org/all/aSZHO6otK0Heh+Qj@devgpu015.cco6.facebook.com
> > [2] https://lore.kernel.org/all/20251120-dmabuf-vfio-v9-6-d7f71607f371@nvidia.com
> > ---
> >  drivers/dma-buf/dma-buf-mapping.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)  
> 
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> 
> AlexW, can you pick this up?

Yes, I'm planning to.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
