Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2B44EC542
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 15:09:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 845463EC3A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 13:09:49 +0000 (UTC)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com [209.85.166.72])
	by lists.linaro.org (Postfix) with ESMTPS id EC5F43EBFD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 22:12:08 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id k20-20020a5e9314000000b00649d55ffa67so13245951iom.20
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 15:12:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=OOoVa+V/irW/x+0wA9yzjLGHzahFLKZsDL8MQwHOdOk=;
        b=jaxV5NtJ3f/wTkAmtG7LePL9qxC2HAWDQ5ewe3MEKR0+1PT/Zy/BnCkrxBXm9uH6WL
         YiNgJcQACTJ6L8L5EagAPaPFU4DuC1vvK5uOZETiLbD+Jpbyxx973xUaIgFXLDj8ju+c
         2LRBbz7Lk+Q0YBaHVWt0Ao4/TAiqe7nIc6u4jGtJILYM1I3CFfL3r/xHU/6b4Et0prVP
         Ti/O48hJULUUsCZZTS72SHT8Ilz+JlMZmyZjTlFOJsdS+vxS7L6v/xq3zsDnLjkOpKui
         z3iLt9GrsITVU2xrvIqN89SKH5VCV7UsPIg+DGnwfi+LHMtmqOcAG9WBfzAvgyVt+MoS
         9WbQ==
X-Gm-Message-State: AOAM532XwnsGEqNYJmn6tGFH5VqqDd6rByIBnLeB6pH/of/5ZHTsW9TB
	bOVMbkJfO0cg/U4Lm1karRGKmjYyGJFeD4S04ixGYH2qJ/No
X-Google-Smtp-Source: ABdhPJw3pahBeObtq8ZwZuFbJHHaAzDqVoMW2fRmLcGfMwRzoQkSN2/0Mynl0syuHLCkZzBNOgbVxEEbxorg8AC0mn61Oh8R+l2M
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2053:b0:31a:4907:ff65 with SMTP id
 t19-20020a056638205300b0031a4907ff65mr16979897jaj.224.1648591928519; Tue, 29
 Mar 2022 15:12:08 -0700 (PDT)
Date: Tue, 29 Mar 2022 15:12:08 -0700
In-Reply-To: <419a9bb8-cb68-8add-e7be-275a48b2126d@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000476f2c05db62b851@google.com>
From: syzbot <syzbot+5c943fe38e86d615cac2@syzkaller.appspotmail.com>
To: christian.koenig@amd.com, daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org, gustavo@padovan.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, paskripkin@gmail.com, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com
X-MailFrom: 3OIRDYgkbAGcXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JQ7X3G65RRQLNELUAK6UCONTSVIXVW4V
X-Message-ID-Hash: JQ7X3G65RRQLNELUAK6UCONTSVIXVW4V
X-Mailman-Approved-At: Wed, 30 Mar 2022 13:09:03 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] general protection fault in dma_fence_array_first
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JQ7X3G65RRQLNELUAK6UCONTSVIXVW4V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+5c943fe38e86d615cac2@syzkaller.appspotmail.com

Tested on:

commit:         c2528a0c Add linux-next specific files for 20220329
git tree:       linux-next
kernel config:  https://syzkaller.appspot.com/x/.config?x=88d1370cc1f241e6
dashboard link: https://syzkaller.appspot.com/bug?extid=5c943fe38e86d615cac2
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
patch:          https://syzkaller.appspot.com/x/patch.diff?x=128372e7700000

Note: testing is done by a robot and is best-effort only.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
