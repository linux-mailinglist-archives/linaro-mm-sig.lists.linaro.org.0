Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cB9LFpb/4Gk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:26:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A0063410B5F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:26:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96BF1405CA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:26:12 +0000 (UTC)
Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
	by lists.linaro.org (Postfix) with ESMTPS id CD79B3F70E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Nov 2025 16:24:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=iVYxelnp;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="U vzaBNS";
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.149 as permitted sender) smtp.mailfrom=alex@shazbot.org;
	dmarc=pass (policy=none) header.from=shazbot.org
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.stl.internal (Postfix) with ESMTP id A04FF1D00156;
	Fri, 21 Nov 2025 11:24:25 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Fri, 21 Nov 2025 11:24:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1763742265;
	 x=1763828665; bh=y9sPmO9ctPmEofVcJL2ve0sLdAoEmPz/dsTzOswFhgc=; b=
	iVYxelnp6m8nPDJCJD3pghiuY0JnfpXoWiKDtyC1ZfTMF8fUQtXTaMX5yXfbLont
	ST9OiZCOgXI8ULRFc6aFOTV/tf4SKt4W5wcQbP9AJZVnFKNBeKTXaQz1YXBFdesO
	ngWnz2nFnL1qztTi6xyP0b4aSzvPm+uN9ak+bIptT2djVNAQLdqCmwibU9kE5Aby
	VpAiSzJm+BAVU4pwbqnka0BeOqzyT0bMUyCvk7dAaYRepF8yb8plimv6meD7DiWX
	p8wl94vOATtCxVWlASjaMB/2zpgiQXfFwIjaAR+tnZBqkJApVj4qwHk4EVRiCEnp
	1g+zDY1l5gB38/tTHqvG8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1763742265; x=
	1763828665; bh=y9sPmO9ctPmEofVcJL2ve0sLdAoEmPz/dsTzOswFhgc=; b=U
	vzaBNSi3AV9eHP0xV5OI+fIMqpbdDdLZSjxGvsQ1T9RKmeLAwjextymi2cVXU8uy
	Be6PO+J6KI0iovHc0UiFA8B7rQiJTAIxOd4DhBWcsamEOEW5kjFnqKsB7FIrhxeQ
	GuiIAMeDF55zh/ogS1yglOFCO/9flUPn1HBDtkEepyUIH7oJ3GvW0fdgq2cG3HNt
	Rreb7R/CH8xTdpLKWo0BA9gScPfpMk/xxjgIGSyYgTlnJbiy/QOWhAmLxQpYZ6V3
	7/Vl+Dl5oQsAGlnSZbuDQqBdTTIF2o/fTw+PlG/91H2n4QIdikT7RS5D+uM/ue4F
	NdHheTOKT/rjN+6DYqXNw==
X-ME-Sender: <xms:N5IgaVaQZaAe5t79XnH1rbSJrYlQplMMYdp0M6-Mr3uWvt823MEJDQ>
    <xme:N5IgaSsBncHkvTAX8k6pT0FvMeuYcjAGM09pjfPKAWMwiWFbRzWYD5L220C8E6Pk7
    g55i_BbOAKRyF9cw6sEpexN2O8LimadQjIefkoeLiQUv98iWdUI>
X-ME-Received: <xmr:N5Igad-WFs5Ve-cFz6F4xXvv1f14eMC6yGbsbN7RyWZyEu__tXqKIFcs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvfedtgeefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfgggtgfesthejredttddtvdenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhepteetudelgeekieegudegleeuvdffgeehleeivddtfeektdekkeehffehudet
    hffhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
    hlvgigsehshhgriigsohhtrdhorhhgpdhnsggprhgtphhtthhopeefhedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtoheplhgvohhnsehkvghrnhgvlhdrohhrghdprhgtphhtth
    hopegshhgvlhhgrggrshesghhoohhglhgvrdgtohhmpdhrtghpthhtoheplhhoghgrnhhg
    seguvghlthgrthgvvgdrtghomhdprhgtphhtthhopegrgigsohgvsehkvghrnhgvlhdrug
    hkpdhrtghpthhtoheprhhosghinhdrmhhurhhphhihsegrrhhmrdgtohhmpdhrtghpthht
    ohepjhhorhhoseeksgihthgvshdrohhrghdprhgtphhtthhopeifihhllheskhgvrhhnvg
    hlrdhorhhgpdhrtghpthhtohepmhdrshiihihprhhofihskhhisehsrghmshhunhhgrdgt
    ohhmpdhrtghpthhtohepjhhgghesiihivghpvgdrtggr
X-ME-Proxy: <xmx:N5IgaQ84u-HHIf2TcQNYp-qQlqRMCjkmlLokOX6AO2UGzSJhrElRBA>
    <xmx:OJIgaXPtSD_NpuOHdtKoNjoojGX18VUQEBCkvknI_2nnhJz5NPrx0g>
    <xmx:OJIgacOkV7PC26nL5WPRH0i6onKjj8iCzVuttmRsX2N7uBq0h1DUmQ>
    <xmx:OJIgaVMFYRWTlkUhXAgJS6FxtMLkh8eI-ToaCrmBZCSefA8L7jXnYw>
    <xmx:OZIgaTGK97vls5JNSW_jGH-7CSY683IBHOHRkaC1YrXeI4xtr5m3V3e5>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 21 Nov 2025 11:24:20 -0500 (EST)
Date: Fri, 21 Nov 2025 09:24:17 -0700
From: Alex Williamson <alex@shazbot.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20251121092417.7a6eaa2f.alex@shazbot.org>
In-Reply-To: <20251120-dmabuf-vfio-v9-0-d7f71607f371@nvidia.com>
References: <20251120-dmabuf-vfio-v9-0-d7f71607f371@nvidia.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RLDUPYJ5FFAFUJU4IHWOZALV6QLRHK5G
X-Message-ID-Hash: RLDUPYJ5FFAFUJU4IHWOZALV6QLRHK5G
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:14 +0000
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@v
 ger.kernel.org, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RLDUPYJ5FFAFUJU4IHWOZALV6QLRHK5G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[3503];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.667];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,shazbot.org:mid,linaro.org:email]
X-Rspamd-Queue-Id: A0063410B5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 20 Nov 2025 11:28:19 +0200
Leon Romanovsky <leon@kernel.org> wrote:

> Changelog:
> v9:
>  * Added Reviewed-by tags.
>  * Fixes to p2pdma documentation.
>  * Renamed dma_buf_map and unmap.
>  * Moved them to separate file.
>  * Used nvgrace_gpu_memregion() function instead of open-coded variant.
>  * Paired get_file_active() with fput().

Applied to vfio next branch with the fixes discussed for v6.19.  I also
pushed a tag, vfio-v6.19-dma-buf-v9+, for this work.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
