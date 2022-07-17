Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 676B458E7EC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 09:37:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0A783F1BD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 07:37:34 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by lists.linaro.org (Postfix) with ESMTPS id 24D593EC9D
	for <linaro-mm-sig@lists.linaro.org>; Sun, 17 Jul 2022 03:48:08 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id bh13so7833993pgb.4
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 Jul 2022 20:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Z0QE6TqiTLpNVLq0d6Tn+LJm8jdHQlIKPBhpl1b1IvI=;
        b=Hm/XZDORe8w/23YWh1ILjh5kveofdNCqQ0V7yu07TXBiadO710B4sQcFi584OFzxTg
         MbAbTUZxhED4dxph0IUuYzrgaFeGgk+qs59KYL9dU6a4gT/Amg2JYMnVB+1qPNu3XDlL
         R1CV6eXisR3zOqmF9wvS27nea+FsemZ6R9CtRQEC1ZE1UZ5Oq9V1E8Rb387rHvGuzrRw
         9f/WdSbAJJzOIdI8t7bcdfwGoHSSV3KG0XUyDKKLroc6HTzX7n2UnG5JsSj8jenqMBhN
         jVjVpUyZ5psvEY4DhPxJ1H2wqVxDINPWNUkibUyXCa1/AgSOx41fMuH/SKmrwwavgqDu
         u9Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Z0QE6TqiTLpNVLq0d6Tn+LJm8jdHQlIKPBhpl1b1IvI=;
        b=aH+Fu8BmTSNhpPz35Cn7UDsojV+/JDKgnXxkewWNwH/yG1hCKN1neN7lvI5jRC6ODy
         kEaqtuq2jzEeg2w3N0pb/J/ctpeUqP004+8awU/JHW5UnFF6QX4+pnGmooyNYc59rS1K
         w9i2n9S6Sq4be0kEP5TWZZOhH/bVfw6Ar6k0Psm+KGwZ8rz/Uzp9yJNC1hxIV7XlK9v+
         VAem2QGtnyLMC7gI06xqPZh/skqvWBwKpS6zeJ8uFspzqSLw42STw0FSMgRyIlWCPom4
         kvDMASYs/tyijsjFMmAK2HmyODTrMMoLHaFTNZV/4/ywOxboxPPJwiHGEe25XAdSNAiC
         Fs/A==
X-Gm-Message-State: AJIora/CUCvgWp5d7hRTLkD6S9OhQtb1kBdPxLP4YvkXIDVYeqwK153S
	q1x1JmJ1UeOuUpsZPD41ZmnQPG9mTJLxG/yKSg==
X-Google-Smtp-Source: AGRyM1ts9KqXoDY4UHuc4G3SVfNilEGzmKzpCb1uTJFtaEWLMKAvCulqjjlSB/KMEm3RW8jR0HClTPzAZCj2jB06jKU=
X-Received: by 2002:a05:6a02:113:b0:412:a7c0:da8e with SMTP id
 bg19-20020a056a02011300b00412a7c0da8emr19808019pgb.113.1658029687199; Sat, 16
 Jul 2022 20:48:07 -0700 (PDT)
MIME-Version: 1.0
From: Zheyu Ma <zheyuma97@gmail.com>
Date: Sun, 17 Jul 2022 11:47:56 +0800
Message-ID: <CAMhUBjn=k-4DV0-u_30_rNQc9n__ZkwVFaLwfP1CP-uk1LjMpg@mail.gmail.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com
X-MailFrom: zheyuma97@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3F7EMBV4FA6RIY3EUXU4UR3DZOT6H5QX
X-Message-ID-Hash: 3F7EMBV4FA6RIY3EUXU4UR3DZOT6H5QX
X-Mailman-Approved-At: Wed, 10 Aug 2022 07:37:33 +0000
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-media <linux-media@vger.kernel.org>, DRI Development <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [BUG] most: usb: Found a bug at the probe time
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3F7EMBV4FA6RIY3EUXU4UR3DZOT6H5QX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

I found a bug in the most usb driver.

When the driver fails at

    mdev->conf = kcalloc(num_endpoints, sizeof(*mdev->conf), GFP_KERNEL);

I got the following warning message:


[   15.406256] kobject: '(null)' (ffff8881068f8000): is not
initialized, yet kobject_put() is being called.
[   15.406986] WARNING: CPU: 3 PID: 396 at lib/kobject.c:720
kobject_put+0x6e/0x1c0
[   15.410120] RIP: 0010:kobject_put+0x6e/0x1c0
[   15.410470] Code: 01 75 29 4c 89 f8 48 c1 e8 03 80 3c 28 00 74 08
4c 89 ff e8 14 2e 73 ff 49 8b 37 48 c7 c7 c0 fc de 85 4c 89 fa e8 e2
61 21 ff <0f> 0b 49 8d 5f 38 48 89 df be 04 00 00 00 e8 df 2e 73 ff b8
ff ff
[   15.416529] Call Trace:
[   15.416896]  hdm_probe+0xf3d/0x1090 [most_usb]

Since I'm not familiar with the driver, I ask for your help to solve
the warning.

regards,

Zheyu Ma
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
