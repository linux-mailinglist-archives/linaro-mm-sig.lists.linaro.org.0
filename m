Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACE5BDC535
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 05:21:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F040346043
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 03:21:33 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id 148E744548
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 03:21:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b="FbGRZ/rx";
	dmarc=none;
	spf=none (lists.linaro.org: domain of willy@infradead.org has no SPF policy when checking 90.155.50.34) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=+vZhghVmnJMheRu4WGt6Jm2AnYVQSqZVx2x8NSyWD+o=; b=FbGRZ/rxcOCURqJcLxsSF/pzLo
	L/v76Zh8y9EcucbcRxZQdiTEwOoRt9atY8AjoeGJovLqc3ZOFKV20A5wK0SYY60r+EKhk9mS2Laj9
	IK/r3Ed693yH/8skGzY3KRygDDWQr55qBEomc9oUWSYVpD772fJuGMjM0vX3TuVog4L9huuLy7t3u
	HYWrPYsdTu2zbRQGeh/qIKgySxuFOf5cHPmVD1MrIiad82QeJOoM0muj/rDGKxmA821nM0ABgA4Yc
	+9D/MgidcOyM5+c9Y3y51X50S26WlC3W73xgXGFsl3Ql9KaRRNlIf4L4Wl+pn2fsQZE822PkVo777
	Iru8YHkw==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8s4g-00000006McQ-0QcF;
	Wed, 15 Oct 2025 03:21:14 +0000
Date: Wed, 15 Oct 2025 04:21:13 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Zhaoyang Huang <huangzhaoyang@gmail.com>
Message-ID: <aO8TKQN6ifOSMRSC@casper.infradead.org>
References: <20251014083230.1181072-1-zhaoyang.huang@unisoc.com>
 <20251014083230.1181072-3-zhaoyang.huang@unisoc.com>
 <87953097-a105-4775-88a5-9b3a676ff139@amd.com>
 <CAGWkznGN7W-txq_G+xpZ6DtH_1DNorYc=CxqUjebo7qfB4Sxsw@mail.gmail.com>
 <ecba7133-699c-4f3e-927c-bad5bd4c36a3@amd.com>
 <20251014171003.57bbfd63@mordecai.tesarici.cz>
 <97da9924-9489-4d30-a858-8ee5c87bc031@amd.com>
 <CAGWkznGnmb=8GgcrfDvY2REHdRZYVXZy=F3thXhK0FaSoiK7tw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGWkznGnmb=8GgcrfDvY2REHdRZYVXZy=F3thXhK0FaSoiK7tw@mail.gmail.com>
X-Rspamd-Queue-Id: 148E744548
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.08 / 15.00];
	BAYES_HAM(-2.98)[99.93%];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=casper.20170209];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:20712, ipnet:90.155.0.0/18, country:GB];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[infradead.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[casper.infradead.org:helo,casper.infradead.org:mid,casper.infradead.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OWOAIAWA5GNH7YKIEY2VAGUOW4JUEOPS
X-Message-ID-Hash: OWOAIAWA5GNH7YKIEY2VAGUOW4JUEOPS
X-MailFrom: willy@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Suren Baghdasaryan <surenb@google.com>, Petr Tesarik <ptesarik@suse.com>, "zhaoyang.huang" <zhaoyang.huang@unisoc.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mel Gorman <mgorman@techsingularity.net>, Vlastimil Babka <vbabka@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-kernel@vger.kernel.org, steve.kang@unisoc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] driver: dma-buf: use alloc_pages_bulk_list for order-0 allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OWOAIAWA5GNH7YKIEY2VAGUOW4JUEOPS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 15, 2025 at 09:12:07AM +0800, Zhaoyang Huang wrote:
> > Could be that we need to make this behavior conditional, but somebody would need to come up with some really good arguments to justify the complexity.
> ok, should we use CONFIG_DMA_BUF_BULK_ALLOCATION or a variable
> controlled by sysfs interface?

No.  Explain what you're trying to solve, because you haven't yet.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
