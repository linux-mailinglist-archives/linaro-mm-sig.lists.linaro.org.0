Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B7EAFC750
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 11:45:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1CB13443EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Jul 2025 09:45:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 586854159B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Jul 2025 09:45:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=UWKNWOvb;
	spf=none (lists.linaro.org: domain of BATV+94213881afc477778e20+7989+infradead.org+hch@bombadil.srs.infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=BATV+94213881afc477778e20+7989+infradead.org+hch@bombadil.srs.infradead.org;
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=aIbqbwBgG/lyES8ZapCr+jWLXI49EU1keL2UKBLl4ZQ=; b=UWKNWOvbW1xTiQyAkogBIy5vXY
	1kMTpJM38uJiKRySLNvCg1/KWyoRb1P010eKGu0Ne4OmVDj2enRDpDMIYiYutgg62elXC6HX5fRwp
	M1LNLNaS6wDYR9RjAnmSCamtrf8dgwjDhxgF2622TFGsWOtY8XIgCxUX7uUkeFHHe88+IJxPP1aH5
	C5UZrWlj2eHwJoWhyOzwHz2bpVaRlInzIv2GdifcrnVgCksZ0myip6UGZhhb0Tu0LW3YV/B7CjhVD
	9z4Jd2Nv/RLlugnLGApfhYL3NyOuZthIVKEvuC2NpqgIbuLqfHQrETLIoiOgkss1GF0ULYqQBX//B
	eBqoAwnQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ4t1-00000004vIx-0KrK;
	Tue, 08 Jul 2025 09:45:15 +0000
Date: Tue, 8 Jul 2025 02:45:15 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Pavel Begunkov <asml.silence@gmail.com>
Message-ID: <aGzoqyM06rgXIJst@infradead.org>
References: <cover.1751035820.git.asml.silence@gmail.com>
 <aGaSb5rpLD9uc1IK@infradead.org>
 <f2216c30-6540-4b1a-b798-d9a3f83547b2@gmail.com>
 <aGveLlLDcsyCBKuU@infradead.org>
 <e210595b-d01f-4405-9b5d-a486ddca49ed@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e210595b-d01f-4405-9b5d-a486ddca49ed@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 586854159B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[94213881afc477778e20,7989,infradead.org,hch];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[infradead.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hch@infradead.org,BATV@bombadil.srs.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: HSDBG5YE5ON6P7JMDJYCJ673FFMDMCE7
X-Message-ID-Hash: HSDBG5YE5ON6P7JMDJYCJ673FFMDMCE7
X-MailFrom: BATV+94213881afc477778e20+7989+infradead.org+hch@bombadil.srs.infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christoph Hellwig <hch@infradead.org>, io-uring@vger.kernel.org, linux-block@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, Keith Busch <kbusch@kernel.org>, David Wei <dw@davidwei.uk>, Vishal Verma <vishal1.verma@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 00/12] io_uring dmabuf read/write support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HSDBG5YE5ON6P7JMDJYCJ673FFMDMCE7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 07, 2025 at 04:41:23PM +0100, Pavel Begunkov wrote:
> > I mean a reference the actual dma_buf (probably indirect through the file
> > * for it, but listen to the dma_buf experts for that and not me).
> 
> My expectation is that io_uring would pass struct dma_buf to the

io_uring isn't the only user.  We've already had one other use case
coming up for pre-load of media files in mobile very recently.  It's
also a really good interface for P2P transfers of any kind.

> file during registration, so that it can do a bunch of work upfront,
> but iterators will carry sth already pre-attached and pre dma mapped,
> probably in a file specific format hiding details for multi-device
> support, and possibly bundled with the dma-buf pointer if necessary.
> (All modulo move notify which I need to look into first).

I'd expect that the exported passed around the dma_buf, and something
that has access to it then imports it to the file.  This could be
directly forwarded to the device for the initial scrope in your series
where you only support it for block device files.

Now we have two variants:

 1) the file instance returns a cookie for the registration that the
    caller has to pass into every read/write
 2) the file instance tracks said cookie itself and matches it on
    every read/write

1) sounds faster, 2) has more sanity checking and could prevent things
from going wrong.

(all this is based on my limited dma_buf understanding, corrections
always welcome).

> > > But maybe that's fine. It's 40B -> 48B,
> > 
> > Alternatively we could the union point to a struct that has the dma buf
> > pointer and a variable length array of dma_segs. Not sure if that would
> > create a mess in the callers, though.
> 
> Iteration helpers adjust the pointer, so either it needs to store
> the pointer directly in iter or keep the current index. It could rely
> solely on offsets, but that'll be a mess with nested loops (where the
> inner one would walk some kind of sg table).

Yeah.  Maybe just keep is as a separate pointer growing the structure
and see if anyone screams.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
