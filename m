Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPFdJyYC4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:37:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B610410FE1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:37:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88EC744831
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:37:09 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 37B843F702
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 19:07:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="rJith8/G";
	spf=pass (lists.linaro.org: domain of kbusch@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=kbusch@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7DBB560051;
	Thu,  4 Dec 2025 19:07:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEA03C116C6;
	Thu,  4 Dec 2025 19:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764875275;
	bh=0T0myU9ZH1tB3I+V7V43BU4jBwzUFIVwxphPm1myBzk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rJith8/Gx4Wd98GNbJ7JgxHjEk0D7lIa7DnpsSn1yMaGQI1EqxuiciLXwN8wZjnEJ
	 qlxn4LehW7CPwkt/TTMulNZcItXi43kAMUvpYKmyfbKYiRELimMl9ItWI0kgWE/kNY
	 DfWbzXb0XWX6awag8QffycQU0ga5vSjnsYEqXVBd4zpvHQQQX3d1dxhOaC5FzIJ6Ma
	 Hy0H7EzRJg/nhYxMd5AhbzQ9AjRWFsCy3fbNeeBFBkprwe4nvjOnrPt+oWQqfVnP6K
	 TFX5BFa3hA3MJBYZfIM9zGb8IH9ErkKMEgjMl3Ts9QSjnlc/e0kR6/Uc/FgMonv2Sx
	 JSCz/VsurrB9A==
Date: Thu, 4 Dec 2025 12:07:51 -0700
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <aTHcB7Vm80XDMiaH@kbusch-mbp>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <9bc25f46d2116436d73140cd8e8554576de2caca.1763725388.git.asml.silence@gmail.com>
 <aTFpsl3o7IoJ_xPg@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aTFpsl3o7IoJ_xPg@infradead.org>
X-Spamd-Bar: ---
X-MailFrom: kbusch@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 235XUTU7WTZEBR2OBQS2IMRDVYXDAZC7
X-Message-ID-Hash: 235XUTU7WTZEBR2OBQS2IMRDVYXDAZC7
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:13 +0000
CC: Pavel Begunkov <asml.silence@gmail.com>, linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 06/11] nvme-pci: add support for dmabuf reggistration
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/235XUTU7WTZEBR2OBQS2IMRDVYXDAZC7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3188];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[kbusch@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,intel.com,kernel.dk,lst.de,grimberg.me,zeniv.linux.org.uk,kernel.org,linux-foundation.org,linaro.org,amd.com,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.574];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7B610410FE1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Dec 04, 2025 at 03:00:02AM -0800, Christoph Hellwig wrote:
> Why do you care about alignment to the controller page size?
> 
> > +	for_each_sgtable_dma_sg(sgt, sg, tmp) {
> > +		dma_addr_t dma = sg_dma_address(sg);
> > +		unsigned long sg_len = sg_dma_len(sg);
> > +
> > +		while (sg_len) {
> > +			dma_list[i++] = dma;
> > +			dma += NVME_CTRL_PAGE_SIZE;
> > +			sg_len -= NVME_CTRL_PAGE_SIZE;
> > +		}
> > +	}
> 
> Why does this build controller pages sized chunks?

I think the idea was that having fixed size entries aligned to the
device's PRP unit is that it's efficient to jump to the correct index
for any given offset. A vector of mixed sizes would require you walk the
list to find the correct starting point, which we want to avoid.

This is similar to the way io_uring registered memory is set up, though
io_uring has extra logic to use largest common contiguous segment size,
or even just one segment if it coalesces. We could probably do that too.

Anyway, that representation naturally translates to the PRP format, but
this could be done in the SGL format too.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
