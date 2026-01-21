Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJKeNzyPcGkaYgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:33:00 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 49763539E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:33:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5554C40150
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 08:32:59 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 53E1A3F6BD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 08:32:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lUHFr7TG;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D3A0460007;
	Wed, 21 Jan 2026 08:32:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 238F6C16AAE;
	Wed, 21 Jan 2026 08:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768984372;
	bh=/zT/QjwvPkSB24GeDesBZudUrJ0yllxGlSmObH/gtTs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lUHFr7TGAeMAUTrV0mOIsyb1G5GAbPUJMTSRMrIneHR5ny44/ztcAZeCfxtAjn8vK
	 eyVgpdPBG9WzQmI6zBlbzTANLSgeSECemT+UHlbu6DtJxxM0Pf2u6NeIEBPuxrHZWP
	 om7xQF/CZkIrrSO7THkC0CAy07v9tFe7vrckwWj2uhTpWU+6ten5aVcD0aZoENXBfQ
	 QQojJJtaFv5CQAkLFtqZoawL/YWS/LYmOrMjgRM+PquvF5n73IF+VT8HFzY55/b80k
	 i6wzEZbfXg+yzDpwEpFU+4x7qStuCs2V7k1+ghigK5/fEhcku8m16Gx0ingiM2IPE4
	 nRdh5CgWDr1dA==
Date: Wed, 21 Jan 2026 10:32:46 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20260121083246.GV13201@unreal>
References: <20260108-dmabuf-export-v1-0-6d47d46580d3@nvidia.com>
 <20260108-dmabuf-export-v1-1-6d47d46580d3@nvidia.com>
 <20260120181520.GS961572@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260120181520.GS961572@ziepe.ca>
X-Spamd-Bar: ---
Message-ID-Hash: SCH4W3QYI23KVVJ3VBNEZG7KGSU44AFU
X-Message-ID-Hash: SCH4W3QYI23KVVJ3VBNEZG7KGSU44AFU
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Edward Srouji <edwards@nvidia.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Yishai Hadas <yishaih@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rdma-next 1/2] RDMA/uverbs: Add DMABUF object type and operations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SCH4W3QYI23KVVJ3VBNEZG7KGSU44AFU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 49763539E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 02:15:20PM -0400, Jason Gunthorpe wrote:
> On Thu, Jan 08, 2026 at 01:11:14PM +0200, Edward Srouji wrote:
> >  void rdma_user_mmap_entry_remove(struct rdma_user_mmap_entry *entry)
> >  {
> > +	struct ib_uverbs_dmabuf_file *uverbs_dmabuf, *tmp;
> > +
> >  	if (!entry)
> >  		return;
> >  
> > +	mutex_lock(&entry->dmabufs_lock);
> >  	xa_lock(&entry->ucontext->mmap_xa);
> >  	entry->driver_removed = true;
> >  	xa_unlock(&entry->ucontext->mmap_xa);
> > +	list_for_each_entry_safe(uverbs_dmabuf, tmp, &entry->dmabufs, dmabufs_elm) {
> > +		dma_resv_lock(uverbs_dmabuf->dmabuf->resv, NULL);
> > +		list_del(&uverbs_dmabuf->dmabufs_elm);
> > +		uverbs_dmabuf->revoked = true;
> > +		dma_buf_move_notify(uverbs_dmabuf->dmabuf);
> > +		dma_resv_unlock(uverbs_dmabuf->dmabuf->resv);
> 
> This will need the same wait that Christian pointed out for VFIO..

Yes, something like this is missing
https://lore.kernel.org/all/20260120-dmabuf-revoke-v3-6-b7e0b07b8214@nvidia.com/

<...>

> > +struct ib_uverbs_dmabuf_file {
> > +	struct ib_uobject uobj;
> > +	struct dma_buf *dmabuf;
> > +	struct list_head dmabufs_elm;
> > +	struct rdma_user_mmap_entry *mmap_entry;
> > +	struct dma_buf_phys_vec phys_vec;
> 
> Oh, are we going to have weird merge conflicts with this Leon?

No, Alex created a shared branch with the rename already applied for me.  
I had planned to merge it into the RDMA tree before taking this series, and  
then update dma_buf_phys_vec to phys_vec locally.

> 
> > +static int uverbs_dmabuf_attach(struct dma_buf *dmabuf,
> > +				struct dma_buf_attachment *attachment)
> > +{
> > +	struct ib_uverbs_dmabuf_file *priv = dmabuf->priv;
> > +
> > +	if (!attachment->peer2peer)
> > +		return -EOPNOTSUPP;
> > +
> > +	if (priv->revoked)
> > +		return -ENODEV;
> 
> This should only be checked in map

I disagree with word "only", the more accurate word is "too". There is
no need to allow new importer attach if this exporter is marked as
revoked.

> 
> This should also eventually call the new revoke testing function Leon
> is adding

We will add it once my series will be accepted.

Thanks

> 
> Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
