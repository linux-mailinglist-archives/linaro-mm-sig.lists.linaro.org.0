Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A97634FC1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 06:45:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4994C3ECF8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 05:45:13 +0000 (UTC)
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by lists.linaro.org (Postfix) with ESMTPS id C9C223EC67
	for <linaro-mm-sig@lists.linaro.org>; Sun, 20 Nov 2022 20:51:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 3R5N6YwkbAHoqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3R5N6YwkbAHoqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=appspotmail.com (policy=none)
Received: by mail-il1-f199.google.com with SMTP id a14-20020a921a0e000000b00302a8ffa8e5so5334879ila.2
        for <linaro-mm-sig@lists.linaro.org>; Sun, 20 Nov 2022 12:51:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:from:subject:message-id:in-reply-to:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oDLcfZl+txYsJtzeVXqCYMCFgcOLb6wRGnlPi43ilE8=;
        b=gtdaY9wuQ6pI9Y2PhqJjwaxeeu8gxhGez5Ud1saqaQ8L6uFmxz5lc5by2GYVyolIK2
         bBH541CxZ1abBpXbwlTsWLFu58V+tkKcgdVTkvNi6+V4U9azQ1NiFZiqP5+XNWoN9T0Q
         Xyrwy+7LPFD21yAn2fVLHJubFBhUchT7iCgD32vpXVIeqi0qMX1WozLxnz+rBOpiU1dT
         MxEyiH2LeHcdQwuSKfgAa+BR7+AcFWa8FE82lZzbPcutb9DntQSIpFZiNt2ES/+HRJjl
         KyHfLeQi9Ly4O9cA2q5EJloJDEUvo79fOac5+opHSSjyfbK5KM176Vmyr5idLuRjZhPz
         GOJg==
X-Gm-Message-State: ANoB5pnu5ueXI/+jl+IkJqfX78u+UXVGR2MV9f576IZcBdVt9kDgQd1u
	DsUiDX3qqAoj4b2SHbUATf4yTplVR2XxKzKfocc0SJG/Aov/
X-Google-Smtp-Source: AA0mqf5CBYmEqRFQYqm1UpoVHrdbq/uYkStlCRHWaDTVvlLNGxzh0dMVaQAZBLUykBc00JqAz74S8DO7Ridn5eA4tsjxMLFw/LVU
MIME-Version: 1.0
X-Received: by 2002:a92:c64c:0:b0:2fa:de7:7c09 with SMTP id
 12-20020a92c64c000000b002fa0de77c09mr6888485ill.94.1668977479370; Sun, 20 Nov
 2022 12:51:19 -0800 (PST)
Date: Sun, 20 Nov 2022 12:51:19 -0800
In-Reply-To: <00000000000021719805d692e035@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000cbce8405eded1951@google.com>
From: syzbot <syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com>
To: bp@alien8.de, christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
	gustavo@padovan.org, hdanton@sina.com, hpa@zytor.com, jmattson@google.com,
	joro@8bytes.org, kvm@vger.kernel.org, linaro-mm-sig-bounces@lists.linaro.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, mark.rutland@arm.com, mingo@redhat.com,
	pbonzini@redhat.com, peterz@infradead.org, seanjc@google.com,
	sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tglx@linutronix.de,
	vkuznets@redhat.com, wanpengli@tencent.com, will@kernel.org, x86@kernel.org
X-Rspamd-Queue-Id: C9C223EC67
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=6f4e5e9899396248];
	FORGED_SENDER(0.30)[syzbot@syzkaller.appspotmail.com,3R5N6YwkbAHoqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[appspotmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	R_DKIM_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.199:from];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[007bfe0f3330f6e1e7d1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_TO(0.00)[alien8.de,amd.com,lists.freedesktop.org,padovan.org,sina.com,zytor.com,google.com,8bytes.org,vger.kernel.org,lists.linaro.org,arm.com,redhat.com,infradead.org,linaro.org,googlegroups.com,linutronix.de,tencent.com,kernel.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.166.199:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_NEQ_ENVFROM(0.00)[syzbot@syzkaller.appspotmail.com,3R5N6YwkbAHoqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: 3R5N6YwkbAHoqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ODXPPX5MBTAZX7LHNJLKIE6H52Y4ILND
X-Message-ID-Hash: ODXPPX5MBTAZX7LHNJLKIE6H52Y4ILND
X-Mailman-Approved-At: Wed, 23 Nov 2022 05:44:45 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] inconsistent lock state in sync_info_debugfs_show
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ODXPPX5MBTAZX7LHNJLKIE6H52Y4ILND/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

syzbot has bisected this issue to:

commit 997acaf6b4b59c6a9c259740312a69ea549cc684
Author: Mark Rutland <mark.rutland@arm.com>
Date:   Mon Jan 11 15:37:07 2021 +0000

    lockdep: report broken irq restoration

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=115b350d880000
start commit:   84368d882b96 Merge tag 'soc-fixes-6.1-3' of git://git.kern..
git tree:       upstream
final oops:     https://syzkaller.appspot.com/x/report.txt?x=135b350d880000
console output: https://syzkaller.appspot.com/x/log.txt?x=155b350d880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6f4e5e9899396248
dashboard link: https://syzkaller.appspot.com/bug?extid=007bfe0f3330f6e1e7d1
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=164376f9880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16cf0965880000

Reported-by: syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com
Fixes: 997acaf6b4b5 ("lockdep: report broken irq restoration")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
