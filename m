Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1C67E5972
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Nov 2023 15:46:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 230A440C57
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Nov 2023 14:46:20 +0000 (UTC)
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by lists.linaro.org (Postfix) with ESMTPS id DC0D13F0D8
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Nov 2023 14:46:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none);
	spf=pass (lists.linaro.org: domain of 3LJ9LZQkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.167.197 as permitted sender) smtp.mailfrom=3LJ9LZQkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3b3edaef525so10091560b6e.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Nov 2023 06:46:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699454764; x=1700059564;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eyg+x1sdBdUCTK9dEOdpm/i8Z98iZDIp/TYoaCFtNfI=;
        b=sXtbXkKgKs0dPDIK3c/secZKeU9iA/2pt8dsCiHcnmIK5RqBb1nmgzkf7eMfzg5Q5K
         Afn1q+yji7wqDmwC+rt1pue3pZoSkb/sZuTb3JFS+0mY/8F7hLJmtIpnPrgGdM+iQlkf
         PKwHWIkH1zGCoZ5Du8AUODjZjehmptMCnnIT3xBrBSu5h9iSeN+VaNrQ7WuzdhaeUIgd
         w10PsPdQQfB359z5E35mhtKcm8mik6RZ23zIm/vwI1s0pHZuJup/ebjDAjlY7B2dVfFH
         TYPK13ZeGwZ4nuX0vQHOBTnnB+U3HLl8D1GalbnkqovvREupKZwDSSY4fN5wXxO/6CNv
         /etA==
X-Gm-Message-State: AOJu0YwUU6EecrQ5I/mCEVLO7Mrq2UK2GvHG+2/fwqKHG6Fic5pYeySR
	HrWHMI0zimlGytMYMUkmAPsM5NXboTMBT3+h4+qSAAxI6RTq
X-Google-Smtp-Source: AGHT+IHYVbPqVKNGXu+BvwkE/pRq1+khXE9q8J8tLhTwkKxlwRoFhUls2Br/4J25UUlY0OHXWCPFT/tsDkP8SnIUAsiU7jVq8Mz6
MIME-Version: 1.0
X-Received: by 2002:a05:6808:138d:b0:3a7:86b2:1950 with SMTP id
 c13-20020a056808138d00b003a786b21950mr789798oiw.0.1699454764313; Wed, 08 Nov
 2023 06:46:04 -0800 (PST)
Date: Wed, 08 Nov 2023 06:46:04 -0800
In-Reply-To: <0000000000002a4da90603a5cbbf@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000089f4110609a525b2@google.com>
From: syzbot <syzbot+398e17b61dab22cc56bc@syzkaller.appspotmail.com>
To: airlied@gmail.com, airlied@linux.ie, christian.koenig@amd.com,
	daniel.vetter@ffwll.ch, daniel.vetter@intel.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, hdanton@sina.com,
	linaro-mm-sig-bounces@lists.linaro.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tzimmermann@suse.de
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DC0D13F0D8
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=1ffa1cec3b40f3ce];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,3LJ9LZQkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	REDIRECTOR_URL(0.00)[goo.gl];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.197:from];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_NA(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,3LJ9LZQkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	FREEMAIL_TO(0.00)[gmail.com,linux.ie,amd.com,ffwll.ch,intel.com,lists.freedesktop.org,sina.com,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,linaro.org,googlegroups.com,suse.de];
	TAGGED_FROM(0.00)[398e17b61dab22cc56bc];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.984];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: WWJGDU27TTJFO4YQOIHTZBGG7IWLX3GB
X-Message-ID-Hash: WWJGDU27TTJFO4YQOIHTZBGG7IWLX3GB
X-MailFrom: 3LJ9LZQkbAMk7DEzp00t6p44xs.v33v0t97t6r328t28.r31@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] [dri?] kernel BUG in vmf_insert_pfn_prot (2)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WWJGDU27TTJFO4YQOIHTZBGG7IWLX3GB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

syzbot has bisected this issue to:

commit 45d9c8dde4cd8589f9180309ec60f0da2ce486e4
Author: Daniel Vetter <daniel.vetter@ffwll.ch>
Date:   Thu Aug 12 13:14:12 2021 +0000

    drm/vgem: use shmem helpers

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=126094df680000
start commit:   d2f51b3516da Merge tag 'rtc-6.7' of git://git.kernel.org/p..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=116094df680000
console output: https://syzkaller.appspot.com/x/log.txt?x=166094df680000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1ffa1cec3b40f3ce
dashboard link: https://syzkaller.appspot.com/bug?extid=398e17b61dab22cc56bc
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16344918e80000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=156bb2c0e80000

Reported-by: syzbot+398e17b61dab22cc56bc@syzkaller.appspotmail.com
Fixes: 45d9c8dde4cd ("drm/vgem: use shmem helpers")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
