Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI1UDUPGb2mgMQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 19:15:31 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5EC49402
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 19:15:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE72A4014A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 18:15:29 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by lists.linaro.org (Postfix) with ESMTPS id C038B3F736
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 18:15:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=l44AIaXp;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.180 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-5013d163e2fso57001751cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 10:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768932922; x=1769537722; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u+h0EX6bJ4UpFAOqOLmeekiIIdrOYR0BoNDz6Hm/Icw=;
        b=l44AIaXpKtOBoEhcvtjqTLA/d9I+vLYiFV3zTjpxou97ybOvLTTcRBL06waKYigGQq
         8oTQJnz6v0wqhvWFaJRQ0hSG7L4OmhOdK/rjeda8T09JCujyZJnzDpNiA9wAA+QveV2c
         oQvzs0EqB9gmOjY3gKR2FRKbYZQLwvkp7tsAzPyEyl0ZwHb6WDzdXr3yLUnwvehtdfQn
         hdtbM7N4Qm4td6fs+0fSqFrbxEiK1LSZnBG3608E70X0v9y7aNivF39zx9acxF5R6gFh
         1UQdD+Qyo65bHr5vkPRrpi4lzk5rfnOsJAnTE61h/bkc7UymkfiKwysxWyVqolehsVLr
         YQFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768932922; x=1769537722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u+h0EX6bJ4UpFAOqOLmeekiIIdrOYR0BoNDz6Hm/Icw=;
        b=l+F+0vGHc+GOFxlwZiAlv3G+LFutFfIXuZcMRbohtG/X7esUk5NLiGevgwlgwR4yOQ
         OTEHfFyh7slqWK6WDmGruRyTpIYVyMUq2rW8LY5Zqp82NYWIn3sdDE4Lw9afI6NSUO1s
         BZJq1OJ/BGSomWmdRwVolD5epnaMEixXeZS1gfsy87+MIrUwtmJP1D1uH8CNwNj7bxwK
         2WbwwBxv0Nxw6s6FpRUBNU31PRHzgc49e/NC1xqeAEWMwaYP7zIwDos9JJ2/9lbO+lCY
         Hkg0GwkBkl0L3B5hulmnFpSHwc+CBMj6V9e2PG55gI7C2QJNyl+aCpJtbAE5uK6xo4co
         CEbg==
X-Forwarded-Encrypted: i=1; AJvYcCWCR/OaC4mw7D721SsM8GmJi1dELrgp68n92FzXOrQMhEf2ZKyyV4g6dBI9R5qWBsyNZ13mB30gWUwxq6+o@lists.linaro.org
X-Gm-Message-State: AOJu0YwBnUmxbaKoR3DzCywITe2k0bw1UGEIgyxjVajrCEbl0Ie4cfwk
	QU9LRdp3LeGV417rFA9slXSCxIDrmsxtq85qnESwx1bk4c9ybqZV48zHeB0i0jTm8w8=
X-Gm-Gg: AY/fxX56uH4qetUF8byqqiTbvSAegJ4tNTXsZMSXUP3xGBHqYgpBvA3ICf/h7Iwe7Yv
	yeKjchmI5bUOE9ZaXV4//4K4g5w+/voI1DCoNBQZ0ClSZh3LV6R25xj0Jxh0am26JBaiS6gEWpS
	J80eE/9Ggc2pRQABS0jkQB5XmUgid7THv/tcyH72mGpS0CZ1A1evpXPLYOn/mP9L3udnoNRACbw
	80Zae0qKa6tMYR4yuPpxi+y/XuSc3lAfBNHNWQfRp1QV8cXs6GjuXkQUTrV+BnymVWARr1vph5l
	uSDdFLIfDC3uaEWAVNEA/yw7SZOjsP3DjwjTvnXHePWz8c+NYnQ4VZdVjZBnU+kBHv4rlj26kCE
	Pi58YU3/uxCVxwoC9ddcS6oGh40a03wiyc2FWQnYJG8ipeXyLHErT7Ghpu4veEeyKoRGBAgHePL
	+6Iy7yGgNy70oRZ6i/6kgJJHh/XxIfeAGEeVU0bX5EZ57cpnL07xS6
X-Received: by 2002:a05:622a:1447:b0:501:3ccd:cb3e with SMTP id d75a77b69052e-502a1f7105fmr227831511cf.66.1768932921973;
        Tue, 20 Jan 2026 10:15:21 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1d6e670sm99756901cf.1.2026.01.20.10.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 10:15:21 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1viGG8-00000005aY4-3tNU;
	Tue, 20 Jan 2026 14:15:20 -0400
Date: Tue, 20 Jan 2026 14:15:20 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Edward Srouji <edwards@nvidia.com>
Message-ID: <20260120181520.GS961572@ziepe.ca>
References: <20260108-dmabuf-export-v1-0-6d47d46580d3@nvidia.com>
 <20260108-dmabuf-export-v1-1-6d47d46580d3@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108-dmabuf-export-v1-1-6d47d46580d3@nvidia.com>
