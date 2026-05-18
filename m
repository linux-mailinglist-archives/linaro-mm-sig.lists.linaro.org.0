Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9N1zK9cLC2pp/gQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:53:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C23656D157
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 14:53:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DC928406F4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 12:53:41 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id 5D398406B1
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 12:53:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de;
	dmarc=pass (policy=none) header.from=lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id 8BE4068D05; Mon, 18 May 2026 14:53:26 +0200 (CEST)
Date: Mon, 18 May 2026 14:53:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20260518125326.GA5754@lst.de>
References: <cover.1777475843.git.asml.silence@gmail.com> <c61e6d928f86f4cb253ae350272e6039faefd3a6.1777475843.git.asml.silence@gmail.com> <20260513082431.GA6461@lst.de> <ebf41920-5852-428f-b98a-e0f44c8f3315@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebf41920-5852-428f-b98a-e0f44c8f3315@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spamd-Bar: ---
Message-ID-Hash: JDA3EJ2BLEMERUIZT4NPNLUZFD3RZ3XH
X-Message-ID-Hash: JDA3EJ2BLEMERUIZT4NPNLUZFD3RZ3XH
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 05/10] lib: add dmabuf token infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JDA3EJ2BLEMERUIZT4NPNLUZFD3RZ3XH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4C23656D157
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lst.de : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@lst.de,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	R_DKIM_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On Mon, May 18, 2026 at 11:14:09AM +0100, Pavel Begunkov wrote:
>> This is about dma-buf based I/O.  So I'd expect it to be named dma-buf-io
>> and no io-dmabuf, and live in drivers/dma-buf and not the unrelated lib/.
>> But I'd like to hear from the dma-buf maintainers about that.
>
> Looking at what Ming is saying, it'd make more sense to keep some of the
> parts like iterator and the file op more flexible and not automatically
> imply dma-buf even if it's the main and for now the only medium. I.e.
> ublk/fuse can use a similar interface for mapping buffers to the server
> even without dma mappings.
>
> I don't know how the API should look like, maybe passing memfd, and dma-buf
> supports mmap, but I think it's better to call the op something like
> "register_buffer" instead and keep all it in lib/ for the same reasons.

Let's get the current version landed.  If we come up with some kind of
non-dma dmabuf in the future we can refactor it and move it around.
I'm a little skeptic we'll be able to share code as long as dmabuf
is allergic to physical addresses, though.

lib/ is most certainly the wrong place for something that absolutely
is not library functionality but directly interacts with a few
subsystems.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
