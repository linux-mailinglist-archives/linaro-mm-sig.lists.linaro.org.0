Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B018BBCEB
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 17:54:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E77E3F06F
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 15:54:18 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id 93F9F3F06F
	for <linaro-mm-sig@lists.linaro.org>; Sat,  4 May 2024 15:54:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=google header.b=ITYr8bXB;
	spf=pass (lists.linaro.org: domain of torvalds@linuxfoundation.org designates 209.85.218.48 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
	dmarc=none
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a59afce5a70so57119766b.3
        for <linaro-mm-sig@lists.linaro.org>; Sat, 04 May 2024 08:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1714838045; x=1715442845; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kZo6ArVOf5NVi3NAdVYQGqHRs84wzKq7YB5CfjfJdNw=;
        b=ITYr8bXBmbUcVzHfqfF3a9ppGl63Qp1uWGBje0ykfpk4FdMT9cDc2FkiF6nGmyOfdo
         aUMehrzQZg75JIvMrdCgJ4sPJVI4GBaZLe4sxbN8yAEk/tDQ2dNbyYQ81NBmW8mu6Uqo
         Lv0l0u+zaSjcvuzPLR4A4BKaCi8kU/H39GaDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714838045; x=1715442845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kZo6ArVOf5NVi3NAdVYQGqHRs84wzKq7YB5CfjfJdNw=;
        b=J1i008C7jr+klt2XSsmfA+PJG6w59y/y3ODjoZZnNG1sZvGLQ54YsR2SXiD5bCaN4n
         GzFTgkPmLUlHLdRNVmt9Ygvb4UbeRLamgm7HCfkkrOCFtGtzxSN0QYRPX7WwbqvsZiut
         znNeLK6pEQxwfoc0uIXhTfln+5u2U9gjrZbigbcx/fGSpC2VthbuyVRk2Ywnm2X/nwYx
         O+LYrvGFn5Tqd5a0vTbSo/ZqqyvefOzIjW4Ri3qgGoCfdYkKhaS6HGQv7zKi26yiQfwe
         HuEvwT7Q2RzHalFpU/5sC37JLI3+gIiZOSPG3MCiVBzdPBfnjcgACmRpElzEQrk4UKVW
         PrmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHA5ndI/F2WDOq0QrSkDvbSPFm5kQWqkdo8pMfhHyzs8GD8hLCr006Gf7GR3IOdzYf41CX4DlsmEm66HGEREA8yqc2Nwq9dub5RxpDyxQ=
X-Gm-Message-State: AOJu0YzK/ea0VX7TDvclawhCO9v3wTvh4sfHP5KX+QX9sGiY5fly4RxW
	G4TduRQxHcIYgXKbLfiHJG3XUd3r6F6GvnynOsPsow/5RK3zpWT0DEMdZCQX27s0BE8pF8ltV2Z
	Fm+0MnA==
X-Google-Smtp-Source: AGHT+IFy1QsPCXoZ7wV+4UmDCn1EQQx+o2FW7A6WiU9OpUu6LJnr9ZLu6WS3dig71DE7tTjyQ9QIDw==
X-Received: by 2002:a50:c31d:0:b0:56e:418:5559 with SMTP id a29-20020a50c31d000000b0056e04185559mr3767019edb.3.1714838045549;
        Sat, 04 May 2024 08:54:05 -0700 (PDT)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com. [209.85.218.42])
        by smtp.gmail.com with ESMTPSA id fd14-20020a056402388e00b00572d7eec694sm1688730edb.16.2024.05.04.08.54.04
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 May 2024 08:54:04 -0700 (PDT)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a59a0e4b773so128276066b.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 04 May 2024 08:54:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUpSajSWaCU3FcVMHmkAAaJm+/TEcIgMoEUaDpGyvpzlyPMaxkFcmi4gdBsYElbL6n13gyUnZKaL9eJ935c04Y9qi4kzWvGZV+OGPA9XsY=
X-Received: by 2002:a17:906:a842:b0:a58:5ee1:db43 with SMTP id
 dx2-20020a170906a84200b00a585ee1db43mr3389515ejb.23.1714838043724; Sat, 04
 May 2024 08:54:03 -0700 (PDT)
MIME-Version: 1.0
References: <202405031110.6F47982593@keescook> <20240503211129.679762-2-torvalds@linux-foundation.org>
 <20240503212428.GY2118490@ZenIV> <CAHk-=wjpsTEkHgo1uev3xGJ2bQXYShaRf3GPEqDWNgUuKx0JFw@mail.gmail.com>
 <20240504-wohngebiet-restwert-6c3c94fddbdd@brauner> <CAHk-=wj_Fu1FkMFrjivQ=MGkwkKXZBuh0f4BEhcZHD5WCvHesw@mail.gmail.com>
 <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
In-Reply-To: <CAHk-=wirxPSQgRV1u7t4qS1t4ED7w7OeehdUSC-LYZXspqa49w@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 4 May 2024 08:53:47 -0700
X-Gmail-Original-Message-ID: <CAHk-=whrSSNYVzTHNFDNGag_xcKuv=RaQUX8+n29kkic39DRuQ@mail.gmail.com>
Message-ID: <CAHk-=whrSSNYVzTHNFDNGag_xcKuv=RaQUX8+n29kkic39DRuQ@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 93F9F3F06F
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FORGED_SENDER(0.30)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[mail-ej1-f48.google.com:rdns,mail-ej1-f48.google.com:helo,linux-foundation.org:email,linux-foundation.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,chromium.org,kernel.dk,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,torvalds@linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.48:from];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: L4F4V4FEIAC6WKOGEBOSYS4ZHCUW76TX
X-Message-ID-Hash: L4F4V4FEIAC6WKOGEBOSYS4ZHCUW76TX
X-MailFrom: torvalds@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Al Viro <viro@zeniv.linux.org.uk>, keescook@chromium.org, axboe@kernel.dk, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L4F4V4FEIAC6WKOGEBOSYS4ZHCUW76TX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, 4 May 2024 at 08:40, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> And maybe it's even *only* dma-buf that does that fget() in its
> ->poll() function. Even *then* it's not a dma-buf.c bug.

They all do in the sense that they do

  poll_wait
    -> __pollwait
     -> get_file (*boom*)

but the boom is very small because the poll_wait() will be undone by
poll_freewait(), and normally poll/select has held the file count
elevated.

Except for epoll. Which leaves those pollwait entries around until
it's done - but again will be held up on the ep->mtx before it does
so.

So everybody does some f_count games, but possibly dma-buf is the only
one that ends up expecting to hold on to the f_count for longer
periods.

             Linus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
