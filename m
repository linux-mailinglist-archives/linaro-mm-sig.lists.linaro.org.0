Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y+2hOs4iOWponQcAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 13:55:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 771C76AF3EB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 13:55:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ideasonboard.com header.s=mail header.b=gXqVCwUZ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=ideasonboard.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BDE640A33
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2026 11:55:57 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id 975A240966
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 11:55:47 +0000 (UTC)
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3A7F29CE;
	Mon, 22 Jun 2026 13:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1782129308;
	bh=TDWFD3aVcqsYOWPdtLK1KFJLiTGZTVKDYeLf7bJYrTI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gXqVCwUZLPEnE7+3WkZgPXN8wj92R1iMQN4M2WulFhoKn0NvAfnk3KZEWuZgsup5D
	 8RoaWA0hX6YTShku4A/WXvC7oWXoVYz8aYCGcrzpDgRyQdiF9DSQq8L4frK/138L3R
	 7KtnEvqzi26otYw6b7lxtx7g1yobSEfXkbX8oo5A=
Date: Mon, 22 Jun 2026 14:55:44 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Biren Pandya <birenpandya@gmail.com>
Message-ID: <20260622115544.GA3899302@killaraus.ideasonboard.com>
References: <20260616181956.61476-2-birenpandya@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260616181956.61476-2-birenpandya@gmail.com>
X-Spamd-Bar: ---
Message-ID-Hash: BYM5TUVOPYPRQWMEX634SNIRT2GBNBSH
X-Message-ID-Hash: BYM5TUVOPYPRQWMEX634SNIRT2GBNBSH
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: modernize locks to use scoped_guard()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BYM5TUVOPYPRQWMEX634SNIRT2GBNBSH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ideasonboard.com:s=mail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[ideasonboard.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:birenpandya@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[laurent.pinchart@ideasonboard.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurent.pinchart@ideasonboard.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:from_mime,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,killaraus.ideasonboard.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 771C76AF3EB

On Tue, Jun 16, 2026 at 11:49:57PM +0530, Biren Pandya wrote:
> Several GEM core functions manually managed mutex_lock() and
> mutex_unlock() over single scopes or error paths. This adds boilerplate
> and carries the risk of lock leaks if error paths are refactored.
> 
> Modernize these locks by deploying the <linux/cleanup.h> scoped_guard()
> macro. This ensures that the locks are reliably dropped when the block
> exits, cleanly removing goto out_unlock paths and tightening the
> lifecycle.

What's the reason for doing so in in drm_gem and not other areas in DRM
?

> Signed-off-by: Biren Pandya <birenpandya@gmail.com>
> 
> Compiled locally, but requires IGT validation by the DRM CI.
> ---
>  drivers/gpu/drm/drm_gem.c | 66 ++++++++++++++++++---------------------
>  1 file changed, 30 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 891c3bff5ae0..d3a061d42ba7 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -346,13 +346,13 @@ void drm_gem_object_handle_put_unlocked(struct drm_gem_object *obj)
>  	 * we checked for a name.
>  	 */
>  
> -	mutex_lock(&dev->object_name_lock);
> -	if (--obj->handle_count == 0) {
> -		drm_gem_object_handle_free(obj);
> -		drm_gem_object_exported_dma_buf_free(obj);
> -		final = true;
> +	scoped_guard(mutex, &dev->object_name_lock) {
> +		if (--obj->handle_count == 0) {
> +			drm_gem_object_handle_free(obj);
> +			drm_gem_object_exported_dma_buf_free(obj);
> +			final = true;
> +		}
>  	}
> -	mutex_unlock(&dev->object_name_lock);
>  
>  	if (final)
>  		drm_gem_object_put(obj);
> @@ -374,11 +374,8 @@ drm_gem_object_release_handle(int id, void *ptr, void *data)
>  	if (obj->funcs->close)
>  		obj->funcs->close(obj, file_priv);
>  
> -	mutex_lock(&file_priv->prime.lock);
> -
> -	drm_prime_remove_buf_handle(&file_priv->prime, id);
> -
> -	mutex_unlock(&file_priv->prime.lock);
> +	scoped_guard(mutex, &file_priv->prime.lock)
> +		drm_prime_remove_buf_handle(&file_priv->prime, id);
>  
>  	drm_vma_node_revoke(&obj->vma_node, file_priv);
>  
> @@ -1021,37 +1018,34 @@ int drm_gem_change_handle_ioctl(struct drm_device *dev, void *data,
>  		goto out;
>  	}
>  
> -	mutex_lock(&file_priv->prime.lock);
> +	scoped_guard(mutex, &file_priv->prime.lock) {
> +		spin_lock(&file_priv->table_lock);
> +		ret = idr_alloc(&file_priv->object_idr, obj, handle, handle + 1,
> +				GFP_NOWAIT);
> +		spin_unlock(&file_priv->table_lock);

And why don't you use guards for the spinlock as well ?

>  
> -	spin_lock(&file_priv->table_lock);
> -	ret = idr_alloc(&file_priv->object_idr, obj, handle, handle + 1,
> -			GFP_NOWAIT);
> -	spin_unlock(&file_priv->table_lock);
> +		if (ret < 0)
> +			break;
>  
> -	if (ret < 0)
> -		goto out_unlock;
> +		if (obj->dma_buf) {
> +			ret = drm_prime_add_buf_handle(&file_priv->prime, obj->dma_buf,
> +						       handle);
> +			if (ret < 0) {
> +				spin_lock(&file_priv->table_lock);
> +				idr_remove(&file_priv->object_idr, handle);
> +				spin_unlock(&file_priv->table_lock);
> +				break;
> +			}
>  
> -	if (obj->dma_buf) {
> -		ret = drm_prime_add_buf_handle(&file_priv->prime, obj->dma_buf,
> -					       handle);
> -		if (ret < 0) {
> -			spin_lock(&file_priv->table_lock);
> -			idr_remove(&file_priv->object_idr, handle);
> -			spin_unlock(&file_priv->table_lock);
> -			goto out_unlock;
> +			drm_prime_remove_buf_handle(&file_priv->prime, args->handle);
>  		}
>  
> -		drm_prime_remove_buf_handle(&file_priv->prime, args->handle);
> -	}
> -
> -	ret = 0;
> -
> -	spin_lock(&file_priv->table_lock);
> -	idr_remove(&file_priv->object_idr, args->handle);
> -	spin_unlock(&file_priv->table_lock);
> +		ret = 0;
>  
> -out_unlock:
> -	mutex_unlock(&file_priv->prime.lock);
> +		spin_lock(&file_priv->table_lock);
> +		idr_remove(&file_priv->object_idr, args->handle);
> +		spin_unlock(&file_priv->table_lock);
> +	}
>  out:
>  	drm_gem_object_put(obj);
>  
> 
> base-commit: 72c25183cac9bc584c9de21797a5883af44bcc7a

-- 
Regards,

Laurent Pinchart
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
