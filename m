Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 820F0D02131
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 08 Jan 2026 11:17:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04BC94016C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Jan 2026 10:17:15 +0000 (UTC)
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
	by lists.linaro.org (Postfix) with ESMTPS id E397E3F779
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Jan 2026 10:17:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=lst.de;
	spf=pass (lists.linaro.org: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: by verein.lst.de (Postfix, from userid 2407)
	id E3BE3227A87; Thu,  8 Jan 2026 11:17:03 +0100 (CET)
Date: Thu, 8 Jan 2026 11:17:03 +0100
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Message-ID: <20260108101703.GA24709@lst.de>
References: <cover.1763725387.git.asml.silence@gmail.com> <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com> <7b2017f4-02a3-482a-a173-bb16b895c0cb@amd.com> <20251204110709.GA22971@lst.de> <0571ca61-7b17-4167-83eb-4269bd0459fe@amd.com> <20251204131025.GA26860@lst.de> <aVnFnzRYWC_Y5zHg@fedora> <754b4cc9-20ab-4d87-85bf-eb56be058856@amd.com> <20260107160151.GA21887@lst.de> <aV8UJvkt7VGzHjxS@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aV8UJvkt7VGzHjxS@fedora>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Rspamd-Queue-Id: E397E3F779
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.59 / 15.00];
	BAYES_HAM(-2.99)[99.95%];
	DMARC_POLICY_ALLOW(-0.50)[lst.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:213.95.11.211];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:12337, ipnet:213.95.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.895];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lst.de,amd.com,gmail.com,vger.kernel.org,intel.com,kernel.org,kernel.dk,grimberg.me,zeniv.linux.org.uk,linux-foundation.org,linaro.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[213.95.11.211:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: FQYR5O7QOUX7YXIC3SEO5CGETVEQH6FI
X-Message-ID-Hash: FQYR5O7QOUX7YXIC3SEO5CGETVEQH6FI
X-MailFrom: hch@lst.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@lst.de>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Pavel Begunkov <asml.silence@gmail.com>, linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/11] file: add callback for pre-mapping dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FQYR5O7QOUX7YXIC3SEO5CGETVEQH6FI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 08, 2026 at 10:19:18AM +0800, Ming Lei wrote:
> > The feature is in no way nvme specific.  nvme is just the initial
> > underlying driver.  It makes total sense to support this for any high
> > performance block device, and to pass it through file systems.
> 
> But why does FS care the dma buffer attachment? Since high performance
> host controller is exactly the dma buffer attachment point.

I can't parse what you're trying to say here.

> If the callback is added in `struct file_operations` for wiring dma buffer
> and the importer(host contrller), you will see it is hard to let it cross device
> mapper/raid or other stackable block devices.

Why?

But even when not stacking, the registration still needs to go
through the file system even for a single device, never mind multiple
controlled by the file system.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
