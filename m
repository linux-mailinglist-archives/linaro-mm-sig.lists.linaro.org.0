Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLFbFu6ZAWpxfwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 10:57:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BCF50A731
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 10:57:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D1143F77C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2026 08:57:16 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 10DB53EC66
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 08:57:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=YCSMJhEt;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1778447473; cv=none;
	d=zohomail.com; s=zohoarc;
	b=m3hSG6VFA+VMKYC8uPHLLw+wZYxxe9fYN8ypjfVbDkigy4DKmO12uvbuxZ3FA8D9y/0lm5vQ5OwZGGw1ObfkaViBdz4nbuhTQz1UErSc1BYMDopo+8iqO1y/SUo8M0FGHNvX8HsXT+WCTOpcqw8B6Tdofyd0OQF2VKyfjR2A0uQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1778447473; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=dC+SQBvHA00jKA55ndpglBB83kxP2d4e2FYSPidsICs=;
	b=kkSx1L5UJJ8bV7RIPevje+2oDORYVMfNuawEG5Afp4WyPIIOSuyYG3WIqfa+KTecYPxOpSgT+8wsL5YPULdy7JMqCtvnH5M3AykccFeLitMf7V+SmxgF8eqlEp9S3B2vGBWgh5MeJfNzvTAl4XBe3FZu47FgNLWmp1ScgpsyOiY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778447473;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=dC+SQBvHA00jKA55ndpglBB83kxP2d4e2FYSPidsICs=;
	b=YCSMJhEtdE86ILIB75QrvWALkfFwT7oSr+tZzZkTC8HGMiTMuOoDVMOfWxkzDc+l
	nrxJLX92/a4dI86I+cXxe1KfyKnDXJfBep7BXqWhPA/rHIU2kUe6aTdHE4GlDhrYauL
	YhQVdOa4/Wpwx1RYBH8K31mtabAXxEntI2AY4jaE=
Received: by mx.zohomail.com with SMTPS id 1778447470381353.01025610308295;
	Sun, 10 May 2026 14:11:10 -0700 (PDT)
Message-ID: <e1741cf2-3416-4464-bcae-741f0c87448b@collabora.com>
Date: Mon, 11 May 2026 00:11:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Deepanshu Kartikey <kartikey406@gmail.com>, airlied@redhat.com,
 kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20260510053025.100224-1-kartikey406@gmail.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20260510053025.100224-1-kartikey406@gmail.com>
X-ZohoMailClient: External
X-Spamd-Bar: -----
Message-ID-Hash: KNAXHLUAFKWOCE6GOMXC4ZY4DGEYFPEM
X-Message-ID-Hash: KNAXHLUAFKWOCE6GOMXC4ZY4DGEYFPEM
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/virtio: check virtio_gpu_array_lock_resv() return in cursor update
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNAXHLUAFKWOCE6GOMXC4ZY4DGEYFPEM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D0BCF50A731
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,redhat.com,chromium.org,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,amd.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	NEURAL_HAM(-0.00)[-0.322];
	FROM_NEQ_ENVFROM(0.00)[dmitry.osipenko@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,appspotmail.com:email]
X-Rspamd-Action: no action

Hello,

On 5/10/26 08:30, Deepanshu Kartikey wrote:
> virtio_gpu_cursor_plane_update() calls virtio_gpu_array_lock_resv()
> but ignores its return value. The function can fail in two ways:
> 
>   - dma_resv_lock_interruptible() returns -ERESTARTSYS when a signal
>     is delivered while waiting for the reservation lock.
>   - dma_resv_reserve_fences() returns -ENOMEM if it fails to allocate
>     a fence slot; in this case lock_resv unlocks before returning.
> 
> In both cases the resv lock is not held on return. The cursor path
> proceeds to queue a fenced transfer command. The queue path then
> walks the object array and calls dma_resv_add_fence() on the cursor
> BO's reservation. dma_resv_add_fence() requires the resv lock to be
> held; with lockdep enabled the missing lock trips
> dma_resv_assert_held():
> 
>   WARNING: drivers/dma-buf/dma-resv.c:296 at dma_resv_add_fence+0x71e/0x840
>   Call Trace:
>    virtio_gpu_array_add_fence+0xcd/0x140
>    virtio_gpu_queue_ctrl_sgs
>    virtio_gpu_queue_fenced_ctrl_buffer+0x578/0xfb0
>    virtio_gpu_cursor_plane_update+0x411/0xbc0
>    drm_atomic_helper_commit_planes+0x497/0xf10
>    ...
>    drm_mode_cursor_ioctl+0xd4/0x110
>    drm_ioctl+0x5e6/0xc60
>    __x64_sys_ioctl+0x18e/0x210
> 
> Beyond the WARN, mutating the dma_resv fence list without the lock
> races with concurrent readers/writers and can corrupt the list.
> 
> Check the return value of virtio_gpu_array_lock_resv(). On failure,
> drop the references taken by virtio_gpu_array_add_obj() with
> virtio_gpu_array_put_free() (which does not unlock, matching the
> not-locked state) and return without queueing the command. A
> skipped cursor frame is harmless; the WARN and the underlying race
> are not.
> 
> The bug was reported by syzbot, triggered via fault injection
> (fail_nth) on the DRM_IOCTL_MODE_CURSOR path, which forces the
> -ENOMEM branch in dma_resv_reserve_fences().
> 
> Reported-by: syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=72bd3dd3a5d5f39a0271
> Fixes: 5cfd31c5b3a3 ("drm/virtio: fix virtio_gpu_cursor_plane_update().")
> Cc: stable@vger.kernel.org
> Signed-off-by: Deepanshu Kartikey <kartikey406@gmail.com>
> ---
>  drivers/gpu/drm/virtio/virtgpu_plane.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/virtio/virtgpu_plane.c b/drivers/gpu/drm/virtio/virtgpu_plane.c
> index a126d1b25f46..ca379b08b9ec 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_plane.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_plane.c
> @@ -459,7 +459,10 @@ static void virtio_gpu_cursor_plane_update(struct drm_plane *plane,
>  		if (!objs)
>  			return;
>  		virtio_gpu_array_add_obj(objs, vgfb->base.obj[0]);
> -		virtio_gpu_array_lock_resv(objs);
> +		if (virtio_gpu_array_lock_resv(objs)) {
> +			virtio_gpu_array_put_free(objs);
> +			return;
> +		}
>  		virtio_gpu_cmd_transfer_to_host_2d
>  			(vgdev, 0,
>  			 plane->state->crtc_w,

Thanks for the patch. Atomic update shouldn't fail due to non-critical
errors like on a signal interrupt. Could you please move this code that
may fail in update() to .prepare/cleanup_fb() callbacks?

-- 
Best regards,
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
