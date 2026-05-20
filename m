Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFsjKc7QDWr53QUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:18:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4193F590ADD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 17:18:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA1264097D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 May 2026 15:18:36 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 9B08940982
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 May 2026 15:18:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=hWyY5U2U;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1779290292; cv=none;
	d=zohomail.com; s=zohoarc;
	b=DPRjwcSgU9NAVK3t6ludoB8Fls1PIsK60Ck1S6Ap3ODgBnm5sGrRIMXN40JKZBXPvLcYec7RJ4obTnn6CLzBWHyAvaHn0C11trK7PSCpgkKWOTG9ntSWfdxCbRjaUcr4FDiBHzyGzjN6JdFBFmOS+qUX/4QtUsrn465rk41SAyQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1779290292; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=1x0FyOWivNSIA+YkZsdTIQiJF2Ucpta4cBeqHywF/cU=;
	b=cKykkgi12BHITTf3cmtblCq9A1PtSiPBmGC7d6qJKKQ18zKc053waEwbsO0h3sBaiJ99hcj1oFt1BVBMl6bx9T6bj6mZVkUEhR31j3muX/EsqzbfNtBB8DN8rpgUbJse7ri8a4uZ4ipdLzPkodtTUgyb/KvkOMzYrbQdqXVUCJI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779290292;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:From:From:To:To:Cc:Cc:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1x0FyOWivNSIA+YkZsdTIQiJF2Ucpta4cBeqHywF/cU=;
	b=hWyY5U2U9APDrOH/pIPFEvRW1dBjtgOXeO+Sg1GfhhWD8+ox0YEyaMGKIoWdiCuu
	tTGicufnczt0iKCBwUgMmZW2AhJ1Y9QyK+R2CN6dwzO/sTi+FN4SDqFmcEy/xVhbZk1
	hqTfPl5B56mtrSyS68pfcWFgc4TKBk1dYzeUL50Y=
Received: by mx.zohomail.com with SMTPS id 1779290290871362.15164197070646;
	Wed, 20 May 2026 08:18:10 -0700 (PDT)
Message-ID: <ca7407f6-217b-4b78-9a98-e3c28756e565@collabora.com>
Date: Wed, 20 May 2026 18:18:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Deepanshu Kartikey <kartikey406@gmail.com>, airlied@redhat.com,
 kraxel@redhat.com, gurchetansingh@chromium.org, olvaffe@gmail.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20260519082247.34470-1-kartikey406@gmail.com>
 <43ecdd2f-5faf-432a-a814-77190b3ef239@collabora.com>
