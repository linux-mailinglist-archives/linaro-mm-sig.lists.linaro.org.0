Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCC44B6B81
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 12:49:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 528AA401C4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 11:49:24 +0000 (UTC)
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by lists.linaro.org (Postfix) with ESMTPS id 16AB83EE1F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 31 Jan 2022 07:50:09 +0000 (UTC)
Received: by mail-io1-f69.google.com with SMTP id y23-20020a5e8717000000b0060fd92726cbso9342212ioj.22
        for <linaro-mm-sig@lists.linaro.org>; Sun, 30 Jan 2022 23:50:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=mUUhKABASSDYvCUsc04M7XBtQBbnsrCUfjP/FgUZhxY=;
        b=6VXfq6DnH9sWwhEM4qiHhjXPhESYQtdHKgDKhSM/SRoO9qb0TGAFG75oKVHW/Fox4G
         lBSaAMIxXq2LCDDxc2OYT9PxScPgz4v5lkJTZz2be612wX5p4f4ioy+M+pFz+uC2mpq3
         dep4HutF30faB9DiKQ4VIt8tdiGgoZRM2y1jxiO5W4sNwji7RStIrj9Czlvcq4n9aHcL
         MyJ+Ti0Yb/w7oLKq9Kc1HxAckpo1R3NM8A3e+Mp8xlarvAi7y6hXdtN8Sc2qUD26mZul
         10yN/8jjS/pD+q5G5lzHq7VBcZuZVo0v/1gYx4rsY+pEEfqOfjMRwjVaZ4g6plyU9HS9
         /0MA==
X-Gm-Message-State: AOAM533rED9i3zfUacrdCAuk/i+t1ihkWRZiIm4S9N/CcqSEWylPYb9L
	IyUPiL1IEvdfPPdr8RkoKXQamR/tWyBiivlT4wsH40Aj6sKA
X-Google-Smtp-Source: ABdhPJymwJlS8JsUdlrCW9lOYpIn2UaIQaZW0hA0lpGtEyFOwecg2a8tRTfuM68f+RfkiiN+E5hX3nWx76izWqmI0UiryQoaAMBM
MIME-Version: 1.0
X-Received: by 2002:a6b:d90c:: with SMTP id r12mr10512979ioc.99.1643615408629;
 Sun, 30 Jan 2022 23:50:08 -0800 (PST)
Date: Sun, 30 Jan 2022 23:50:08 -0800
In-Reply-To: <0000000000008a7a1c05c9e53c87@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000942c2205d6dc0896@google.com>
From: syzbot <syzbot+91525b2bd4b5dff71619@syzkaller.appspotmail.com>
To: airlied@linux.ie, bugs-a21@moonlit-rail.com, christian.koenig@amd.com,
	daniel.vetter@ffwll.ch, daniel.vetter@intel.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, javierm@redhat.com,
	linaro-mm-sig-owner@lists.linaro.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	maarten.lankhorst@linux.intel.com, maxime@cerno.tech, melissa.srw@gmail.com,
	mripard@kernel.org, sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com,
	tzimmermann@suse.de
X-MailFrom: 3sJT3YQkbAM0BHI3t44xAt881w.z77z4xDBxAv76Cx6C.v75@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GEVFUSLNHDDZWCFQZGYHTYJW5KG4D5ZE
X-Message-ID-Hash: GEVFUSLNHDDZWCFQZGYHTYJW5KG4D5ZE
X-Mailman-Approved-At: Tue, 15 Feb 2022 11:49:09 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] WARNING in drm_gem_shmem_vm_open
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GEVFUSLNHDDZWCFQZGYHTYJW5KG4D5ZE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

syzbot suspects this issue was fixed by commit:

commit 0499f419b76f94ede08304aad5851144813ac55c
Author: Javier Martinez Canillas <javierm@redhat.com>
Date:   Mon Jan 10 09:56:25 2022 +0000

    video: vga16fb: Only probe for EGA and VGA 16 color graphic cards

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=126571e0700000
start commit:   5d6ab0bb408f Merge tag 'xtensa-20211008' of git://github.c..
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=32e6048063923b7b
dashboard link: https://syzkaller.appspot.com/bug?extid=91525b2bd4b5dff71619
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11073300b00000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: video: vga16fb: Only probe for EGA and VGA 16 color graphic cards

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
