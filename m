Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C74957CF74E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:46:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D685240C46
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:46:11 +0000 (UTC)
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by lists.linaro.org (Postfix) with ESMTPS id 5351F3EABF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Sep 2023 18:18:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 38p8EZQkbAHMjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.160.69 as permitted sender) smtp.mailfrom=38p8EZQkbAHMjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-1d5aa672aa4so3521658fac.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 15 Sep 2023 11:18:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694801907; x=1695406707;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2VqufmfxjSUb4XqKQu2eQXU3QONq2sl0HERC26tPXI0=;
        b=V8P2241ndcgQzav3uscJN0ThWxDV6uobESRPNprkWCB8sySatAzARO4dek7UddP+vA
         UNBPSd/UOZdypa+6+tPlYAEsIQpyYbx9RrT6cL2+r/U1pxW1/rqURSaqSgy5MN2JQejd
         CaoN2bA6w+lYMbPng7DoSOc5WZux0ojGkvH1jbrjXGy0oHB7GYGPbZKzh9Q6ay8SAYUR
         z6RVK+q4MK2v1URZ8sBBWaQkiPF9oV4V3qgRP8mcuVGZ9ot3g4XfX5L65fkXzheExOnq
         5F/ct2KDOkFr+Qw8GjgW0ydMtabomOhB1/6Mqp7se9xdNFP3fPUxACuNo8azhtW3P1q5
         GnBQ==
X-Gm-Message-State: AOJu0YxbcsFPKSPnxlsGlRzK6MRchLJJoEczNSjmMvKf67n5MKX568Bu
	NZllIW0f8Y8h2aY2N1ltDWWI7xr4T5ljW0XYrecxiXWilcWJ
X-Google-Smtp-Source: AGHT+IHJk3PMmbnZmZM8RAAdi9QO4c+58BuymeUxaU3YwVtig0M8O4dFyhBNpBSzru7Dewszo4NjkQUbjE39n+z4Yr9WF1ychMzG
MIME-Version: 1.0
X-Received: by 2002:a05:6870:c789:b0:1d1:3ad6:bb99 with SMTP id
 dy9-20020a056870c78900b001d13ad6bb99mr738883oab.2.1694801906800; Fri, 15 Sep
 2023 11:18:26 -0700 (PDT)
Date: Fri, 15 Sep 2023 11:18:26 -0700
In-Reply-To: <000000000000be3c1a0604b53a1c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000009e9e1b060569d17c@google.com>
From: syzbot <syzbot+17a207d226b8a5fb0fd9@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, christian.koenig@amd.com, daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org, fengwei.yin@intel.com,
	gurchetansingh@chromium.org, hughd@google.com, kraxel@redhat.com,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-mm@kvack.org, sumit.semwal@linaro.org,
	syzkaller-bugs@googlegroups.com, vivek.kasireddy@intel.com
X-Rspamd-Queue-Id: 5351F3EABF
X-Spamd-Bar: -
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=3bd57a1ac08277b0];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,38p8EZQkbAHMjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.69:from];
	REDIRECTOR_URL(0.00)[goo.gl];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[goo.gl:url,syzkaller.appspot.com:url];
	NEURAL_HAM(-0.00)[-0.953];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,38p8EZQkbAHMjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_FROM(0.00)[17a207d226b8a5fb0fd9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	URIBL_BLOCKED(0.00)[appspotmail.com:email,goo.gl:url,mail-oa1-f69.google.com:helo,mail-oa1-f69.google.com:rdns];
	SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: 38p8EZQkbAHMjpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EAS5RZYN34YD3KPC2QKOTIOABWUUM42S
X-Message-ID-Hash: EAS5RZYN34YD3KPC2QKOTIOABWUUM42S
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:45:25 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] [mm?] kernel BUG in filemap_unaccount_folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EAS5RZYN34YD3KPC2QKOTIOABWUUM42S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

syzbot has bisected this issue to:

commit 5c074eeabbd332b11559f7fc1e89d456f94801fb
Author: Gerd Hoffmann <kraxel@redhat.com>
Date:   Wed Nov 14 12:20:29 2018 +0000

    udmabuf: set read/write flag when exporting

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12b21bbfa80000
start commit:   db906f0ca6bb Merge tag 'phy-for-6.6' of git://git.kernel.o..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=11b21bbfa80000
console output: https://syzkaller.appspot.com/x/log.txt?x=16b21bbfa80000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3bd57a1ac08277b0
dashboard link: https://syzkaller.appspot.com/bug?extid=17a207d226b8a5fb0fd9
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11609f38680000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14c1fc00680000

Reported-by: syzbot+17a207d226b8a5fb0fd9@syzkaller.appspotmail.com
Fixes: 5c074eeabbd3 ("udmabuf: set read/write flag when exporting")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
