Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QP6nGWtADGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:50:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AD557CD28
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:50:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79FFC40971
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:50:17 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 5E9E23F829
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 23:54:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WR4OCB0I;
	spf=pass (lists.linaro.org: domain of superm1@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=superm1@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 02BFE60120;
	Mon, 18 May 2026 23:54:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7EF6C2BCB8;
	Mon, 18 May 2026 23:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779148449;
	bh=ZZernUP6/Hi6KA5O7QXbFZWWf//ctZy3kOMXm/a4ikQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WR4OCB0I7mOtJEjSJu5BrcVnBmtMsjcFskuVZ3m9ZjrRdeX4LbZ21o1mmS6G9m+DD
	 KVpI5Pf21t44NZ+ddBVofR/0hF1n+cxokMAdZ1cDXXcmnRvyhUdHe0Ne/gMWqZGEE3
	 3dueirwjGNoZdkV2f0PkJxVQ1hF4WD2rQX0pkcGjIdVC70wOiM6MOHOen+r9CdTxx+
	 4p+7Kkc7kcvu+Cx6lfUZaJXlq9YAZZpSakXcwKxJ+UIbo/pLy3W8BFyib5CZV+jZdC
	 wREcWsPsZ42Npf3O4Uo+XysmbpL9hZTMbtgY10zZWCaNgTYtXEl5f0xmVFoYhUfVrR
	 psjrPpVNWwAfw==
Message-ID: <a1d2b178-acac-41ef-ab81-0997a0a19612@kernel.org>
Date: Mon, 18 May 2026 18:54:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lizhi Hou <lizhi.hou@amd.com>, ogabbay@kernel.org,
 quic_jhugo@quicinc.com, karol.wachowski@linux.intel.com
References: <20260518155706.937461-1-lizhi.hou@amd.com>
Content-Language: en-US
From: Mario Limonciello <superm1@kernel.org>
In-Reply-To: <20260518155706.937461-1-lizhi.hou@amd.com>
X-Spamd-Bar: ----
X-MailFrom: superm1@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VU742WOVCDT6ZY2HSECSDF4IH5LYFOU4
X-Message-ID-Hash: VU742WOVCDT6ZY2HSECSDF4IH5LYFOU4
X-Mailman-Approved-At: Tue, 19 May 2026 10:49:56 +0000
CC: linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, simona@ffwll.ch, max.zhen@amd.com, sonal.santan@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V2] accel/amdxdna: Remove mmap and export support for ubuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VU742WOVCDT6ZY2HSECSDF4IH5LYFOU4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[superm1@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:-]
X-Rspamd-Queue-Id: 05AD557CD28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/18/26 10:57, Lizhi Hou wrote:
> Ubuf pages should not be mmaped or exported. Remove the ubuf mmap callback
> and return -EOPNOTSUPP when exporting ubuf objects.
> 
> ubuf vmap is also removed for there is not a real use case yet.
> 
> Fixes: bd72d4acda10 ("accel/amdxdna: Support user space allocated buffer")
> Cc: Christian Koenig <christian.koenig@amd.com>
> Signed-off-by: Lizhi Hou <lizhi.hou@amd.com>
Reviewed-by: Mario Limonciello (AMD) <superm1@kernel.org>
> ---
> v2:
>    Remove dead code amdxdna_ubuf_vm_ops structure and amdxdna_ubuf_vm_fault
>    function.
>    Rename Non-exportable buffer flag from 'pri' to 'private_buffer'
> 
>   drivers/accel/amdxdna/amdxdna_gem.c  |  9 ++++-
>   drivers/accel/amdxdna/amdxdna_gem.h  |  2 ++
>   drivers/accel/amdxdna/amdxdna_ubuf.c | 50 ----------------------------
>   3 files changed, 10 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/accel/amdxdna/amdxdna_gem.c b/drivers/accel/amdxdna/amdxdna_gem.c
> index 319d2064fafa..6b9b556de555 100644
> --- a/drivers/accel/amdxdna/amdxdna_gem.c
> +++ b/drivers/accel/amdxdna/amdxdna_gem.c
> @@ -492,6 +492,9 @@ static struct dma_buf *amdxdna_gem_prime_export(struct drm_gem_object *gobj, int
>   	struct amdxdna_gem_obj *abo = to_xdna_obj(gobj);
>   	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
>   
> +	if (abo->private_buffer)
> +		return ERR_PTR(-EOPNOTSUPP);
> +
>   	if (abo->dma_buf) {
>   		get_dma_buf(abo->dma_buf);
>   		return abo->dma_buf;
> @@ -716,6 +719,7 @@ amdxdna_gem_create_ubuf_object(struct drm_device *dev, struct amdxdna_drm_create
>   {
>   	struct amdxdna_dev *xdna = to_xdna_dev(dev);
>   	struct amdxdna_drm_va_tbl va_tbl;
> +	struct amdxdna_gem_obj *abo;
>   	struct drm_gem_object *gobj;
>   	struct dma_buf *dma_buf;
>   
> @@ -742,7 +746,10 @@ amdxdna_gem_create_ubuf_object(struct drm_device *dev, struct amdxdna_drm_create
>   
>   	dma_buf_put(dma_buf);
>   
> -	return to_xdna_obj(gobj);
> +	abo = to_xdna_obj(gobj);
> +	abo->private_buffer = true;
> +
> +	return abo;
>   }
>   
>   static struct amdxdna_gem_obj *
> diff --git a/drivers/accel/amdxdna/amdxdna_gem.h b/drivers/accel/amdxdna/amdxdna_gem.h
> index 4fc48a1189d2..957305ccb485 100644
> --- a/drivers/accel/amdxdna/amdxdna_gem.h
> +++ b/drivers/accel/amdxdna/amdxdna_gem.h
> @@ -54,6 +54,8 @@ struct amdxdna_gem_obj {
>   
>   	/* True, if BO is managed by XRT, not application */
>   	bool				internal;
> +	/* True, if BO is not exportable */
> +	bool				private_buffer;
>   };
>   
>   #define to_gobj(obj)    (&(obj)->base.base)
> diff --git a/drivers/accel/amdxdna/amdxdna_ubuf.c b/drivers/accel/amdxdna/amdxdna_ubuf.c
> index 3769210c55cc..bb60fb80467e 100644
> --- a/drivers/accel/amdxdna/amdxdna_ubuf.c
> +++ b/drivers/accel/amdxdna/amdxdna_ubuf.c
> @@ -69,60 +69,10 @@ static void amdxdna_ubuf_release(struct dma_buf *dbuf)
>   	kfree(ubuf);
>   }
>   
> -static vm_fault_t amdxdna_ubuf_vm_fault(struct vm_fault *vmf)
> -{
> -	struct vm_area_struct *vma = vmf->vma;
> -	struct amdxdna_ubuf_priv *ubuf;
> -	unsigned long pfn;
> -	pgoff_t pgoff;
> -
> -	ubuf = vma->vm_private_data;
> -	pgoff = (vmf->address - vma->vm_start) >> PAGE_SHIFT;
> -
> -	pfn = page_to_pfn(ubuf->pages[pgoff]);
> -	return vmf_insert_pfn(vma, vmf->address, pfn);
> -}
> -
> -static const struct vm_operations_struct amdxdna_ubuf_vm_ops = {
> -	.fault = amdxdna_ubuf_vm_fault,
> -};
> -
> -static int amdxdna_ubuf_mmap(struct dma_buf *dbuf, struct vm_area_struct *vma)
> -{
> -	struct amdxdna_ubuf_priv *ubuf = dbuf->priv;
> -
> -	vma->vm_ops = &amdxdna_ubuf_vm_ops;
> -	vma->vm_private_data = ubuf;
> -	vm_flags_set(vma, VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP);
> -
> -	return 0;
> -}
> -
> -static int amdxdna_ubuf_vmap(struct dma_buf *dbuf, struct iosys_map *map)
> -{
> -	struct amdxdna_ubuf_priv *ubuf = dbuf->priv;
> -	void *kva;
> -
> -	kva = vmap(ubuf->pages, ubuf->nr_pages, VM_MAP, PAGE_KERNEL);
> -	if (!kva)
> -		return -EINVAL;
> -
> -	iosys_map_set_vaddr(map, kva);
> -	return 0;
> -}
> -
> -static void amdxdna_ubuf_vunmap(struct dma_buf *dbuf, struct iosys_map *map)
> -{
> -	vunmap(map->vaddr);
> -}
> -
>   static const struct dma_buf_ops amdxdna_ubuf_dmabuf_ops = {
>   	.map_dma_buf = amdxdna_ubuf_map,
>   	.unmap_dma_buf = amdxdna_ubuf_unmap,
>   	.release = amdxdna_ubuf_release,
> -	.mmap = amdxdna_ubuf_mmap,
> -	.vmap = amdxdna_ubuf_vmap,
> -	.vunmap = amdxdna_ubuf_vunmap,
>   };
>   
>   static int readonly_va_entry(struct amdxdna_drm_va_entry *va_ent)

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
