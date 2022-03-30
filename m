Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE1A4EBB77
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 09:09:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C73BE3EC2B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 07:09:21 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 3F7CF3EC1D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Mar 2022 07:09:17 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id bi13-20020a05600c3d8d00b0038c2c33d8f3so598648wmb.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Mar 2022 00:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qiED4Qk72kYFMwtbD+Q9ldYh5qrdjiXwvR6z6T0AKC8=;
        b=LmMJKbmCwNNNOzUWk8XjIntZSWTp/GKc8Ib8H5z9XdbR3WfbB5BYB2ZdSk+BW6JkC2
         BmQJ4nBnu0nbARR63z3NR6U5aGfkiKPt3UGF10RvJycq6fgxJfOlbOWO4WPZyp0wgP2D
         JkiAGNFvUgFOQ3tMjObQTeD727Gv+ruD98anTYAzyiv2L+VKxSVbByX3iD4yUFZsZ5xP
         ii85ryFTK5GvUTetjlWqJnS6LP6OsoEHsLaxyqLPdr7iD8bIql7fgkWLkw4V2/NrpyZR
         38qBXG9o9QjHvYFHU+fy9ZXNbDPlGNhHDqcejSTlgs8oKPb4fv0ti1jL6AQLMY8vXtgr
         5i/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qiED4Qk72kYFMwtbD+Q9ldYh5qrdjiXwvR6z6T0AKC8=;
        b=vvhNQ2NETpAasFaHow9g/t+l1yyjPRAYbdhY7U0JFamaz4THBDVUOXhFT+5g2dKbHB
         ZsP4l4patF+LamCMRbdBoQVm+BK+qdy1mxDdjfIveqmpuQaVLc3ZepUlT4UsdmQmDDbi
         yNnadHHLh8VCt5mNzX31PjGjIEulVVPTYRxxPNUbh0swiNKBJq6YFGJmliHvrWQduk6z
         Alk0AUbGexi1ulvZaokI1MfdrGKZDJxUSaFp+0ePYRZrOMUXyBBcq+bMB9OVGfjlKZBp
         HeVHcBcNpI9pG4bhqR7oa5NEPMd9QK92z2I0xZAmIjnbx2dRfacBq1IDyn/Iad9oSEnI
         B2lQ==
X-Gm-Message-State: AOAM532lc63eLtQipNZPLvERgMhwON3uuJa37cFjk7dYFnpAotfs+tUs
	zV1uunhPspRMNZDLmhMA3qc=
X-Google-Smtp-Source: ABdhPJz5BEoqm+tnf5aMdPY22Psk9PtsaVfU4xJO3OsNPxofrQR0V6Ti0M/ctJ5lcktmKtXzRBTSxw==
X-Received: by 2002:a05:600c:5023:b0:38d:1261:aac6 with SMTP id n35-20020a05600c502300b0038d1261aac6mr3033337wmr.180.1648624156241;
        Wed, 30 Mar 2022 00:09:16 -0700 (PDT)
Received: from [192.168.178.21] (p5b0eab60.dip0.t-ipconnect.de. [91.14.171.96])
        by smtp.gmail.com with ESMTPSA id z18-20020adfec92000000b00203f04ed4a8sm16144206wrn.13.2022.03.30.00.09.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 00:09:15 -0700 (PDT)
Message-ID: <8af3d213-6cb7-a021-c198-e1bd37c47e7c@gmail.com>
Date: Wed, 30 Mar 2022 09:09:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Pavel Skripkin <paskripkin@gmail.com>, sumit.semwal@linaro.org,
 gustavo@padovan.org, christian.koenig@amd.com, daniel.vetter@ffwll.ch
References: <20220329221425.22691-1-paskripkin@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20220329221425.22691-1-paskripkin@gmail.com>
Message-ID-Hash: WR4F5S5I7ZGF73LVVND4ZXHMOF22EAVS
X-Message-ID-Hash: WR4F5S5I7ZGF73LVVND4ZXHMOF22EAVS
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzbot+5c943fe38e86d615cac2@syzkaller.appspotmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH next] dma-buf/sync-file: do not allow zero size allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WR4F5S5I7ZGF73LVVND4ZXHMOF22EAVS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

That problem is already fixed with patch 21d139d73f77 dma-buf/sync-file: 
fix logic error in new fence merge code.

Am 30.03.22 um 00:14 schrieb Pavel Skripkin:
> syzbot reported GPF in dma_fence_array_first(), which is caused by
> dereferencing ZERO_PTR in dma-buf internals.
>
> ZERO_PTR was generated in sync_file_merge(). This functuion tries to
> reduce allocation size, but does not check if it reducing to 0.

This is actually perfectly ok. The code above should have prevented the 
size to become 0.

Regards,
Christian.

>
> Fix reported bug by validating `index` value before passing it to
> krealloc_array().
>
> Fail log:
>
> general protection fault, probably for non-canonical address 0xdffffc0000000002: 0000 [#1] PREEMPT SMP KASAN
> KASAN: null-ptr-deref in range [0x0000000000000010-0x0000000000000017]
> CPU: 1 PID: 3595 Comm: syz-executor814 Not tainted 5.17.0-next-20220328-syzkaller #0
> ...
> RIP: 0010:dma_fence_array_first+0x78/0xb0 drivers/dma-buf/dma-fence-array.c:234
> ...
> Call Trace:
>   <TASK>
>   __dma_fence_unwrap_array include/linux/dma-fence-unwrap.h:42 [inline]
>   dma_fence_unwrap_first include/linux/dma-fence-unwrap.h:57 [inline]
>   sync_file_ioctl_fence_info drivers/dma-buf/sync_file.c:414 [inline]
>   sync_file_ioctl+0x248/0x22c0 drivers/dma-buf/sync_file.c:477
>   vfs_ioctl fs/ioctl.c:51 [inline]
>   __do_sys_ioctl fs/ioctl.c:870 [inline]
>
> There was same problem with initial kcalloc() allocation in same
> function, so it's fixed as well.
>
> Reported-and-tested-by: syzbot+5c943fe38e86d615cac2@syzkaller.appspotmail.com
> Fixes: 519f490db07e ("dma-buf/sync-file: fix warning about fence containers")
> Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
> ---
>   drivers/dma-buf/sync_file.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index b8dea4ec123b..aa744f017008 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -212,7 +212,7 @@ static struct sync_file *sync_file_merge(const char *name, struct sync_file *a,
>   	dma_fence_unwrap_for_each(b_fence, &b_iter, b->fence)
>   		++num_fences;
>   
> -	if (num_fences > INT_MAX)
> +	if (num_fences > INT_MAX || !num_fences)
>   		goto err_free_sync_file;
>   
>   	fences = kcalloc(num_fences, sizeof(*fences), GFP_KERNEL);
> @@ -264,7 +264,7 @@ static struct sync_file *sync_file_merge(const char *name, struct sync_file *a,
>   	if (index == 0)
>   		add_fence(fences, &index, dma_fence_get_stub());
>   
> -	if (num_fences > index) {
> +	if (index && num_fences > index) {
>   		struct dma_fence **tmp;
>   
>   		/* Keep going even when reducing the size failed */

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
