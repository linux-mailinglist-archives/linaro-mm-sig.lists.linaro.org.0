Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 46523532AE3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 15:12:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D2083F8BE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 13:12:39 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by lists.linaro.org (Postfix) with ESMTPS id 98EAB404D1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 May 2022 12:25:45 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id i23so6038945ljb.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 May 2022 05:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=+XDjcMQak510AbIZ8jLkJgCvsFB2A35/wbL1HOG/INE=;
        b=lAaJmEzLeV3vj8T8CSED/mJMzic3+74SHUYEpH6rpNmlXcIRQJ7C+b0Zjroo6JCc+p
         sw7SiTRSHqFvu27HOAEoJgN50mU6H6jGIvxIVz1Qqt8HH/9qlWDMWOGArR12oDwWgY9v
         tUkLQUV530OJQO6ckRfmQQo22zxot9pSkAQ0bTH/Lie/ogo4VmqDwOuoPM9L+h4GO5z0
         Rlci8TgIRLcw+UjP/r+RBA3z+fqz+x2oAM0bYelrxvbIts5DkBckYKYzc6CtCJZ8OKhB
         d3SkhkjfQ/zXDIQ+3mEc3PfvvPbDsPc4RqZ0IvxZewlrEeQx+Db4pN5PLMX6OStKVPvA
         hVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=+XDjcMQak510AbIZ8jLkJgCvsFB2A35/wbL1HOG/INE=;
        b=fCIW964xZ/YpLMev9a0o6EaU/5jwImNmSTM2LUqv031FMbcltJhiMYZFpTa8eX0gc0
         SAFRD07DdL1GeMmvPieT8eKLBNVZU85F4eceweBw9BNTCwV13wKHeTLEUqrrkAhsmRvO
         nATB23SZaOKlb0wpQT32NsDnl5lcSlD6LWzd84nWv15jTwPNo4FZVdF23zZ6R+tykwWI
         dKvp0/HhrBIxBLnj0B3PqC78TC/Unh4snOneox+CawsW4K2FrKpnl9R3ClU2VHnpC7gJ
         oyzsF5rkI/1cz9d1F/hiOcTUaLDdXS3SJzJD/qI7HRyKU8RqUUOxF72R1ZYZCjg+GQT2
         tgpA==
X-Gm-Message-State: AOAM5313JnCgo8A1b5WMtUlonh17xYbLO23+WRKUFGMbqwitkBMRePN7
	ZyMUenUL6vtjWBqTka/g3AW5sxQLLubOziRDjQvKPA==
X-Google-Smtp-Source: ABdhPJxGyJtgWwbX8S0lH1j2ZFkcMo+rRVbGhMPhGE4a6v5ghusnKHQReSrKTmWTBYwAlslvk0NjT5bOE5aDGCFRwmA=
X-Received: by 2002:a05:651c:a11:b0:250:5da4:e7b1 with SMTP id
 k17-20020a05651c0a1100b002505da4e7b1mr2551149ljq.268.1652963144078; Thu, 19
 May 2022 05:25:44 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000f0196305d219b2fe@google.com> <000000000000b968f305d74b1195@google.com>
 <YgJhjdAbRHdnCZ4T@phenom.ffwll.local>
In-Reply-To: <YgJhjdAbRHdnCZ4T@phenom.ffwll.local>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 19 May 2022 14:25:32 +0200
Message-ID: <CACT4Y+ZiexzqBxeDQJAeQMR7Ef=JSh-2S8P73LN2BnibXhiC3Q@mail.gmail.com>
To: syzbot <syzbot+10e27961f4da37c443b2@syzkaller.appspotmail.com>,
	Gerd Hoffmann <kraxel@redhat.com>, christian.koenig@amd.com,
	dri-devel@lists.freedesktop.org, hch@lst.de, iommu@lists.linux-foundation.org,
	linaro-mm-sig-owner@lists.linaro.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	m.szyprowski@samsung.com, robin.murphy@arm.com, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LMDEMHIBFHYU4EJHYEE77C5UXAEU7DX3
