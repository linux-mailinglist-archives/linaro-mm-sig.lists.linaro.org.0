Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNtWFqEsDGq0XwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:25:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E44BB57B37F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 11:25:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 429A340963
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 09:25:51 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 27D4A3F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 09:25:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de;
	dmarc=pass (policy=none) header.from=lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id 4A1F868C4E; Tue, 19 May 2026 11:25:38 +0200 (CEST)
Date: Tue, 19 May 2026 11:25:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20260519092538.GA19935@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com> <c61e6d928f86f4cb253ae350272e6039faefd3a6.1777475843.git.asml.silence@gmail.com> <20260513082431.GA6461@lst.de> <ebf41920-5852-428f-b98a-e0f44c8f3315@gmail.com> <20260518125326.GA5754@lst.de> <ea47051e-697f-4017-a514-be6ef7c110e9@gmail.com> <20260519065653.GB8173@lst.de> <9933142a-4ce2-4219-9574-73da30edd74e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9933142a-4ce2-4219-9574-73da30edd74e@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spamd-Bar: ---
Message-ID-Hash: OQZDBEYCNP7C6FNZWNQGTZ5VEPGQTIF5
X-Message-ID-Hash: OQZDBEYCNP7C6FNZWNQGTZ5VEPGQTIF5
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 05/10] lib: add dmabuf token infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OQZDBEYCNP7C6FNZWNQGTZ5VEPGQTIF5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@lst.de,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,lst.de:mid]
X-Rspamd-Queue-Id: E44BB57B37F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 08:55:32AM +0100, Pavel Begunkov wrote:
> On 5/19/26 07:56, Christoph Hellwig wrote:
>> On Mon, May 18, 2026 at 03:23:53PM +0100, Pavel Begunkov wrote:
>>> To be fair, it's not that dma-buf specific. This lib/ code only
>>> does some resv locking, fence waiting and queuing fences,
>>
>> But all the dma resv/fence stuff is pretty tied into the dma-buf
>> ecosystem.  I don't think it would really apply to something not
>> doing DMA at all.
>
> The point is that those can be separated to reuse the rest.

Are you actually doing this right now?  If so please share what you
have, otherwise let's keep the dma-buf bits together and move things
if new abstractions emerge.

>> But none of that really sits in the current lib/ code anyway?
>
> It's about naming. E.g. passing a DMABUF_ITER that doesn't have a
> dma-buf would be confusing, and then it'll need renaming at all
> layers to support the use case.

Again, if you concretely are doing this right now, find a good
name and place based on those abstractions.  If not let's ignore
it and move it if needed.

>> drivers/dma-buf is a pretty natural place for it, I could not thing
>
> _If_ there is no dma mappings, drivers/dma-buf would definitely
> be an awkward spot.

Yes.  But that's not the case right now.  And from looking at the
handwaiving for ublk/fuse probably not anytime soon, but maybe I'm
mistaken on the latter.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
