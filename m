Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 505776344D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 20:48:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F32153ED8F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 19:48:26 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id 4F0B83E9D6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 19:48:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=ZpmZGbA0;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.218.41) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f41.google.com with SMTP id m22so38100822eji.10
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 11:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lVbDlvvtZ6kOnIDHKIHd3lgjSqvnp2Onmrr/hjcCiKI=;
        b=ZpmZGbA0yEeAQcmw1YRD+tH2k3dpJ2h+GQqA2nTW/+AmrJijfthJJ1JBDQ4b17naWX
         Gc/gxxKP+B5FUvV3VGk2W0G9ETX/IIVaM8yBzDUKEelLWQEv8b4KysweuE9QpJ6XQVSd
         wJVG2oDQ+oPdHYZz0NjKMihQlfjjhbkia8/Wg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lVbDlvvtZ6kOnIDHKIHd3lgjSqvnp2Onmrr/hjcCiKI=;
        b=0mpOSvyKFUkkCcq/vEJfV9LEZMJNrpqTaJ3BnHiIMxXzEYiC8F5GSEaPRpjB29E19+
         eRw53ty8tMnbIhsl3YP76vBe10Yc+ISwAG/Ki2Lhk2Fm4CjW7c0KwSDAL4xr8SyVYQSU
         ifPNI/61Ps692lteZCabN0Jvtdbz0EDpiTYRsmTOP3V4aqBVHB/X3GxFXG7WLCKsD6KV
         poFjZUUyvz+gqA43eSCloO2asuIojcUj1fo0ZSslntxhI0919avaXKlBCGbYScd7RHNi
         VDUiV1tdbXeFLrMHQcpDA8xtrBM2bxfRQi82NBDENExtF3vR/snAfpwBzDqOKxqaeIpf
         VL5g==
X-Gm-Message-State: ANoB5pnYRGltrTfadzTcByG0iwfVawAnHF9ckRqmIf2gohisEtNxAFSx
	arl7vtstxg8JxORiWys1Z8jN8iqpfYJNODbatgyf2Q==
X-Google-Smtp-Source: AA0mqf7G2K2KCHsUYtNjGbSQRIe5kptdRvJjIPo2u6XacsktiIWjTo1Gtdxekg6+ahn0rSaoqbcgPDkabc4jvu8znZE=
X-Received: by 2002:a17:906:d7b8:b0:79f:9ff6:6576 with SMTP id
 pk24-20020a170906d7b800b0079f9ff66576mr20147812ejb.414.1669146496324; Tue, 22
 Nov 2022 11:48:16 -0800 (PST)
MIME-Version: 1.0
References: <00000000000021719805d692e035@google.com> <000000000000cbce8405eded1951@google.com>
In-Reply-To: <000000000000cbce8405eded1951@google.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 22 Nov 2022 20:48:05 +0100
Message-ID: <CAKMK7uFj2oouRmLyTZH5YLsk_V8FE=XUR-o0QkoMk1macyPDOg@mail.gmail.com>
To: syzbot <syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com>
X-Rspamd-Queue-Id: 4F0B83E9D6
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=6f4e5e9899396248];
	FORGED_SENDER(0.30)[daniel@ffwll.ch,daniel.vetter@ffwll.ch];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.41:from];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[daniel@ffwll.ch,daniel.vetter@ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[alien8.de,amd.com,lists.freedesktop.org,padovan.org,sina.com,zytor.com,google.com,8bytes.org,vger.kernel.org,lists.linaro.org,arm.com,redhat.com,infradead.org,linaro.org,googlegroups.com,linutronix.de,tencent.com,kernel.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[syzkaller.appspot.com:url,goo.gl:url,arm.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[007bfe0f3330f6e1e7d1];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4RYGHOX6KWEYPOHQ2QMOF2HCNR7YPJOQ
X-Message-ID-Hash: 4RYGHOX6KWEYPOHQ2QMOF2HCNR7YPJOQ
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: bp@alien8.de, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, gustavo@padovan.org, hdanton@sina.com, hpa@zytor.com, jmattson@google.com, joro@8bytes.org, kvm@vger.kernel.org, linaro-mm-sig-bounces@lists.linaro.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, mark.rutland@arm.com, mingo@redhat.com, pbonzini@redhat.com, peterz@infradead.org, seanjc@google.com, sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tglx@linutronix.de, vkuznets@redhat.com, wanpengli@tencent.com, will@kernel.org, x86@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] inconsistent lock state in sync_info_debugfs_show
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4RYGHOX6KWEYPOHQ2QMOF2HCNR7YPJOQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 20 Nov 2022 at 21:51, syzbot
<syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com> wrote:
>
> syzbot has bisected this issue to:
>
> commit 997acaf6b4b59c6a9c259740312a69ea549cc684
> Author: Mark Rutland <mark.rutland@arm.com>
> Date:   Mon Jan 11 15:37:07 2021 +0000
>
>     lockdep: report broken irq restoration

Ok this looks funny. I'm pretty sure the code in
drivers/dma-buf/sw_sync.c around sync_timeline_fence_lock is correct.
And we don't do anything that this patch claims to catch, it's all
just plain spin_lock_irq and spin_lock_irqsave usage. Only thing that
crossed my mind here is that maybe lockdep somehow ends up with two
different keys for the same spinlock? I'm really confused ...
-Daniel

> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=115b350d880000
> start commit:   84368d882b96 Merge tag 'soc-fixes-6.1-3' of git://git.kern..
> git tree:       upstream
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=135b350d880000
> console output: https://syzkaller.appspot.com/x/log.txt?x=155b350d880000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=6f4e5e9899396248
> dashboard link: https://syzkaller.appspot.com/bug?extid=007bfe0f3330f6e1e7d1
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=164376f9880000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16cf0965880000
>
> Reported-by: syzbot+007bfe0f3330f6e1e7d1@syzkaller.appspotmail.com
> Fixes: 997acaf6b4b5 ("lockdep: report broken irq restoration")
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
