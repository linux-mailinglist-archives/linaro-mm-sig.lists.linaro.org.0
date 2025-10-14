Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 904C6BD9E13
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 16:06:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4578645D90
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Oct 2025 14:06:38 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id A3F9E44498
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Oct 2025 14:06:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=lK8uoZSY;
	dmarc=none;
	spf=none (lists.linaro.org: domain of willy@infradead.org has no SPF policy when checking 90.155.50.34) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=e/V73HB2j0SB/c9ybjOOfbzsInvf4MCE5FolGwdySDg=; b=lK8uoZSYpxxAgKRKV/Hch8ByIS
	EVXALti/OcHwaKhZzxpYN1cvdWxikT7SKQRge3XVTafJJd3OjMjoxORgfBybUR4FJoAvcx3hdgiQP
	gXE/pec3m+6ks+KKgnkEsB8xiSabU4tVrQK6swmiAIX0qZP/qgZ+AgOhAk0u2w3nuCVcWnwUx7JZn
	Op9Cirp81R0019U2e0Q+C7ycK39oog7XyMkE5MiYqpIJzv0LfyrzzUsJXW2LMg+Zm3NtSmP+7z1mM
	vOjgQ0c2xJlIx7YMUOisNNHfTzhkry+JzUsmXVtZLi4+YuLGpup5hzOhLOuC75093AZdIealQjdUw
	pJMyaopg==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ffM-0000000C1Ts-0nWf;
	Tue, 14 Oct 2025 14:06:16 +0000
Date: Tue, 14 Oct 2025 15:06:15 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "zhaoyang.huang" <zhaoyang.huang@unisoc.com>
Message-ID: <aO5Y1x82YN81Mh7J@casper.infradead.org>
References: <20251014083230.1181072-1-zhaoyang.huang@unisoc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014083230.1181072-1-zhaoyang.huang@unisoc.com>
X-Rspamd-Queue-Id: A3F9E44498
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	ONCE_RECEIVED(0.20)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=casper.20170209];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[18];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,redhat.com,techsingularity.net,suse.cz,linaro.org,collabora.com,arm.com,google.com,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org,gmail.com,unisoc.com];
	DMARC_NA(0.00)[infradead.org];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KVA4TPHRJTW4K4UQ67JM2T2NZLANRZAX
X-Message-ID-Hash: KVA4TPHRJTW4K4UQ67JM2T2NZLANRZAX
X-MailFrom: willy@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mel Gorman <mgorman@techsingularity.net>, Vlastimil Babka <vbabka@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-kernel@vger.kernel.org, Zhaoyang Huang <huangzhaoyang@gmail.com>, steve.kang@unisoc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/2] optimization of dma-buf system_heap allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KVA4TPHRJTW4K4UQ67JM2T2NZLANRZAX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Oct 14, 2025 at 04:32:28PM +0800, zhaoyang.huang wrote:
> From: Zhaoyang Huang <zhaoyang.huang@unisoc.com>
> 
> This series of patches would like to introduce alloc_pages_bulk_list in
> dma-buf which need to call back the API for page allocation.

Start with the problem you're trying to solve.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