Content-Language: en-US
In-Reply-To: <43ecdd2f-5faf-432a-a814-77190b3ef239@collabora.com>
X-ZohoMailClient: External
X-Spamd-Bar: -----
Message-ID-Hash: PSCBCFABBU2CABC3BQ3ZTW6EKL4GKH35
X-Message-ID-Hash: PSCBCFABBU2CABC3BQ3ZTW6EKL4GKH35
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] drm/virtio: use uninterruptible resv lock for plane updates
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PSCBCFABBU2CABC3BQ3ZTW6EKL4GKH35/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[dmitry.osipenko@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,72bd3dd3a5d5f39a0271];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,collabora.com:mid,syzkaller.appspot.com:url,linaro.org:email]
X-Rspamd-Queue-Id: 4193F590ADD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/20/26 18:04, Dmitry Osipenko wrote:
> On 5/19/26 11:22, Deepanshu Kartikey wrote:
>> virtio_gpu_cursor_plane_update() and virtio_gpu_resource_flush() lock
>> the framebuffer BO's dma_resv via virtio_gpu_array_lock_resv() and
>> ignore its return value. The function can fail with -EINTR from
>> dma_resv_lock_interruptible() (signal during lock wait) or with
>> -ENOMEM from dma_resv_reserve_fences() (fence slot allocation),
>> leaving the resv lock not held. The queue path then walks the object
>> array and calls dma_resv_add_fence(), which requires the lock held;
>> with lockdep enabled this trips dma_resv_assert_held():
>>
>>   WARNING: drivers/dma-buf/dma-resv.c:296 at dma_resv_add_fence+0x71e/0x840
>>   Call Trace:
>>    virtio_gpu_array_add_fence
>>    virtio_gpu_queue_ctrl_sgs
>>    virtio_gpu_queue_fenced_ctrl_buffer
>>    virtio_gpu_cursor_plane_update
>>    drm_atomic_helper_commit_planes
>>    drm_atomic_helper_commit_tail
>>    commit_tail
>>    drm_atomic_helper_commit
>>    drm_atomic_commit
>>    drm_atomic_helper_update_plane
>>    __setplane_atomic
>>    drm_mode_cursor_universal
>>    drm_mode_cursor_common
>>    drm_mode_cursor_ioctl
>>    drm_ioctl
>>    __x64_sys_ioctl
>>
>> Beyond the WARN, mutating the dma_resv fence list without the lock
>> races with concurrent readers/writers and can corrupt the list.
>>
>> Both call sites run inside the .atomic_update plane callback, which
>> DRM atomic helpers do not allow to fail (by the time it runs, the
>> commit has been signed off to userspace and there is no clean
>> rollback path). Moving the lock acquisition to .prepare_fb was
>> rejected because the broader lock scope deadlocks against other BO
>> locking paths in the same atomic commit.
>>
>> Introduce virtio_gpu_lock_one_resv_uninterruptible() that uses
>> dma_resv_lock() instead of dma_resv_lock_interruptible(). This
>> eliminates the -EINTR failure mode -- the realistic syzbot trigger
>> -- without extending the lock hold across the commit. The helper
>> locks a single BO and rejects nents > 1 with -EINVAL; both fix
>> sites lock exactly one BO.
>>
>> Use it from virtio_gpu_cursor_plane_update() and
>> virtio_gpu_resource_flush(); check the return value to handle the
>> remaining -ENOMEM case from dma_resv_reserve_fences() by freeing
>> the objs and skipping the plane update for that frame. The
>> framebuffer BOs touched here are not shared with other contexts
>> and lock contention is expected to be brief, so the loss of
>> signal-interruptibility is acceptable.
>>
>> Other callers of virtio_gpu_array_lock_resv() (the ioctl paths)
>> continue to use the interruptible variant.
>>
>> The bug was reported by syzbot, triggered via fault injection
>> (fail_nth) on the DRM_IOCTL_MODE_CURSOR path, which forces the
>> -ENOMEM branch in dma_resv_reserve_fences().
>>
>> Reported-by: syzbot+72bd3dd3a5d5f39a0271@syzkaller.appspotmail.com
>> Closes: https://syzkaller.appspot.com/bug?extid=72bd3dd3a5d5f39a0271
>> Fixes: 5cfd31c5b3a3 ("drm/virtio: fix virtio_gpu_cursor_plane_update().")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Deepanshu Kartikey <kartikey406@gmail.com>
>> ---
>> v4: Rename the helper to virtio_gpu_lock_one_resv_uninterruptible()
>>     and reject objs->nents > 1 with -EINVAL. The v3 helper's
>>     multi-object branch used drm_gem_lock_reservations(), which is
>>     interruptible, contradicting the "uninterruptible" name; both
>>     fix sites lock a single BO so the multi-object path is dropped.
>>     (Dmitry Osipenko)
>> v3: Drop the prepare_fb/cleanup_fb approach from v2 (it deadlocked
>>     against virtio_gpu_resource_flush(), which also locks the BO in
>>     the same atomic commit). Instead add an uninterruptible variant
>>     of the resv lock helper and use it in both
>>     virtio_gpu_cursor_plane_update() and virtio_gpu_resource_flush().
>>     (Dmitry Osipenko)
>> v2: Move resv lock acquisition from .atomic_update (which must not
>>     fail) to .prepare_fb (which may), per maintainer review of v1.
>>     The v1 approach of silently skipping the cursor update on lock
>>     failure violated the atomic-commit contract with userspace.
>> ---
>>  drivers/gpu/drm/virtio/virtgpu_drv.h   |  1 +
>>  drivers/gpu/drm/virtio/virtgpu_gem.c   | 17 +++++++++++++++++
>>  drivers/gpu/drm/virtio/virtgpu_plane.c | 10 ++++++++--
>>  3 files changed, 26 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/virtio/virtgpu_drv.h b/drivers/gpu/drm/virtio/virtgpu_drv.h
>> index f17660a71a3e..2f3531950aa4 100644
>> --- a/drivers/gpu/drm/virtio/virtgpu_drv.h
>> +++ b/drivers/gpu/drm/virtio/virtgpu_drv.h
>> @@ -317,6 +317,7 @@ virtio_gpu_array_from_handles(struct drm_file *drm_file, u32 *handles, u32 nents
>>  void virtio_gpu_array_add_obj(struct virtio_gpu_object_array *objs,
>>  			      struct drm_gem_object *obj);
>>  int virtio_gpu_array_lock_resv(struct virtio_gpu_object_array *objs);
>> +int virtio_gpu_lock_one_resv_uninterruptible(struct virtio_gpu_object_array *objs);
>>  void virtio_gpu_array_unlock_resv(struct virtio_gpu_object_array *objs);
>>  void virtio_gpu_array_add_fence(struct virtio_gpu_object_array *objs,
>>  				struct dma_fence *fence);
>> diff --git a/drivers/gpu/drm/virtio/virtgpu_gem.c b/drivers/gpu/drm/virtio/virtgpu_gem.c
>> index f22dc5c21cd4..435d37d36034 100644
>> --- a/drivers/gpu/drm/virtio/virtgpu_gem.c
>> +++ b/drivers/gpu/drm/virtio/virtgpu_gem.c
>> @@ -238,6 +238,23 @@ int virtio_gpu_array_lock_resv(struct virtio_gpu_object_array *objs)
>>  	return ret;
>>  }
>>  
>> +int virtio_gpu_lock_one_resv_uninterruptible(struct virtio_gpu_object_array *objs)
>> +{
>> +	int ret;
>> +
>> +	if (objs->nents != 1)
>> +		return -EINVAL;
>> +
>> +	dma_resv_lock(objs->objs[0]->resv, NULL);
>> +
>> +	ret = dma_resv_reserve_fences(objs->objs[0]->resv, 1);
>> +	if (ret) {
>> +		virtio_gpu_array_unlock_resv(objs);
>> +		return ret;
>> +	}
>> +	return 0;
>> +}
>> +
>>  void virtio_gpu_array_unlock_resv(struct virtio_gpu_object_array *objs)
>>  {
>>  	if (objs->nents == 1) {
>> diff --git a/drivers/gpu/drm/virtio/virtgpu_plane.c b/drivers/gpu/drm/virtio/virtgpu_plane.c
>> index a126d1b25f46..652352424744 100644
>> --- a/drivers/gpu/drm/virtio/virtgpu_plane.c
>> +++ b/drivers/gpu/drm/virtio/virtgpu_plane.c
>> @@ -215,7 +215,10 @@ static void virtio_gpu_resource_flush(struct drm_plane *plane,
>>  		if (!objs)
>>  			return;
>>  		virtio_gpu_array_add_obj(objs, vgfb->base.obj[0]);
>> -		virtio_gpu_array_lock_resv(objs);
>> +		if (virtio_gpu_lock_one_resv_uninterruptible(objs)) {
>> +			virtio_gpu_array_put_free(objs);
>> +			return;
>> +		}
>>  		virtio_gpu_cmd_resource_flush(vgdev, bo->hw_res_handle, x, y,
>>  					      width, height, objs,
>>  					      vgplane_st->fence);
>> @@ -459,7 +462,10 @@ static void virtio_gpu_cursor_plane_update(struct drm_plane *plane,
>>  		if (!objs)
>>  			return;
>>  		virtio_gpu_array_add_obj(objs, vgfb->base.obj[0]);
>> -		virtio_gpu_array_lock_resv(objs);
>> +		if (virtio_gpu_lock_one_resv_uninterruptible(objs)) {
>> +			virtio_gpu_array_put_free(objs);
>> +			return;
>> +		}
>>  		virtio_gpu_cmd_transfer_to_host_2d
>>  			(vgdev, 0,
>>  			 plane->state->crtc_w,
> 
> Applied to misc-next, thanks

Realized patche should go to -fixes, applied to misc-fixes too

-- 
Best regards,
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
