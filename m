Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B83FDCFC2B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 07 Jan 2026 07:19:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 573AB40164
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jan 2026 06:19:01 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id AEEC03F795
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jan 2026 06:18:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=lst.de;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id 3B3B6227A87; Wed,  7 Jan 2026 07:18:52 +0100 (CET)
Date: Wed, 7 Jan 2026 07:18:51 +0100
From: Christoph Hellwig <hch@lst.de>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <20260107061851.GA15324@lst.de>
References: <cover.1763725387.git.asml.silence@gmail.com> <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com> <7b2017f4-02a3-482a-a173-bb16b895c0cb@amd.com> <20251204110709.GA22971@lst.de> <0571ca61-7b17-4167-83eb-4269bd0459fe@amd.com> <20251204131025.GA26860@lst.de> <aVnFnzRYWC_Y5zHg@fedora> <a96e327d-3fef-4d08-87e9-c65866223967@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a96e327d-3fef-4d08-87e9-c65866223967@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Rspamd-Queue-Id: AEEC03F795
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	DMARC_POLICY_ALLOW(-0.50)[lst.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:213.95.11.211];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.954];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[213.95.11.211:from];
	URIBL_BLOCKED(0.00)[verein.lst.de:helo,verein.lst.de:rdns];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YSFLKE54NKKCDP33AH2SIGJACGBKLL4V
X-Message-ID-Hash: YSFLKE54NKKCDP33AH2SIGJACGBKLL4V
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ming Lei <ming.lei@redhat.com>, Christoph Hellwig <hch@lst.de>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/11] file: add callback for pre-mapping dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YSFLKE54NKKCDP33AH2SIGJACGBKLL4V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jan 06, 2026 at 07:51:12PM +0000, Pavel Begunkov wrote:
>> But I am wondering why not make it as one subsystem interface, such as nvme
>> ioctl, then the whole implementation can be simplified a lot. It is reasonable
>> because subsystem is exactly the side for consuming/importing the dma-buf.
>
> It's not an nvme specific interface, and so a file op was much more
> convenient.

It is the much better abstraction.  Also the nvme subsystems is not
an actor, and registering things to the subsystems does not work.
The nvme controller is the entity that does the dma mapping, and this
interface works very well for that.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
