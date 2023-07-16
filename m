Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3E6754D61
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 16 Jul 2023 07:01:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62E2E43F16
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 16 Jul 2023 05:01:36 +0000 (UTC)
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by lists.linaro.org (Postfix) with ESMTPS id 96B3E3F342
	for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Jul 2023 05:01:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3q3mzZAkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.167.197 as permitted sender) smtp.mailfrom=3q3mzZAkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-39eab9b2163so5478756b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 15 Jul 2023 22:01:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689483691; x=1692075691;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gc8P9j4aAtUD818FUv9FldLGl7WtvU/qesSGY59z6is=;
        b=MZQerpMKpQ/uKFGcg5eKY7ynxsYtGtPFBUga5eLQDvJWZL0wuqOUgYjQcbqOVanyVa
         RLc+ypg1A+F55DPyKoA8b+37PBEiUC0dLaUmxbjwESOnkmMtKTsbnxWxlqu3BCMPnUiF
         GcRACJ3K1gQ4mou1aSQeugrIM9aojnQNAnBE8V4WzT7/gjpegD46NB2f0txTjxNu7kz9
         +pftHNAOGIE82ojlOnM95zqrO3XKmcJnzAdvIMfcIE+dB5eg3os026ZcEDnS2C6hYle0
         j8tphshh+LZyUSU1QFBAi1XSo7IeiARA6WxY7py5cxY8Ipp5BznybLHgKBQQL80CeV/E
         0cDA==
X-Gm-Message-State: ABy/qLY27o9bygGvf2dNflUzZhideh5zji0wKRrk6Whi1o1dZburIJad
	cQyBPaTlFxWnv1vfjUugDdZTfXozMWiBqOvj9Acq/wnnHjwd
X-Google-Smtp-Source: APBJJlHiKkQSYHWZqiMGK6JjPBORaD5zWjOurp/X4RHYedM4t3zbGTgydgOk6gzh9XX0dFzBM53cFrKdyB0aFSTeEV/ZZD4WxY07
MIME-Version: 1.0
X-Received: by 2002:a05:6808:1316:b0:3a1:e88d:98ab with SMTP id
 y22-20020a056808131600b003a1e88d98abmr11466633oiv.6.1689483691033; Sat, 15
 Jul 2023 22:01:31 -0700 (PDT)
Date: Sat, 15 Jul 2023 22:01:30 -0700
In-Reply-To: <20230716043411.4950-1-astrajoan@yahoo.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004209890600939346@google.com>
From: syzbot <syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com>
To: airlied@gmail.com, astrajoan@yahoo.com, christian.koenig@amd.com,
	daniel@ffwll.ch, dri-devel@lists.freedesktop.org, glider@google.com,
	ivan.orlov0322@gmail.com, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	skhan@linuxfoundation.org, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com, tzimmermann@suse.de
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 96B3E3F342
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=36e4a2f8150fbc62];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.167.197:from];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,3q3mzZAkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.993];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.197:from];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,3q3mzZAkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[4fad2e57beb6397ab2fc];
	ARC_NA(0.00)[];
	SUBJECT_HAS_QUESTION(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,yahoo.com,amd.com,ffwll.ch,lists.freedesktop.org,google.com,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,linuxfoundation.org,linaro.org,googlegroups.com,suse.de];
	R_DKIM_NA(0.00)[]
Message-ID-Hash: NMSEWP7SKOLPDM663TFWWG3C6LOU6NLV
X-Message-ID-Hash: NMSEWP7SKOLPDM663TFWWG3C6LOU6NLV
X-MailFrom: 3q3mzZAkbAJgKQRC2DD6J2HHA5.8GG8D6MK6J4GFL6FL.4GE@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] [dri?] KMSAN: uninit-value in drm_mode_setcrtc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NMSEWP7SKOLPDM663TFWWG3C6LOU6NLV/>
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

Reported-and-tested-by: syzbot+4fad2e57beb6397ab2fc@syzkaller.appspotmail.com

Tested on:

commit:         d1d7f15c DO-NOT-SUBMIT: kmsan: add the kmsan_exceed_ma..
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=101d3fdaa80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=36e4a2f8150fbc62
dashboard link: https://syzkaller.appspot.com/bug?extid=4fad2e57beb6397ab2fc
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=15430342a80000

Note: testing is done by a robot and is best-effort only.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
