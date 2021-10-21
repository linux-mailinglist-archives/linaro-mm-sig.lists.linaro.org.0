Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E095243603F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Oct 2021 13:29:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BA6960C15
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Oct 2021 11:29:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CEC0960EA6; Thu, 21 Oct 2021 11:29:10 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E56E60AEB;
	Thu, 21 Oct 2021 11:29:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A0AB760836
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 11:29:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9384060AEB; Thu, 21 Oct 2021 11:29:05 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 8B61160836
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 11:29:03 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id o20so303665wro.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Oct 2021 04:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=JwVQwN9/gn7CpBFk2zlaKtJsw/c4l/Vxfk//DWl20Kw=;
 b=g1IXTAt2Sbj3Ocx5s6Gbrz/DhNbque9h9mzTj2GWa7phvsFWFdnjOZcxyq/0nKzoy7
 i06OqRlnUVhqinhnf1CeXShdfB+WiRayuOxXA/1gnEwkiex6MT5L7kCy1JhFT0zhLExp
 HN1MtCb9tWlmo+CGV46CIUzm3X3L4AlH2/UqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=JwVQwN9/gn7CpBFk2zlaKtJsw/c4l/Vxfk//DWl20Kw=;
 b=B4EnhSDrSNQlBJPQ4X1z9nY7RdD1rR6kuFHfjQdGlJJlz335kOKU5HjoLPZTD5IIOt
 1h0Ds6ebj7ziNz10Mmyp6KIxyGYA60onZ7P13HXWswibh89sJ2xg5Kpol5CExZpL8m0T
 MNZSW8TAhXQYMsuAsMnagnTQcLgF6jrBKcqsSYnrRfClcOiSwK7xojQgy2dl7WJfhdBB
 C8+zM5RPZ6BpDSLkOxm9LfyX5mgm6HJk320u1RVKcPz9h5ZZMlOMnV97Q1ZHwwpq890h
 eMFx0Z5OpWbkqT6nms9BEiP1a/Rz+9nHeW7LcO4XhHqrSl9FaB3h0L52m//0gq/nY9GD
 K2HA==
X-Gm-Message-State: AOAM533kBnZEY44nnZ/tps62P6r/rz5rO/gzuuYvphc/x/+mx15ZP0ea
 MQvYuTyUSRUDv77gcTXavnR8Qg==
X-Google-Smtp-Source: ABdhPJw0a/W9DjJ3g7NpCHaGmpBUykzh9wqe4oFQGoGy33wM0/oJepxE6tvHrEFlDAo2+HgkvkEAkg==
X-Received: by 2002:adf:c78d:: with SMTP id l13mr6330185wrg.134.1634815742582; 
 Thu, 21 Oct 2021 04:29:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k10sm7617128wmr.32.2021.10.21.04.29.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 04:29:02 -0700 (PDT)
Date: Thu, 21 Oct 2021 13:29:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Felix Kuehling <felix.kuehling@amd.com>
Message-ID: <YXFO/Dy1iH3q9snu@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-13-christian.koenig@amd.com>
 <YWboMfLOIjl1l7tF@phenom.ffwll.local>
 <a0a926a7-13d0-b996-5f32-36aa6d74165e@gmail.com>
 <c18a4c91-93b4-79ed-0907-84adb29761d8@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c18a4c91-93b4-79ed-0907-84adb29761d8@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 12/28] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 19, 2021 at 12:30:40PM -0400, Felix Kuehling wrote:
> Am 2021-10-19 um 7:36 a.m. schrieb Christian K=F6nig:
> > Am 13.10.21 um 16:07 schrieb Daniel Vetter:
> >> On Tue, Oct 05, 2021 at 01:37:26PM +0200, Christian K=F6nig wrote:
> >>> Simplifying the code a bit.
> >>>
> >>> Signed-off-by: Christian K=F6nig <christian.koenig@amd.com>
> >>> ---
> >>> =A0 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c | 14 ++++----------
> >>> =A0 1 file changed, 4 insertions(+), 10 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> >>> b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> >>> index e8d70b6e6737..722e3c9e8882 100644
> >>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> >>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> >>> @@ -1345,10 +1345,9 @@ static bool
> >>> amdgpu_ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
> >>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 const struct ttm_place *place)
> >>> =A0 {
> >>> =A0=A0=A0=A0=A0 unsigned long num_pages =3D bo->resource->num_pages;
> >>> +=A0=A0=A0 struct dma_resv_iter resv_cursor;
> >>> =A0=A0=A0=A0=A0 struct amdgpu_res_cursor cursor;
> >>> -=A0=A0=A0 struct dma_resv_list *flist;
> >>> =A0=A0=A0=A0=A0 struct dma_fence *f;
> >>> -=A0=A0=A0 int i;
> >>> =A0 =A0=A0=A0=A0=A0 /* Swapout? */
> >>> =A0=A0=A0=A0=A0 if (bo->resource->mem_type =3D=3D TTM_PL_SYSTEM)
> >>> @@ -1362,14 +1361,9 @@ static bool
> >>> amdgpu_ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
> >>> =A0=A0=A0=A0=A0=A0 * If true, then return false as any KFD process ne=
eds all its
> >>> BOs to
> >>> =A0=A0=A0=A0=A0=A0 * be resident to run successfully
> >>> =A0=A0=A0=A0=A0=A0 */
> >>> -=A0=A0=A0 flist =3D dma_resv_shared_list(bo->base.resv);
> >>> -=A0=A0=A0 if (flist) {
> >>> -=A0=A0=A0=A0=A0=A0=A0 for (i =3D 0; i < flist->shared_count; ++i) {
> >>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 f =3D rcu_dereference_protected(fl=
ist->shared[i],
> >>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 dma_resv_held(bo->base=
.resv));
> >>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (amdkfd_fence_check_mm(f, curre=
nt->mm))
> >>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return false;
> >>> -=A0=A0=A0=A0=A0=A0=A0 }
> >>> +=A0=A0=A0 dma_resv_for_each_fence(&resv_cursor, bo->base.resv, true,=
 f) {
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 ^false?
> >>
> >> At least I'm not seeing the code look at the exclusive fence here.
> >
> > Yes, but that's correct. We need to look at all potential fences.
> =

> amdkfd_fence_check_mm is only meaningful for KFD eviction fences, and
> they are always added as shared fences. I think setting all_fences =3D
> false would return only the exclusive fence.

Hm yeah I got that wrong, which puts my entire review a bit in question
:-)

Anyway on the patch: Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> =

> Regards,
> =A0 Felix
> =

> =

> >
> > It's a design problem in KFD if you ask me, but that is a completely
> > different topic.
> >
> > Christian.
> >
> >> -Daniel
> >>
> >>> +=A0=A0=A0=A0=A0=A0=A0 if (amdkfd_fence_check_mm(f, current->mm))
> >>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return false;
> >>> =A0=A0=A0=A0=A0 }
> >>> =A0 =A0=A0=A0=A0=A0 switch (bo->resource->mem_type) {
> >>> --=A0
> >>> 2.25.1
> >>>
> >

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
