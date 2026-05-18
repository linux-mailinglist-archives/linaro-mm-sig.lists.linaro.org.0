Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOY/HboMC2pN/gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:57:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EA156D2B9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:57:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6660C406B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:57:28 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 8638D4051A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:57:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de;
	dmarc=pass (policy=none) header.from=lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id E839E68D05; Mon, 18 May 2026 14:57:13 +0200 (CEST)
Date: Mon, 18 May 2026 14:57:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20260518125713.GC5754@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com> <646ecd6fde8d9e146cb051efb514deb27ce3883e.1777475843.git.asml.silence@gmail.com> <20260513081929.GD5477@lst.de> <24833f76-2289-4859-86d1-9215b11a1258@gmail.com> <df697a76-c700-4908-ac08-a47ad07e0796@amd.com> <4561c621-817c-46be-8ff0-0b557f6c819d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4561c621-817c-46be-8ff0-0b557f6c819d@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spamd-Bar: --
Message-ID-Hash: GMCSCBBCBUXJQXECISZGTPJH4AH2MTX7
X-Message-ID-Hash: GMCSCBBCBUXJQXECISZGTPJH4AH2MTX7
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 04/10] block: introduce dma map backed bio type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GMCSCBBCBUXJQXECISZGTPJH4AH2MTX7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E2EA156D2B9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lst.de : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	FREEMAIL_TO(0.00)[gmail.com];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@lst.de,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On Mon, May 18, 2026 at 01:40:18PM +0100, Pavel Begunkov wrote:
>> When that is really a performance critical path then you can use the likely() and unlikely() macros to give the compiler the hint which one to prefer.
>
> That might be more penalising than placing them in the right order,
> and it might be fine as it's new and all that, but it's not a clear
> cut as it's definitely not created to be a slow path.

Yes.  Whatever the caller is using at a given time is the fast path here,
and dynamic branch prediction in modern cpus handles this really well.

> TBH, not sure
> why we're bike shedding such things, is it somewhere in the code
> style?

It makes reading the code annoying, so it better have a good reason.
Now for a single conditional it's not much of an issue, but these
things tend to pile up and then start to get really annoying.
Always write your code the most straight forward way unless you
have a good reason not to.


>> What could be useful is to have the true path for the more common and the false path for the less common case for documentation purposes, but in that case I would expected some code comments as well.
> What kind of comment are you thinking about? A "this is not a likely
> path" type of comment before each mention of the flag is usually not
> very useful.

Indeed.  It's also not true here.  If the workload uses dmabufs, the
path obviously is very likely.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
