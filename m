Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF08672F663
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jun 2023 09:33:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F0EE40F0B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jun 2023 07:33:28 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 1FF463F19A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jun 2023 07:33:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=Q33P7o+f;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of dvyukov@google.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=dvyukov@google.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-4f14865fcc0so2285e87.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jun 2023 00:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1686727995; x=1689319995;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qkWUYxeNpxiShyt/biqf0PvJmlpRvEtSSRqqG9LGg20=;
        b=Q33P7o+fu2X34hrkntGtMU0jIuiUSMlEpor/wwql9xBvzGOS2N6LLDN8ShTHfJxbip
         tecrPeBFTEAhcjZIvWek2T0FlxNGahyhReRHFVY/GlsxXmVPyOlrNBI6q/fdmUYxOkcJ
         teJLLAxBphdKEO0YpujMNDdLJuXdYl3kjFwQ1ILH7BRCPe6NpRYMkTEOQ4EZTC0oRefp
         JXTJYv8MU/9EYqsIapfJwUv4D6malYKI4MrVCsbEEd8pJMntR5m0hURX72jh2UyDex6w
         APlZF1Csrik1q4tuQNtpHzjIa5mBVSsIceaHc7mQWERbUyAOOWOobFOFaPAn7/2JUcyE
         3i0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686727995; x=1689319995;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qkWUYxeNpxiShyt/biqf0PvJmlpRvEtSSRqqG9LGg20=;
        b=Z9+dMh7uBSBu8abFE47Yzrxg9mGMCwBYHgWeGY9K7Y6z99pZfsfaSLSuUM+goWQG3i
         ctgI+KnB3SxJsGosJnI52TZI3B3P2HwyxMzt64s9O7hVfROCAvEmb7L79u04BOP37iSD
         2ho4z03/2devyvXEyZZioTsQF93PEjdi+P6b/TVs/O14vDNtdO5VykxxsHSYiAhgqho8
         gNxnU14n+5n7scIzM7VFpD9vFh2ofeHkMxabRIQ2QacWV31ChTRzzq6aUCmRfY2Nu/Hn
         kQbNXHmChyVIDmTRk/aLg7xp7CNtnJxlAj6a//o//TAmKBHo0sHEmwMCFG45CHspLPT2
         FFcA==
X-Gm-Message-State: AC+VfDx8jPGPDs//J3VQYDkzYwH7kX8HJm6hMhJ0IqoolNfyW/gkt5Wj
	prOdS/RhI8qICMvXUnteCqa6jEfkJ8mmOorCoqEr6Q==
X-Google-Smtp-Source: ACHHUZ7jmduHKMzJV4DW9K/I2UmCi6bSW7ZCxI84e5H3m243tIdv98qbYVlnEeFzbG23nkVVry5ZG+nAthWBTpqD19s=
X-Received: by 2002:ac2:560b:0:b0:4f6:3c00:1764 with SMTP id
 v11-20020ac2560b000000b004f63c001764mr39438lfd.5.1686727994625; Wed, 14 Jun
 2023 00:33:14 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000fe7dd005cc2d77c0@google.com> <0000000000006d819905fe07c52f@google.com>
In-Reply-To: <0000000000006d819905fe07c52f@google.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 14 Jun 2023 09:33:01 +0200
Message-ID: <CACT4Y+bvzX7METN=jCcmY96dF-XNysYtF0s70Y2nxNNeYDUpsg@mail.gmail.com>
To: syzbot <syzbot+2d4f8693f438d2bd4bdb@syzkaller.appspotmail.com>
X-Rspamd-Queue-Id: 1FF463F19A
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	DWL_DNSWL_HI(-3.50)[google.com:dkim];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=d323d85b1f8a4ed7];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[2d4f8693f438d2bd4bdb];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[20];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.52:from];
	RCVD_COUNT_ONE(0.00)[1];
	REDIRECTOR_URL(0.00)[goo.gl];
	URIBL_BLOCKED(0.00)[goo.gl:url,mail-lf1-f52.google.com:rdns,mail-lf1-f52.google.com:helo,suse.de:email];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FREEMAIL_CC(0.00)[gmail.com,linux.ie,amd.com,ffwll.ch,intel.com,lists.freedesktop.org,redhat.com,lists.linaro.org,vger.kernel.org,linux.intel.com,kernel.org,loongson.cn,linaro.org,googlegroups.com,suse.de,vmware.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2FOUK3RRBFTHKMXQ2KFRCOU4FJD3XZZE
X-Message-ID-Hash: 2FOUK3RRBFTHKMXQ2KFRCOU4FJD3XZZE
X-MailFrom: dvyukov@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: airlied@linux.ie, christian.koenig@amd.com, daniel.vetter@intel.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, javierm@redhat.com, linaro-mm-sig-owner@lists.linaro.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, suijingfeng@loongson.cn, sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tzimmermann@suse.de, zackr@vmware.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [syzbot] kernel BUG in vmf_insert_pfn_prot
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2FOUK3RRBFTHKMXQ2KFRCOU4FJD3XZZE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 13 Jun 2023 at 21:23, syzbot
<syzbot+2d4f8693f438d2bd4bdb@syzkaller.appspotmail.com> wrote:
>
> syzbot suspects this issue was fixed by commit:
>
> commit a5b44c4adb1699661d22e5152fb26885f30a2e4c
> Author: Thomas Zimmermann <tzimmermann@suse.de>
> Date:   Mon Mar 20 15:07:44 2023 +0000
>
>     drm/fbdev-generic: Always use shadow buffering
>
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1025ee07280000
> start commit:   0326074ff465 Merge tag 'net-next-6.1' of git://git.kernel...
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=d323d85b1f8a4ed7
> dashboard link: https://syzkaller.appspot.com/bug?extid=2d4f8693f438d2bd4bdb
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14fd1182880000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=17567514880000
>
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: drm/fbdev-generic: Always use shadow buffering
>
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

Looks reasonable:

#syz fix: drm/fbdev-generic: Always use shadow buffering
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
