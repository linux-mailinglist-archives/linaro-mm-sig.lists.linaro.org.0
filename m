Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2559C8BC28F
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 18:46:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1D7840F26
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 16:46:35 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id EC0BC40A7C
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 May 2024 16:46:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=EwI8Q92s;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.53 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a59ab4f60a6so212228966b.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 May 2024 09:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714927584; x=1715532384; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aYdtp3YANTth8Vi9S+yHKBJaPcPwhcLOgY9vMAI/QdY=;
        b=EwI8Q92s84+GYyfRWHbTzu/Ht4QrQIp9CA/LtWl0xAVpmsLZyMNYJ/yQaZcERLaSBc
         ftEY0Pkn2WA/S8NCwdIffl/nJeMdj4nGvDHDKtUR4eIABDuZsGcubW4+DU7KBg4rptUm
         P1N1aVM47wMUUVkavl1EsEMM1Ih7VK06Vv8QI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714927584; x=1715532384;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aYdtp3YANTth8Vi9S+yHKBJaPcPwhcLOgY9vMAI/QdY=;
        b=QHCVDg/1FuM2gqf/pS0vEuk89E4qLVfkCGwPYRSYd/NOzSRHmFgt39KTx8stOh+zb8
         UOONJfULY2mlkVaiNtQdXBWlcaCiUQ/6ZjMi5pr0pX35xcm9A9owTx1aQrNg1RITiXwQ
         ub0qml+YGaHMNlERKhuIkMm8oWgwnFhSpOhNXOnpjk1bFyxx0wTv+qGN0UC4Qem5CdBb
         5Uo6r2a456ob8zk6x2lO/KJOeNu9W1af9J+Qi9QexdoPYtGTClCau/57nr2duP2EsI1L
         wf6/d9BGKQ44KOs1QnDinpYjtqKgCd++BIxCQI6bTc7lh+vCBCOAlXW9qhe10MyTJT0p
         y0TQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjcSJunqCh3YXBwIQoPb7rqkNszfnxVMiOS/W0XMUwvigAXy0Ppy6ifLmtaMCBZDTwfJqF6BkFcd5yy7MByIAR9tSV2brkNrs2uSnIaJI=
X-Gm-Message-State: AOJu0YyolyDAVd08dpwZ5fd2ozMz4EIL2PhmzpdZtg8WEzLYwqu013w8
	9tIOfIgCiTXSDOeCzyCixWmkUlOaZIOZywvEhfqYuYEwsc5fo3At25JuxyJ/9TQ1MfmnwMobURJ
	rfMWbVQ==
X-Google-Smtp-Source: AGHT+IGUHiepK18z9OCUAgJ4YmGhfth97IzehT5xdsjY6UXqhxmR3LvUz0vLxxRV0XZh89neU3l0Kw==
X-Received: by 2002:a17:907:7212:b0:a59:bdb7:73ec with SMTP id dr18-20020a170907721200b00a59bdb773ecmr2937421ejc.72.1714927583697;
        Sun, 05 May 2024 09:46:23 -0700 (PDT)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com. [209.85.218.44])
        by smtp.gmail.com with ESMTPSA id d12-20020a17090648cc00b00a59a874136fsm2008846ejt.214.2024.05.05.09.46.22
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 May 2024 09:46:22 -0700 (PDT)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a59b81d087aso171532366b.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 05 May 2024 09:46:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX4o5H4JtxDYt+gr71AjIpfa4S0SicESpA2KvwMMazSVY260pRMEPKbObnqTtr1fa2hE30MgcdO7BMVzRVrFe5X2Pdk72e5al6Z6YAxj7I=
X-Received: by 2002:a17:907:3f9a:b0:a59:c5c2:a31c with SMTP id
 hr26-20020a1709073f9a00b00a59c5c2a31cmr2077374ejc.33.1714927582181; Sun, 05
 May 2024 09:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com> <20240505-gelehnt-anfahren-8250b487da2c@brauner>
In-Reply-To: <20240505-gelehnt-anfahren-8250b487da2c@brauner>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 5 May 2024 09:46:05 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgMzzfPwKc=8yBdXwSkxoZMZroTCiLZTYESYD3BC_7rhQ@mail.gmail.com>
Message-ID: <CAHk-=wgMzzfPwKc=8yBdXwSkxoZMZroTCiLZTYESYD3BC_7rhQ@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EC0BC40A7C
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.53:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	DKIM_TRACE(0.00)[linux-foundation.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 6MSWAKMVQ5YGKMEHWPCUZ42DWBBWWITV
X-Message-ID-Hash: 6MSWAKMVQ5YGKMEHWPCUZ42DWBBWWITV
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MSWAKMVQ5YGKMEHWPCUZ42DWBBWWITV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 5 May 2024 at 03:50, Christian Brauner <brauner@kernel.org> wrote:
>
> And I agree with you that for some instances it's valid to take another
> reference to a file from f_op->poll() but then they need to use
> get_file_active() imho and simply handle the case where f_count is zero.

I think this is

 (a) practically impossible to find (since most f_count updates are in
various random helpers)

 (b) not tenable in the first place, since *EVERYBODY* does a f_count
update as part of the bog-standard pollwait

So (b) means that the notion of "warn if somebody increments f_count
from zero" is broken to begin with - but it's doubly broken because it
wouldn't find anything *anyway*, since this never happens in any
normal situation.

And (a) means that any non-automatic finding of this is practically impossible.

> And we need to document that in Documentation/filesystems/file.rst or
> locking.rst.

WHY?

Why cannot you and Al just admit that the problem is in epoll. Always
has been, always will be.

The fact is, it's not dma-buf that is violating any rules. It's epoll.
It's calling out to random driver functions with a file pointer that
is no longer valid.

It really is that simple.

I don't see why you are arguing for "unknown number of drivers - we
know at least *one* - have to be fixed for a bug that is in epoll".

If it was *easy* to fix, and if it was *easy* to validate, then  sure.
But that just isn't the case.

In contrast, in epoll it's *trivial* to fix the one case where it does
a VFS call-out, and just say "you have to follow the rules".

So explain to me again why you want to mess up the driver interface
and everybody who has a '.poll()' function, and not just fix the ONE
clearly buggy piece of code.

Because dammit,. epoll is clearly buggy. It's not enough to say "the
file allocation isn't going away", and claim that that means that it's
not buggy - when the file IS NO LONGER VALID!

                      Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
