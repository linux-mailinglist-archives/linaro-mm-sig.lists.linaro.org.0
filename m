Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AE55315B5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 May 2022 21:25:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AB423F4A0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 May 2022 19:25:45 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	by lists.linaro.org (Postfix) with ESMTPS id 8D28C3EF7A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 May 2022 13:10:49 +0000 (UTC)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-ed8a3962f8so6552303fac.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 May 2022 06:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sdLATnA0kcPNoqu23cfiMLmFcXc/ybpMfIMW+RMWEMQ=;
        b=WH/Yg/K2dHDjtYEYJw7pMyeqK00jg9PMsnBNd1pniF5ESO43pGuCO5fdpfXfdvg5GS
         dXTx+tXrKuQ2bEym+hdoMu3ZiHpWZh8HoBecQMlgoxILQUx5GP3ns+53JGTVqz81nxHs
         H8XCAbvLb1JMXpVlagB8O97aKBvYKmmLaiP9k1qxyXicWB1+cyUX/noBAfgX4Iwf+DWx
         Q/0VY3i4K/tlbkd14LKewDJl+22Dflp2EotibMBNPrwppTqRJghkISNCNY5jVSXp71Xy
         uYOFVcj6HHUiZvS0Sb2f8wEKmaPnVeXbBFwQS50AXuIsCdKGe5jPHfxGmCKc9rqrQBrU
         +CwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sdLATnA0kcPNoqu23cfiMLmFcXc/ybpMfIMW+RMWEMQ=;
        b=52fwD+16rORjxuVaIOtPnSYxyxTUCcpJILejk4fXlnBZW+SgR8zuRMAtN5h5uBbXVU
         d2gTHLRjv5dfgxqDC7qMusrMakq1MTdq9r/3xMDNFz5JxuExoaMfnRNE4ajRfG1+cLTh
         tB/LypIiM7dUmn1FxsDycY5YO7kx2c4dwzziRITQJj3dpm/gilhjjjzf+GBVMiB9CAhB
         8ZewMU5V/L685FPUIyKBugmSLP920PJsnXpFtkeji1x/jGAZCHPXBNDRF6Ijk+d6DPJO
         UyRPYY27xs9zvHrZq/+SqDDI2wmbnNGc+lKQQ00IIC0AML+G0Nw2brJ4fnLHmHfstEbM
         o0/Q==
X-Gm-Message-State: AOAM533qRrgzepxoeCbE2x0G0Yuzu8Jbc+I/MGaFhEiqA+8XSI17Rqqh
	7s1yCGOty9H8I3J2OYxc9Bgx+yovb3a1aFO4OkaiYw==
X-Google-Smtp-Source: ABdhPJyS3tE3qF+JcU9MU6Fu4rHz6PDTLQJ7dBPcxrOf3QlhTSnRdWW6XbLBXQksgHFll5uPtYKXAL4qBCTjy5JTea8=
X-Received: by 2002:a05:6870:d254:b0:db:12b5:da3 with SMTP id
 h20-20020a056870d25400b000db12b50da3mr5466937oac.211.1652361048752; Thu, 12
 May 2022 06:10:48 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000008a7a1c05c9e53c87@google.com> <000000000000942c2205d6dc0896@google.com>
In-Reply-To: <000000000000942c2205d6dc0896@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 12 May 2022 15:10:37 +0200
Message-ID: <CACT4Y+Yfw+SFqbjqkBFw9aN7PABEgJapr7M2iY-O3nBwrMHVfQ@mail.gmail.com>
To: syzbot <syzbot+91525b2bd4b5dff71619@syzkaller.appspotmail.com>
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UCT5XQMRH7W2YV3GB6F4TU7L5YYVJQL5
X-Message-ID-Hash: UCT5XQMRH7W2YV3GB6F4TU7L5YYVJQL5
X-Mailman-Approved-At: Mon, 23 May 2022 19:25:41 +0000
CC: airlied@linux.ie, bugs-a21@moonlit-rail.com, christian.koenig@amd.com, daniel.vetter@intel.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, javierm@redhat.com, linaro-mm-sig-owner@lists.linaro.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, maarten.lankhorst@linux.intel.com, maxime@cerno.tech, melissa.srw@gmail.com, mripard@kernel.org, sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tzimmermann@suse.de
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] WARNING in drm_gem_shmem_vm_open
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UCT5XQMRH7W2YV3GB6F4TU7L5YYVJQL5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 31 Jan 2022 at 08:50, syzbot
<syzbot+91525b2bd4b5dff71619@syzkaller.appspotmail.com> wrote:
>
> syzbot suspects this issue was fixed by commit:
>
> commit 0499f419b76f94ede08304aad5851144813ac55c
> Author: Javier Martinez Canillas <javierm@redhat.com>
> Date:   Mon Jan 10 09:56:25 2022 +0000
>
>     video: vga16fb: Only probe for EGA and VGA 16 color graphic cards
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=126571e0700000
> start commit:   5d6ab0bb408f Merge tag 'xtensa-20211008' of git://github.c..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=32e6048063923b7b
> dashboard link: https://syzkaller.appspot.com/bug?extid=91525b2bd4b5dff71619
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11073300b00000
>
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: video: vga16fb: Only probe for EGA and VGA 16 color graphic cards

Not sure, but maybe:

#syz fix: video: vga16fb: Only probe for EGA and VGA 16 color graphic cards
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