X-Spamd-Bar: ---
Message-ID-Hash: W7T5HFVYOZHLSOLOQO43J7D6FOPZA6E7
X-Message-ID-Hash: W7T5HFVYOZHLSOLOQO43J7D6FOPZA6E7
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Yishai Hadas <yishaih@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rdma-next 1/2] RDMA/uverbs: Add DMABUF object type and operations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W7T5HFVYOZHLSOLOQO43J7D6FOPZA6E7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	DMARC_NA(0.00)[ziepe.ca];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,linaro.org:email]
X-Rspamd-Queue-Id: 9C5EC49402
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Jan 08, 2026 at 01:11:14PM +0200, Edward Srouji wrote:
>  void rdma_user_mmap_entry_remove(struct rdma_user_mmap_entry *entry)
>  {
> +	struct ib_uverbs_dmabuf_file *uverbs_dmabuf, *tmp;
> +
>  	if (!entry)
>  		return;
>  
> +	mutex_lock(&entry->dmabufs_lock);
>  	xa_lock(&entry->ucontext->mmap_xa);
>  	entry->driver_removed = true;
>  	xa_unlock(&entry->ucontext->mmap_xa);
> +	list_for_each_entry_safe(uverbs_dmabuf, tmp, &entry->dmabufs, dmabufs_elm) {
> +		dma_resv_lock(uverbs_dmabuf->dmabuf->resv, NULL);
> +		list_del(&uverbs_dmabuf->dmabufs_elm);
> +		uverbs_dmabuf->revoked = true;
> +		dma_buf_move_notify(uverbs_dmabuf->dmabuf);
> +		dma_resv_unlock(uverbs_dmabuf->dmabuf->resv);

This will need the same wait that Christian pointed out for VFIO..


> diff --git a/drivers/infiniband/core/rdma_core.c b/drivers/infiniband/core/rdma_core.c
> index 18918f463361..3e0a8b9cd288 100644
> --- a/drivers/infiniband/core/rdma_core.c
> +++ b/drivers/infiniband/core/rdma_core.c
> @@ -465,7 +465,7 @@ alloc_begin_fd_uobject(const struct uverbs_api_object *obj,
>  
>  	fd_type =
>  		container_of(obj->type_attrs, struct uverbs_obj_fd_type, type);
> -	if (WARN_ON(fd_type->fops->release != &uverbs_uobject_fd_release &&
> +	if (WARN_ON(fd_type->fops && fd_type->fops->release != &uverbs_uobject_fd_release &&
>  		    fd_type->fops->release != &uverbs_async_event_release)) {
>  		ret = ERR_PTR(-EINVAL);
>  		goto err_fd;
> @@ -477,14 +477,16 @@ alloc_begin_fd_uobject(const struct uverbs_api_object *obj,
>  		goto err_fd;
>  	}
>  
> -	/* Note that uverbs_uobject_fd_release() is called during abort */
> -	filp = anon_inode_getfile(fd_type->name, fd_type->fops, NULL,
> -				  fd_type->flags);
> -	if (IS_ERR(filp)) {
> -		ret = ERR_CAST(filp);
> -		goto err_getfile;
> +	if (fd_type->fops) {
> +		/* Note that uverbs_uobject_fd_release() is called during abort */
> +		filp = anon_inode_getfile(fd_type->name, fd_type->fops, NULL,
> +					  fd_type->flags);
> +		if (IS_ERR(filp)) {
> +			ret = ERR_CAST(filp);
> +			goto err_getfile;
> +		}
> +		uobj->object = filp;
>  	}
> -	uobj->object = filp;
>  
>  	uobj->id = new_fd;
>  	return uobj;
> @@ -561,7 +563,9 @@ static void alloc_abort_fd_uobject(struct ib_uobject *uobj)
>  {
>  	struct file *filp = uobj->object;
>  
> -	fput(filp);
> +	if (filp)
> +		fput(filp);
> +
>  	put_unused_fd(uobj->id);

This stuff changing hw the uobjects work should probably be in its own
patch with its own explanation about creating a uobject that wrappers
an externally allocated file descriptor vs this automatic internal
allocation.

> index 797e2fcc8072..66287e8e7ad7 100644
> --- a/drivers/infiniband/core/uverbs.h
> +++ b/drivers/infiniband/core/uverbs.h
> @@ -133,6 +133,16 @@ struct ib_uverbs_completion_event_file {
>  	struct ib_uverbs_event_queue		ev_queue;
>  };
>  
> +struct ib_uverbs_dmabuf_file {
> +	struct ib_uobject uobj;
> +	struct dma_buf *dmabuf;
> +	struct list_head dmabufs_elm;
> +	struct rdma_user_mmap_entry *mmap_entry;
> +	struct dma_buf_phys_vec phys_vec;

Oh, are we going to have weird merge conflicts with this Leon?

> +static int uverbs_dmabuf_attach(struct dma_buf *dmabuf,
> +				struct dma_buf_attachment *attachment)
> +{
> +	struct ib_uverbs_dmabuf_file *priv = dmabuf->priv;
> +
> +	if (!attachment->peer2peer)
> +		return -EOPNOTSUPP;
> +
> +	if (priv->revoked)
> +		return -ENODEV;

This should only be checked in map

This should also eventually call the new revoke testing function Leon
is adding

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