X-Message-ID-Hash: LMDEMHIBFHYU4EJHYEE77C5UXAEU7DX3
X-Mailman-Approved-At: Tue, 24 May 2022 13:12:35 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] WARNING in __dma_map_sg_attrs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LMDEMHIBFHYU4EJHYEE77C5UXAEU7DX3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 8 Feb 2022 at 13:26, Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Sat, Feb 05, 2022 at 12:18:23PM -0800, syzbot wrote:
> > syzbot has found a reproducer for the following issue on:
> >
> > HEAD commit:    0457e5153e0e Merge tag 'for-linus' of git://git.kernel.org..
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=11b2637c700000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=6f043113811433a5
> > dashboard link: https://syzkaller.appspot.com/bug?extid=10e27961f4da37c443b2
> > compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11c65542700000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1163f480700000
> >
> > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > Reported-by: syzbot+10e27961f4da37c443b2@syzkaller.appspotmail.com
>
> Adding Gerd, since this seems to blow up in udmabuf.
>
> I wonder why syzbot didn't figure this out, since it seems to have
> correctly added both dma-api and dma-buf people. Just not the maintainer
> for the begin_cpu_udmabuf function in the middle of the backtrace?

Hi Daniel,

syzbot selects only 1 file to get maintainers.
Do you suggest using all files in the stack trace? I think it may lead
to too many developers CCed since there can be something like 20 files
including something from scheduler, arch, fs, etc.



> > ------------[ cut here ]------------
> > WARNING: CPU: 1 PID: 3595 at kernel/dma/mapping.c:188 __dma_map_sg_attrs+0x181/0x1f0 kernel/dma/mapping.c:188
> > Modules linked in:
> > CPU: 0 PID: 3595 Comm: syz-executor249 Not tainted 5.17.0-rc2-syzkaller-00316-g0457e5153e0e #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> > RIP: 0010:__dma_map_sg_attrs+0x181/0x1f0 kernel/dma/mapping.c:188
> > Code: 00 00 00 00 00 fc ff df 48 c1 e8 03 80 3c 10 00 75 71 4c 8b 3d c0 83 b5 0d e9 db fe ff ff e8 b6 0f 13 00 0f 0b e8 af 0f 13 00 <0f> 0b 45 31 e4 e9 54 ff ff ff e8 a0 0f 13 00 49 8d 7f 50 48 b8 00
> > RSP: 0018:ffffc90002a07d68 EFLAGS: 00010293
> > RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
> > RDX: ffff88807e25e2c0 RSI: ffffffff81649e91 RDI: ffff88801b848408
> > RBP: ffff88801b848000 R08: 0000000000000002 R09: ffff88801d86c74f
> > R10: ffffffff81649d72 R11: 0000000000000001 R12: 0000000000000002
> > R13: ffff88801d86c680 R14: 0000000000000001 R15: 0000000000000000
> > FS:  0000555556e30300(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
> > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > CR2: 00000000200000cc CR3: 000000001d74a000 CR4: 00000000003506e0
> > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > Call Trace:
> >  <TASK>
> >  dma_map_sgtable+0x70/0xf0 kernel/dma/mapping.c:264
> >  get_sg_table.isra.0+0xe0/0x160 drivers/dma-buf/udmabuf.c:72
> >  begin_cpu_udmabuf+0x130/0x1d0 drivers/dma-buf/udmabuf.c:126
> >  dma_buf_begin_cpu_access+0xfd/0x1d0 drivers/dma-buf/dma-buf.c:1164
> >  dma_buf_ioctl+0x259/0x2b0 drivers/dma-buf/dma-buf.c:363
> >  vfs_ioctl fs/ioctl.c:51 [inline]
> >  __do_sys_ioctl fs/ioctl.c:874 [inline]
> >  __se_sys_ioctl fs/ioctl.c:860 [inline]
> >  __x64_sys_ioctl+0x193/0x200 fs/ioctl.c:860
> >  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
> >  do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
> >  entry_SYSCALL_64_after_hwframe+0x44/0xae
> > RIP: 0033:0x7f62fcf530f9
> > Code: 28 c3 e8 2a 14 00 00 66 2e 0f 1f 84 00 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
> > RSP: 002b:00007ffe3edab9b8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> > RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f62fcf530f9
> > RDX: 0000000020000200 RSI: 0000000040086200 RDI: 0000000000000006
> > RBP: 00007f62fcf170e0 R08: 0000000000000000 R09: 0000000000000000
> > R10: 0000000000000000 R11: 0000000000000246 R12: 00007f62fcf17170
> > R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
> >  </TASK>
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/YgJhjdAbRHdnCZ4T%40phenom.ffwll.local.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
