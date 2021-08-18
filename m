Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A617F3F023E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 13:06:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 764A061298
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 11:06:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3230B61444; Wed, 18 Aug 2021 11:06:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2837A6102D;
	Wed, 18 Aug 2021 11:06:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 513976055D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 11:06:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 414706102D; Wed, 18 Aug 2021 11:06:42 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id 352F16055D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 11:06:40 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id h13so2915864wrp.1
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 04:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=NPOr3Gsm++Jn+YbgaVuAdXWQs+lGHRq4aVwKxZvTaSw=;
 b=Gb+bX/DMqPhU/Gs13lF8AY1wqU95YsbV5W+CDvEpOSq0hnHYwwvnW6d/lNA9UADnZX
 09wq+/BL4admOxeXXY4T1RPPuMJyOhLwUN6623S+X/BbKTRUPVQ4UIq69HbzA1KcPZ+B
 Hjsq2uYLK6ZiY0UjkL8U9aT8QL0lkk0TXVXCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=NPOr3Gsm++Jn+YbgaVuAdXWQs+lGHRq4aVwKxZvTaSw=;
 b=O7+k21OyT8BAvuLVFHC3bFYxv4bXALea0e6i2nfg+ZPsLJrVK5zQCk2uN0soPIBS9m
 Dc1HRH3Iue2RxGE9OVy7uyz8qFE68AKpUiUuqFlp94WOd0ku497z3p6EKrrmXEz34E+j
 fyO78eShFG63ELEog5dUoFhL2uff8VjOD58oKK0uHXD/Q9AQBKa6/AqP9Hy6wo/kDQ6Y
 9vDsDmmwqC2RR/U/yS5XS897KXBxIG2pWUY0vEXSyKYJH7Cci6pdV/ZMtP8giMUKEHOV
 hEq/k03rZ/HKDfUwjyMfcrYvINexDCkF48yeGWjdZk+BRZ6jvkZRFSLCu81vZ45Nx++F
 0ikw==
X-Gm-Message-State: AOAM533eRXCHCjAxlagfMvWrzrUo/G/12y5mBYjCJz2O1vxIUSSRZndw
 Qxxj9SZaJ0i3hlaeUc2UmulT7g==
X-Google-Smtp-Source: ABdhPJy3direa3AYQ9AORP/zJ+ru6FCIsPvkYBAl/d0IdWCjpdrItlf4YzM0hadmH90C6qm9MQnNjg==
X-Received: by 2002:adf:f282:: with SMTP id k2mr9819865wro.255.1629284799276; 
 Wed, 18 Aug 2021 04:06:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d8sm5575127wrx.12.2021.08.18.04.06.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 04:06:38 -0700 (PDT)
Date: Wed, 18 Aug 2021 13:06:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <YRzpvHBQuq0kFtzH@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, sumit.semwal@linaro.org,
 christian.koenig@amd.com, axboe@kernel.dk, oleg@redhat.com,
 tglx@linutronix.de, dvyukov@google.com, walter-zh.wu@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 kernel test robot <lkp@intel.com>
References: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
 <20210818073824.1560124-9-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210818073824.1560124-9-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 8/9] kernel: export task_work_add
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
Cc: axboe@kernel.dk, walter-zh.wu@mediatek.com, tzimmermann@suse.de,
 gregkh@linuxfoundation.org, airlied@linux.ie, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, maarten.lankhorst@linux.intel.com,
 oleg@redhat.com, mripard@kernel.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, kernel test robot <lkp@intel.com>,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, skhan@linuxfoundation.org,
 tglx@linutronix.de, linux-kernel-mentees@lists.linuxfoundation.org,
 dvyukov@google.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Aug 18, 2021 at 03:38:23PM +0800, Desmond Cheong Zhi Xi wrote:
> The task_work_add function is needed to prevent userspace races with
> DRM modesetting rights.
> 
> Some DRM ioctls can change modesetting permissions while other
> concurrent users are performing modesetting. To prevent races with
> userspace, such functions should flush readers of old permissions
> before returning to user mode. As the function that changes
> permissions might itself be a reader of the old permissions, we intend
> to schedule this flush using task_work_add.
> 
> However, when DRM is compiled as a loadable kernel module without
> exporting task_work_add, we get the following compilation error:
> 
> ERROR: modpost: "task_work_add" [drivers/gpu/drm/drm.ko] undefined!
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>

Just realized another benefit of pushing the dev->master_rwsem write
locks down into ioctls that need them: We wouldn't need this function here
exported for use in drm. But also I'm not sure that works any better than
the design in your current patch set ...
-Daniel

> ---
>  kernel/task_work.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/kernel/task_work.c b/kernel/task_work.c
> index 1698fbe6f0e1..90000404af2b 100644
> --- a/kernel/task_work.c
> +++ b/kernel/task_work.c
> @@ -60,6 +60,7 @@ int task_work_add(struct task_struct *task, struct callback_head *work,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL(task_work_add);
>  
>  /**
>   * task_work_cancel_match - cancel a pending work added by task_work_add()
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
